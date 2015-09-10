window.onload = function (e) {
    var vsrc = {};
    vsrc.amazon = (typeof signedUrl != "undefined" && signedUrl.length > 0) ? signedUrl : "http://d2rcagjzza510j.cloudfront.net/IEEEtv_DL_RADERFINAL.m4v";
    //vsrc.amazonhls = "http://d2rcagjzza510j.cloudfront.net/hls/hls_rader.m3u8";
    vsrc.akamai = "https://ieeetv.ieee.org/ns/ieeetvdl/ConferenceHighlights/LSGCC-2013-Singapore/01-GCC_George_Radda.mp4";
    var file = vsrc.akamai;
    /*if(location.search.search(/src\=amazonhls/i) > -1){
     file = vsrc.amazonhls;
     }else */
    if (location.search.search(/src\=amazon/i) > -1) {
        file = vsrc.amazon;
    }
    console.log("used src: " + file);
    jwplayer('individual_video').setup({
        file: file,
        primary: 'flash',
        image: "images/main-thn.jpg",
        width: 670,
        height: 376,
        logo: {
            file: '/player/assets/images_ui/logo/ieee_2.gif'
            /*link: 'http://example.com'*/
        },
        advertising: {
            client: 'vast',
            tag: 'https://origin.ieeetvdev.ieee.org/html-jw-player/test-jw6/ad.doubleclick.test.xml'
        },
	cast : {
	    appid : 'CC1AD845'
	}  
    });

    initializeCastApi();

}

// Chromecast 

    window.apiInitialized = false;
    window.apiSession = null;
    window.apiMedia = null;
    window.showingHud = true;

    var sessionJoinedListener = function(session) { console.log('session_established', "Joined " + session.sessionId); }
    var sessionUpdateListener = function(session) {}
    var receiverListener = function(availability) { 
        console.log('receivers_available', ('available' === availability) ? "Yes" : "No");
        document.getElementById('sendChromecast').style.display = "block"; 
}
    var onInitSuccess = function() {console.log('api_status', "Initialized"); window.apiInitialized = true; }
    var onInitError = function(castError) { console.log('api_status', "Initialize Error: " + JSON.stringify(castError)); }

    window.mimeTypes = {
      'mov':'video/quicktime',
      'mp4':'video/mp4',
      'm3u8':'application/x-mpegURL'
    };

    function loadMediaOntoReceiver() {
      var url = 'https://ieeetv.ieee.org/ns/ieeetvdl/ConferenceHighlights/LSGCC-2013-Singapore/01-GCC_George_Radda.mp4';
      var ext = url.split('.').pop();
      var mime = 'unknown';
      if(url !== ext) {
          // has extension
          mime = window.mimeTypes[ext]
      }
      var mediaInfo = new chrome.cast.media.MediaInfo(url, mime);
      console.log("## MediaInfo('"+url+"', '"+mime+"')");
      var loadRequest = new chrome.cast.media.LoadRequest(mediaInfo);
     	loadRequest.autoplay = true;
      loadRequest.currentTime = jwplayer('individual_video').getPosition() || 0;
      console.log('Sending Load Request: ', loadRequest);


      // Loads media into a running receiver application.
      // This call will fail unless this session supports the namespace "urn:x-cast:chrome.cast.media".
      window.apiSession.loadMedia(loadRequest,
        function(media){ // Success
          // chrome.cast.media.Media object
          window.apiMedia = media;
          console.log("Got media object");

          //jwplayer('individual_video').setControls(false);
          
          jwplayer('individual_video').pause();
          window.apiSession.addUpdateListener(function(){
            if (window.apiSession.status === 'stopped') {
              console.log('\n\nLAST TIME WAS : ', window.apiMedia.currentTime);
              jwplayer('individual_video').seek(window.apiMedia.currentTime);

            }
          });

        },
        function(castError){
            console.error('loadMediaOntoReceiver error: ' + JSON.stringify(castError));
      });
  	}

    function sendPlayPause() {
      if(window.apiMedia.playerState === chrome.cast.media.PlayerState.PLAYING) {
        window.apiMedia.pause(new chrome.cast.media.PauseRequest(),
          function(){
            // successfully paused
            console.log("Successfully Paused");
          },
          function(castError){
            console.error(JSON.stringify(castError));
        });
      } else {
        window.apiMedia.play(new chrome.cast.media.PlayRequest(),
          function(){
            // successfully playing
            console.log("Successfully Playing");
          },
          function(castError){
            console.error(JSON.stringify(castError));
        });
      }
    }

    function sendStop() {
      if(window.apiMedia &&
        (window.apiMedia.playerState === chrome.cast.media.PlayerState.PAUSED) ||
        (window.apiMedia.playerState === chrome.cast.media.PlayerState.PLAYING)){
    			window.apiMedia.stop(new chrome.cast.media.StopRequest(),
            function(){
              console.log('successfully stopped');
            },
            function(castError){
              console.error(JSON.stringify(castError));
            });
      }
    }

    function launchAppOnReceiver() {
      if(window.apiInitialized) {
        chrome.cast.requestSession(
          // Success
          function(session){
            window.apiSession = session;
            session.addUpdateListener(sessionUpdateListener);
            console.log('session_established', "YES - " + session.sessionId);

            loadMediaOntoReceiver();
          },
          // Error
          function(castError){
            console.log('session_established', "ERROR: " + JSON.stringify(castError));

            sendStop();

            loadMediaOntoReceiver();

          });
      } else {
        console.log('session_established', "NOT INITIALIZED");
      }
    }

    function initializeCastApi() {
      if (!chrome.cast || !chrome.cast.isAvailable) {
          console.log('app_status', "Cast APIs not Available. Retrying...");
          setTimeout(initializeCastApi, 500);
          return;
      }
      console.log('app_status', "Initializing...");
      var sessionRequest = new chrome.cast.SessionRequest(chrome.cast.media.DEFAULT_MEDIA_RECEIVER_APP_ID);
      var apiConfig = new chrome.cast.ApiConfig(sessionRequest, sessionJoinedListener, receiverListener);
      chrome.cast.initialize(apiConfig, onInitSuccess, onInitError);
    };
