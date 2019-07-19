$(document).ready(function(){

  //for index 메뉴나타나기
    var document_h = $(document).height();
  //console.log(document_h);
  $("header .gnb_mobile").height(document_h);
  
  $("header .gnb_open").on("click", function(){
    $("header .gnb_kbg").fadeIn(300);
    $("header .gnb_mobile").animate({
      left : 0
    },300);
  });
  
  $("header .gnb_mobile>.gnb_close").on("click", function(){
    $("header .gnb_kbg").fadeOut(300);
    $("header .gnb_mobile").animate({
      left : -800
    },300); 
  });

  //Begin Change header when scrolling
    //스크롤 할때 header모양 변함
  var scrolling_pc;
  scroll_check();//함수실행
  
   //스크롤 될마다 실행
  $(window).scroll(function(){
    scroll_check();//함수실행
  });//scroll
  
   //함수선언
  function scroll_check(){
    scrolling_pc = $(window).scrollTop();
    //console.log(scrolling_pc);
    if(scrolling_pc > 0){
      $("header").addClass("on");
    }else{
      $("header").removeClass("on");
    }
  }
  //End

});
