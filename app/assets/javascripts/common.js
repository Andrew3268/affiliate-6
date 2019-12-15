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


//Start Google Translate WORK IN PROGRESS BELOW        
$('document').ready(function () {
  // RESTYLE THE DROPDOWN MENU
  $('#google_translate_element').on("click", function () {
    // Change font family and color
    $("iframe").contents().find(".goog-te-menu2-item div, .goog-te-menu2-item:link div, .goog-te-menu2-item:visited div, .goog-te-menu2-item:active div, .goog-te-menu2 *")
        .css({
            'color': '#544F4B',
            'font-family': 'Roboto',
            'width':'70%'
        });
    // Change menu's padding
    $("iframe").contents().find('.goog-te-menu2-item-selected').css ('display', 'none');
  
    // Change menu's padding
    $("iframe").contents().find('.goog-te-menu2').css ('padding', '0px');
  
    // Change the padding of the languages
    $("iframe").contents().find('.goog-te-menu2-item div').css('padding', '20px');
  
    // Change the width of the languages
    $("iframe").contents().find('.goog-te-menu2-item').css('width', '70%');
    $("iframe").contents().find('td').css('width', '70%');
  
    // Change hover effects
    $("iframe").contents().find(".goog-te-menu2-item div").hover(function () {
        $(this).css('background-color', '#4385F5').find('span.text').css('color', 'white');
    }, function () {
        $(this).css('background-color', 'white').find('span.text').css('color', '#544F4B');
    });

    // Change Google's default blue border
    $("iframe").contents().find('.goog-te-menu2').css('border', 'none');

    // Change the iframe's box shadow
    $(".goog-te-menu-frame").css('box-shadow', '0 16px 24px 2px rgba(0, 0, 0, 0.14), 0 6px 30px 5px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.3)');
    
    // Change the iframe's size and position?
    $(".goog-te-menu-frame").css({
        'height': '100%',
        'width': '70%',
        'top': '0px'
    });
    // Change iframes's size
    $("iframe").contents().find('.goog-te-menu2').css({
        'height': '100%',
        'width': '70%'
    });
  });
});


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

