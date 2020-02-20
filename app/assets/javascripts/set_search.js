  $(document).ready(function(){
  var rootURL = "https://www.amazon.com/s?k=";
  
  $("select[name='pct']").change(function(){
    if ( $(this).val() === "custom" ){
      $(".custom-time").removeClass("disable");
    } else {
      $(".custom-time").addClass("disable");
    }
  });
  
  $(".search").on("click", function(){
    var postType = $("input:radio[name='post-type']:checked").val();
    var searchType = $("input:radio[name='search-type']:checked").val();
    var couponType = $("input:radio[name='coupon-type']:checked").val();
    var shippingType = $("input:radio[name='shipping-type']:checked").val();
    var fastType = $("input:radio[name='fast-type']:checked").val();
    var keyWord = $(".keyword").val();
    var timeType = $(".pct select").val();
    var postMonth = $("select[name='month']").val();
    var postYear = $("select[name='year']").val();
    // var postYear = $(".year").val();
    
    var type = (postType === "") ? "" : "&i=" + postType;
    var search = (searchType === "") ? "" : "&rh=" + searchType;
    var coupon = (couponType === "") ? "" : "&srs=" + couponType;
    var shipping = (shippingType === "") ? "" : "&rh=" + shippingType;
    var fast = (fastType === "") ? "" : "&rh=" + fastType;
    var key  = (keyWord === "") ? "" : keyWord;
    var time = (timeType === "" || timeType === "custom") ? "": timeType + "/";
    var month = (postMonth === "") ? "" : postMonth+"-";
    var year = (postYear === "") ? "" : postYear;
    var postTime;
    
    if( timeType ==="custom" ){
      if( month !== "" && year !==""){
        postTime = "&rh=p_75%3A"+month+year+"&s=relevancerank";
      } else {
        postTime = "";
      }
    } else {
      
      postTime = time;
    }
    
    var query = rootURL + key + type + search + coupon + shipping + fast + postTime + "&tag=oigbt-20";

    window.open(query, '_blank');
    
  });
});