// Nav for gadget category & search page //
var $nav = $('.greedy-nav');
var $btn = $('.greedy-nav button');
var $vlinks = $('.greedy-nav .visible-links');
var $hlinks = $('.greedy-nav .hidden-links');

var breaks = [];

function updateNav() {
  
  var availableSpace = $btn.hasClass('hidden') ? $nav.width() : $nav.width() - $btn.width() - 30;

  // The visible list is overflowing the nav
  if($vlinks.width() > availableSpace) {

    // Record the width of the list
    breaks.push($vlinks.width());

    // Move item to the hidden list
    $vlinks.children().last().prependTo($hlinks);

    // Show the dropdown btn
    if($btn.hasClass('hidden')) {
      $btn.removeClass('hidden');
    }

  // The visible list is not overflowing
  } else {

    // There is space for another item in the nav
    if(availableSpace > breaks[breaks.length-1]) {

      // Move the item to the visible list
      $hlinks.children().first().appendTo($vlinks);
      breaks.pop();
    }

    // Hide the dropdown btn if hidden list is empty
    if(breaks.length < 1) {
      $btn.addClass('hidden');
      $hlinks.addClass('hidden');
    }
  }

  // Keep counter updated
  $btn.attr("count", breaks.length);

  // Recur if the visible list is still overflowing the nav
  if($vlinks.width() > availableSpace) {
    updateNav();
  }

}

// Window listeners

$(window).resize(function() {
    updateNav();
});

$btn.on('click', function() {
  $hlinks.toggleClass('hidden');
});

updateNav();
// End



// Copy Code for "/deals/promo_code" & "/promocodes"
'use strict';

  document.addEventListener('DOMContentLoaded', function() {
    copyText.init()
  });

  var copyText = {
    init: function() {
      if (document.querySelectorAll('[data-copy-text]').length) {
        var cp = document.querySelectorAll('[data-copy-text]');

        for (var i = 0, l = cp.length; i < l; i++) {
          copyText.addCopy(cp[i]);
        }
      }
    },
    addCopy: function(el) {
      if (typeof el !== 'undifined') {
        var parent = el.parentNode;
        if (!parent.querySelectorAll('span.copy-btn').length && window.getSelection) {
          var cpBtn = document.createElement('I');

          parent.setAttribute('style', 'position:relative');
          parent.appendChild(cpBtn);

          cpBtn.classList.add('material-icons');
          cpBtn.textContent = 'Click To Copy';
          cpBtn.setAttribute('title', 'Copy Code');

          copyText.addCopyEvent(cpBtn, el);
        }
      }
    },
    addCopyEvent: function(btn, el) {
      var coppied = false;
      var timer = 0;

      function copyText() {
        function showCheckmark() {
          btn.textContent = 'Coppied';
          btn.classList.add('active');
        }

        function hideCheckmark() {
          btn.classList.remove('active');
          btn.textContent = 'Click To Copy';
          timer = 0;
        }
        
        if (timer === 0) {
          if (window.getSelection) {
            var selection = window.getSelection();
            var range = document.createRange();
            range.selectNodeContents(el);
            selection.removeAllRanges();
            selection.addRange(range);

            try {
              document.execCommand('copy');
              coppied = true;
            } catch (err) {
              console.error(err);
            }

            selection.removeAllRanges();
          } else {
            console.error('your browser does not support copy');
          }

          if (coppied) {
            clearTimeout(timer);
            showCheckmark();
            timer = setTimeout(hideCheckmark, 2000);
          }
        }
      }

      if (typeof btn !== 'undifined' && typeof el !== 'undifined') {
        btn.addEventListener('click', copyText, false);
      }
    },
  }
  //End


