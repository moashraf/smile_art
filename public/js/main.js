

$(function(){

    $('.navbars nav li a').click(function(){
        $(this).removeClass('active');
        $(this).addClass('active')
        // $(this).addClass('active').parent().siblings().find('a').removeClass('active')
    });

    //smooth scrol
    $('.navbars nav li a').click(function(e){
        e.preventDefault();
        $('thml, body').animate({
            scrollTop:$('#' + $(this).data('scroll')).offset().top
        },1000)
    });

   

        
     
        
            //team owl carousel
            $("#team").owlCarousel({
                rtl:true,
                margin:5,
                items:2,
                loop:true,
                autoplay:true,
                smartSpeed:1000,
                dots:true,
                nav:false,
                responsive:{
                    0:{
                        items:1,
                    },
                    600:{
                        items:1,  
                    },
                    1000:{
                        items:2,
                    }
                }
            });


            //testimonials
            $("#testimonials").owlCarousel({
                rtl:true,
                margin:5,
                items:3,
                loop:true,
                autoplay:true,
                smartSpeed:1000,
                dots:true,
                nav:false,
                responsive:{
                    0:{
                        items:1,
                    },
                    600:{
                        items:1, 
                    },
                    
                    1000:{
                        items:1,
                    }
                }
            });



});

