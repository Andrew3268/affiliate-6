// Opening and Closing the Modal 
    function openModal() {
      document.getElementById('myModal').classList.add('show'); 
    }
    function closeModal() {
      document.getElementById('myModal').classList.remove('show'); 
    }
    // Clicking on the <div class="column"> or on <img> nested inside: 
    var gallery = document.getElementById('gallery'); 
    gallery.addEventListener('click', function(e){
      var target = e.target; 
      // if the target has the classes flex and column, or if it's an <img> 
      if (target.querySelectorAll('.flex, .column') || target.nodeName === 'IMG') {
        console.log(target); 
        openModal();  
      }
    }); 
    // Clicking on the X button inside pop up modal: 
    var closeButton = document.querySelector('.close'); 
    closeButton.addEventListener('click', function(e) {
      closeModal(); 
    }); 
    // Next and Previous Functions 
    // changeSlide(-1): to go back one slide 
    // changeSlide(1): to go forward one slide 
    function changeSlide(n) {
      showSlides(slideIndex += n); 
    }
    // Get current slide: set slideIndex and n equal to each other: 
    // currentSlide(1)
    // n = 1 
    // slideIndex = 1 
    function currentSlide(n) {
      showSlides(slideIndex = n);
    }
    // match starting value of slideIndex with the currentSlide(1); counting from 1
    // so we're 1 over the actual nodeList count of 6  
    var slideIndex = 1; 
    function showSlides(n) { 
      var slides = document.getElementsByClassName("slides");
      if (n > slides.length) { // when we hit the end, we're at n = 7 
        slideIndex = 1; // so set slideIndex back to 1 for later, when slideIndex = n in showSlides
      }
      // for changeSlide(-1): 
      // when when we're at slides[0], there's no such thing as -1 in a nodeList or array 
      // so we have to reset slideIndex, and therefore n, back to the length of the slides, which is the last item in the array...
      if (n < 1) {  
        console.log("less than 1: " + n); 
        slideIndex = slides.length;
      }
      // loop through each item in slides and hide all the slides at first: 
      for (var i = 0; i < slides.length; i++) {
         slides[i].classList.add('hide'); // hide current slide 
         slides[i].classList.remove('pop'); // make sure to remove pop by default 
      }
      // then when we click on the thumbnail image, we activate this: 
      // we remove hide to show the image in slides connected to the thumbnail 
      slides[slideIndex - 1].classList.remove('hide') // since we're starting at 1, we have to subtract 1 
      slides[slideIndex - 1].classList.add('pop'); // then add pop, which shows the image 
    } 



    /* Demo purposes only */
    var snippet = [].slice.call(document.querySelectorAll('.hover'));
    if (snippet.length) {
      snippet.forEach(function (snippet) {
        snippet.addEventListener('mouseout', function (event) {
          if (event.target.parentNode.tagName === 'figure') {
            event.target.parentNode.classList.remove('hover')
          } else {
            event.target.parentNode.classList.remove('hover')
          }
        });
      });
    }

 