// Start Amazon Slider //
"use strict";
  productScroll();
  function productScroll() {
    let slider = document.getElementById("slider");
    let next = document.getElementsByClassName("pro-next");
    let prev = document.getElementsByClassName("pro-prev");
    let slide = document.getElementById("slide");
    let item = document.getElementById("slide");

    for (let i = 0; i < next.length; i++) {
      let position = 0; //slider postion

      prev[i].addEventListener("click", function() {
        if (position > 0) {
          position -= 1;
          translateX(position); //translate items
        }
      });

      next[i].addEventListener("click", function() {
        if (position >= 0 && position < hiddenItems()) {
          position += 1;
          translateX(position); //translate items
        }
      });
    }

    function hiddenItems() {
      let items = getCount(item, false);
      let visibleItems = slider.offsetWidth / 210;
      return items - Math.ceil(visibleItems);
    }
  }

  function translateX(position) {
    slide.style.left = position * -210 + "px";
  }

  function getCount(parent, getChildrensChildren) {
    let relevantChildren = 0;
    let children = parent.childNodes.length;
    for (let i = 0; i < children; i++) {
      if (parent.childNodes[i].nodeType != 3) {
        if (getChildrensChildren)
          relevantChildren += getCount(parent.childNodes[i], true);
        relevantChildren++;
      }
    }
    return relevantChildren;
  }
// End // 



  $(function() {
  var Accordion = function(el, multiple) {
    this.el = el || {};
    // more then one submenu open?
    this.multiple = multiple || false;
    
    var dropdownlink = this.el.find('.dropdownlink');
    dropdownlink.on('click',
                    { el: this.el, multiple: this.multiple },
                    this.dropdown);
  };
  
  Accordion.prototype.dropdown = function(e) {
    var $el = e.data.el,
        $this = $(this),
        //this is the ul.submenuItems
        $next = $this.next();
    
    $next.slideToggle();
    $this.parent().toggleClass('open');
    
    if(!e.data.multiple) {
      //show only one menu at the same time
      $el.find('.submenuItems').not($next).slideUp().parent().removeClass('open');
    }
  }
  
  var accordion = new Accordion($('.accordion-menu'), false);
})



