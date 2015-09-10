// JavaScript Document
	$(document).ready(function(){
		$("#topnav-menu > li > a").click(function(){
            $this = $(this);
            if ($this.hasClass('active')) {
                $this.removeClass('active');
                $(".dropdown_5columns .dropdown").hide();
                return;
            }
			$('#topnav-menu > li > a').removeClass('active');
            $this.addClass('active');
			var curMenuSelector = $(this).attr('data-tab');
			if (!curMenuSelector) {
				$(".dropdown_5columns .dropdown").hide();
				return;
			}
			var curMenu = $(curMenuSelector);
			$(".dropdown_5columns .dropdown").not(curMenu).hide();
			$(curMenu).show();
		});

        $(".left-side-menu li a").click(function(){
            $this = $(this);
            $('.left-side-menu li a').removeClass('active');
            $this.addClass('active');
            var curMenuSelector = $this.attr('data-tab');
	        var $curTab = $(curMenuSelector);
            if (!curMenuSelector) {
                $(".dropdown_5columns .dropdown").hide();
	            $('#topnav-menu > li > a').removeClass('active');
                return true;
            }
	        $(".right-side-content .tab").not($curTab).hide();
	        $($curTab).slideDown('slow');
	        return false;
        });


		//$('.left-side-menu ul li a').click(function(e){
		//	e.preventDefault();
		//	var curTabSelector = $(this).attr('data-tab');
		//	if (!curTabSelector)
		//		return;
		//	var curTab = $(curTabSelector);
		//	$(".right-side-content .tab").not(curTab).hide();
		//	$(curTab).slideDown('slow');
		//});

//		$(".container-menu").mouseleave(function(){
//			$('#topnav-menu li a').removeClass('active');
//			$(".dropdown_5columns .dropdown").hide();
//		});
		$("body").click(function(e){
            var container = $('.container-menu');
            if (!container.is(e.target) // if the target of the click isn't the container...
                && container.has(e.target).length === 0) // ... nor a descendant of the container
            {
                $('#topnav-menu li a').removeClass('active');
                $(".dropdown_5columns .dropdown").hide();
            }
		});
//		$(".dropdown_5columns .dropdown").mouseover(function(){
//			$(this).show();
//		});

	
		$('.main-video-menu > ul > li > a').click(function(e){
			$('.main-video-menu > ul > li > a').removeClass('active');
			$(this).addClass('active');
			e.preventDefault();
			var curTabSelector = $(this).attr('data-tab');
			if (!curTabSelector)
				return;
			var curTab = $(curTabSelector);
			$(".video-menu-block").not(curTab).hide().removeClass('active');
			$(curTab).slideDown('fast').addClass('active');
		});

		$('.dropdown .video-menu-block.share li a').click(function(e){
			$('.dropdown .video-menu-block.share li a').removeClass('active');
			$(this).addClass('active');
			e.preventDefault();
			var curTabSelector = $(this).attr('data-tab');
			if (!curTabSelector)
				return;
			var curTab = $(curTabSelector);
			$(".share-block").not(curTab).hide().removeClass('active');
			$(curTab).slideDown('fast').addClass('active');
		})

/* Tabs: tab-watched-now, tab-most-popular, tab-new-programs  */

        $('ul.tab-menu > li > a').click(function(e){
            $('ul.tab-menu > li > a').removeClass('active');
            $(this).addClass('active');
            e.preventDefault();
            var curTabSelector = $(this).attr('data-tab');
            if (!curTabSelector)
                return;
            var curTab = $(curTabSelector);
            $(".series-block").not(curTab).hide().removeClass('active');
            $(curTab).slideDown('fast').addClass('active');
        });

	});