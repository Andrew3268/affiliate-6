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
          cpBtn.setAttribute('title', 'Copy Text');

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

  