//Search on Amazon[quick search]//
function isMobile(){
var UserAgent = navigator.userAgent;

if (UserAgent.match(/iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null || UserAgent.match(/LG|SAMSUNG|Samsung/) != null)
  {
    return true;
  }else{
    return false;
  }
}

if(isMobile()){
    //For Mobile
    $(document).ready(function(){
    var rootURL = "https://www.amazon.com/s?i=aps";

    $("select[name='time']").change(function(){
      if ( $(this).val() === "custom" ){
        $(".custom-time").removeClass("disable");
      } else {
        $(".custom-time").addClass("disable");
      }
    });
    
    $(".search").on("click", function(){
      var postType = $("input:radio[name='post-type']:checked").val();
      var primeType = $("input:radio[name='prime-type']:checked").val();
      var couponType = $("input:radio[name='coupon-type']:checked").val();
      var shippingType = $("input:radio[name='shipping-type']:checked").val();
      var fastType = $("input:radio[name='fast-type']:checked").val();
      var overseaType = $("input:radio[name='oversea-type']:checked").val();
      var subscribeType = $("input:radio[name='subscribe-type']:checked").val();
      var keyWord = $(".keyword").val();
      var minPrice = $(".minprice").val();
      var maxPrice = $(".maxprice").val();
      var timeType = $(".time select").val();
      var postMonth = $("select[name='month']").val();
      var postMax = $("select[name='max']").val();
      var minPct = $("select[name='minpct']").val();
      var maxPct = $("select[name='maxpct']").val();
      // var postYear = $(".year").val();
      
      var key  = (keyWord === "") ? "" : "&field-keywords=" + keyWord;
      var mip  = (minPrice === "") ? "" : "&rh=p_74%3A" + minPrice+"00-";
      var mxp  = (maxPrice === "") ? "" : maxPrice+"00";
      var type = (postType === "") ? "" : "&i=" + postType;
      var prime = (primeType === "") ? "" : "&rh=" + primeType;
      var coupon = (couponType === "") ? "" : "&srs=" + couponType;
      var shipping = (shippingType === "") ? "" : "&rh=" + shippingType;
      var fast = (fastType === "") ? "" : "&rh=" + fastType;
      var oversea = (overseaType === "") ? "" : "&rh=" + overseaType;
      var subscribe = (subscribeType === "") ? "" : "&rh=" + subscribeType;
      var time = (timeType === "" || timeType === "custom") ? "": timeType + "/";
      var month = (postMonth === "") ? "" : postMonth+"-";
      var max = (postMax === "") ? "" : postMax;
      var mipct = (minPct === "") ? "" : "&rh=p_75%3A"+ minPct+ "-";
      var mxpct = (maxPct === "") ? "" : maxPct;
      // var year = (postYear === "") ? "" : postYear+"/";
      var postTime;
      
      if( timeType ==="custom" ){
        if( month !== "" && max !==""){
          postTime = "&rh=p_75%3A"+month+max;
        } else {
          postTime = "";
        }
      } else {
        
        postTime = time;
      }
      
      var query = rootURL + type + mip + mxp + mipct + mxpct + prime + coupon + shipping + fast + oversea + subscribe + postTime + key + "&tag=oigbt-20";

      window.open(query, '_blank');
      
    });
  });


}else{

    //For PC
    $(document).ready(function(){
    var rootURL = "https://www.amazon.com/s?k=";

    $("select[name='time']").change(function(){
      if ( $(this).val() === "custom" ){
        $(".custom-time").removeClass("disable");
      } else {
        $(".custom-time").addClass("disable");
      }
    });
    
    $(".search").on("click", function(){
      var postType = $("input:radio[name='post-type']:checked").val();
      var primeType = $("input:radio[name='prime-type']:checked").val();
      var couponType = $("input:radio[name='coupon-type']:checked").val();
      var shippingType = $("input:radio[name='shipping-type']:checked").val();
      var fastType = $("input:radio[name='fast-type']:checked").val();
      var overseaType = $("input:radio[name='oversea-type']:checked").val();
      var subscribeType = $("input:radio[name='subscribe-type']:checked").val();
      var keyWord = $(".keyword").val();
      var minPrice = $(".minprice").val();
      var maxPrice = $(".maxprice").val();
      var timeType = $(".time select").val();
      var postMonth = $("select[name='month']").val();
      var postMax = $("select[name='max']").val();
      var minPct = $("select[name='minpct']").val();
      var maxPct = $("select[name='maxpct']").val();
      // var postYear = $(".year").val();
      
      var key  = (keyWord === "") ? "" : keyWord;
      var mip  = (minPrice === "") ? "" : "&rh=p_74%3A" + minPrice+"00-";
      var mxp  = (maxPrice === "") ? "" : maxPrice+"00";
      var type = (postType === "") ? "" : "&i=" + postType;
      var prime = (primeType === "") ? "" : "&rh=p_85%3A1&dc&qid=" + primeType + "&ref=sr_nr_p_85_1";
      var coupon = (couponType === "") ? "" : "&srs=" + couponType;
      var shipping = (shippingType === "") ? "" : "&rh=" + shippingType;
      var fast = (fastType === "") ? "" : "&rh=" + fastType;
      var oversea = (overseaType === "") ? "" : "&rh=" + overseaType;
      var subscribe = (subscribeType === "") ? "" : "&rh=" + subscribeType;
      var time = (timeType === "" || timeType === "custom") ? "": timeType + "/";
      var month = (postMonth === "") ? "" : postMonth+"-";
      var max = (postMax === "") ? "" : postMax;
      var mipct = (minPct === "") ? "" : "&rh=p_75%3A"+ minPct+ "-";
      var mxpct = (maxPct === "") ? "" : maxPct;
      // var year = (postYear === "") ? "" : postYear+"/";
      var postTime;
      
      if( timeType ==="custom" ){
        if( month !== "" && max !==""){
          postTime = "&rh=p_75%3A"+month+max;
        } else {
          postTime = "";
        }
      } else {
        
        postTime = time;
      }
      
      var query = rootURL+ key + mip + mxp + mipct + mxpct + type + prime + coupon + shipping + fast + oversea + subscribe + postTime + "&tag=oigbt-20";

      window.open(query, '_blank');
      
    });
  });

}
//End//

//See Categories on Amazon[quick search]//
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.display === "block") {
      panel.style.display = "none";
    } else {
      panel.style.display = "block";
    }
  });
}
//End//


