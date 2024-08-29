$(function(){
    //공지사항 리스트 토글
    $('.noticeItem').click(function(){
        let chk = $(this).hasClass('active');
		if(chk){
			$(this).removeClass('active');
		}else{
			$('.noticeItem').removeClass('active');
			$(this).addClass('active');
		}
        /*let bro = $(this).siblings();
        let cont = $(this).children('.contentBox');
        let tog = true;
        
        bro.children('.contentBox').slideUp(300,function(){
            $(this).prev().children('.icon').html('<span class="icon material-symbols-outlined">keyboard_arrow_down</span>');
            tog = false;
        });
        cont.slideDown(300, function(){
            $(this).prev().children('.icon').html('<span class="icon material-symbols-outlined">keyboard_arrow_up</span>');
            tog = true;
        });

        if(tog == true){
            $(this).children('.contentBox').slideUp(300, function(){
                $(this).prev().children('.icon').html('<span class="icon material-symbols-outlined">keyboard_arrow_down</span>');
            });
        }else{
            $(this).children('.contentBox').slideDown(300, function(){
                $(this).prev().children('.icon').html('<span class="icon material-symbols-outlined">keyboard_arrow_up</span>');
            });
        }*/
    });
});