//Begin show side menu on gadgets page
var document_gadgets = $(document).height();
//console.log(document_gadgets);
$(".gadgets_wrapper main section#filter").height(document_gadgets);

$(".gadgets_wrapper main .gnb_open").on("click", function(){
  $(".gadgets_wrapper main .gnb_kbg").fadeIn(300);
  $(".gadgets_wrapper main section#filter").animate({
    right : 0
  },300);
});

$(".gadgets_wrapper main .gnb_close").on("click", function(){
  $(".gadgets_wrapper main .gnb_kbg").fadeOut(300);
  $(".gadgets_wrapper main section#filter").animate({
    right : -800
  },300);
});

 $(".gadgets_wrapper main .gnb_kbg").on("click", function(){
  $(".gadgets_wrapper main .gnb_kbg").fadeOut(300);
  $(".gadgets_wrapper main section#filter").animate({
    right : -800
  },300);
});

$(".gadgets_wrapper main .gnb_open_b").on("click", function(){
  $(".gadgets_wrapper main .gnb_kbg").fadeIn(300);
  $(".gadgets_wrapper main section#filter").animate({
    right : 0
  },300);
});

$(".gadgets_wrapper main .gnb_kbg_b").on("click", function(){
  $(".gadgets_wrapper main .gnb_kbg").fadeOut(300);
  $(".gadgets_wrapper main section#filter").animate({
    right : -800
  },300);
});   
//End