//New Header
$(document).ready(function() {
  var _responsiveNav = $(".responsive-nav"),
    _mainMenu = $("#primary-menu"),
    _responsiveMenu;

  if (_mainMenu.length) {
    $(".site-overlay").prepend(
      '<div id="responsive-menu" class="created-by-js">' +
        '<ul class="overlay-menu main-overlay" data-id="menu-item-0">' +
        _mainMenu.html() +
        "</ul></div>"
    );

    _responsiveMenu = $("#responsive-menu");

    _responsiveMenu.find("ul").each(function() {
      if ($(this).children("li").length > 7) {
        $(this).attr("data-size", 15);
      }
    });

    _responsiveMenu.find(".sub-menu").each(function() {
      var _parent = $(this).parent(),
        id = _parent.attr("id"),
        text = $(this)
          .siblings("a")
          .text();

      $(this).prepend(
        '<li class="mobile-parent-nav-menu-item">' +
          '<button class="menu-item-link-return" tabindex="-1">' +
          text +
          "</button></li>"
      );

      $(this)
        .appendTo(_responsiveMenu)
        .addClass("overlay-menu")
        .attr("data-id", id);
    });

    var _responsiveMenuList = _responsiveMenu
        .find(".overlay-menu")
        .children("li"),
      _responsiveMenuOpener = $(".responsive-nav"),
      responsiveMenuEnabled = true;

    _responsiveMenu.find("a").each(function() {
      var _link = $(this),
        _listItem = _link.parent();

      _link.addClass("immediate-propagation").on("click", function(e) {
        if ($(this).hasClass("back-to-menu")) {
          e.preventDefault();
        } else {
          _listItem = $(this).parent();

          if (_listItem.hasClass("menu-item-has-children")) {
            e.preventDefault();
            _listItem
              .parent()
              .removeClass("show")
              .addClass("hidden");
            setTimeout(function() {
              $('.overlay-menu[data-id="' + _listItem.attr("id") + '"]').addClass(
                "show"
              );
            }, 50);
          }
        }
      });
    });

    $(".menu-item-link-return").on("click", function(e) {
      e.preventDefault();

      var _parent = $(this).closest(".overlay-menu"),
        id = _parent.data("id");

      _responsiveMenu
        .find("#" + id)
        .parent()
        .removeClass("hidden")
        .addClass("show");

      $(this)
        .closest(".overlay-menu")
        .removeClass("show");
    });
  }

  if (_responsiveNav.length) {
    _responsiveNav.on("click", function(e) {
      _responsiveMenu = $("#responsive-menu");

      if (!$("body").hasClass("overlay-active")) {
        $("body").addClass("overlay-active");
        window.killBodyScrollTheProperWay(true);
      } else {
        $("body").removeClass("overlay-active");
        window.killBodyScrollTheProperWay(false);
        _responsiveMenu.find("ul").removeClass("hidden show");
      }

      e.preventDefault();
    });
  }

  //
  // Testing stuff
  //

  window.killBodyScrollTheProperWay = function(kill) {
    if (kill) {
      window.oldBodyPos = -$(window).scrollTop();
      $("body").addClass("kill-overflow");
      $("body").css("top", window.oldBodyPos);
      window.bodyHasScrollKilledTheProperWay = true;
    } else {
      $("body").removeClass("kill-overflow");
      if (
        document.location.hash != "" &&
        $(document.location.hash).length > 0 &&
        $(".responsive-nav").css("display") == "block"
      ) {
        window.oldBodyPos = -$(document.location.hash).offset().top;
      }
      $("body, html")
        .stop()
        .animate({ scrollTop: -window.oldBodyPos }, 0);
      window.bodyHasScrollKilledTheProperWay = false;
    }
  };
});

