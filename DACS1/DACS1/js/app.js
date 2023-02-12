/*slide auto*/
var slideindex = 0;
showslide();

function showslide() {
  var i;
  //images
  var slides = document.getElementsByClassName("myslides");
  //dot
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  slideindex++;
  if (slideindex > slides.length) {
    slideindex = 1;
  }
  //dot
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideindex - 1].style.display = "block";
  //dot
  dots[slideindex - 1].className += " active";
  setTimeout(showslide, 3500);
}

/*scroll header*/
function scrollheader() {
  window.addEventListener("scroll", callbackFunc);
  function callbackFunc() {
    var header = document.getElementById("myHeader");
    var y = window.pageYOffset;
    if (y > 100) {
      header.style.backgroundColor = "var(--background-footer-header)";
      header.style.borderBottom = "none";
    } else {
      header.style.backgroundColor = "";
      header.style.borderBottom = "3px solid var(--border)";
    }
  }
}
scrollheader();

/*Click slides*/
const gap = 16;

const carousel = document.getElementById("carousel"),
    content = document.getElementById("content"),
    next = document.getElementById("next"),
    prev = document.getElementById("prev");

next.addEventListener("click", (e) => {
    carousel.scrollBy(width + gap, 0);
    if (carousel.scrollWidth !== 0) {
        prev.style.display = "flex";
    }
    if (content.scrollWidth - width - gap <= carousel.scrollLeft + width) {
        next.style.display = "none";
    }
});
prev.addEventListener("click", (e) => {
    carousel.scrollBy(-(width + gap), 0);
    if (carousel.scrollLeft - width - gap <= 0) {
        prev.style.display = "none";
    }
    if (!content.scrollWidth - width - gap <= carousel.scrollLeft + width) {
        next.style.display = "flex";
    }
});

let width = carousel.offsetWidth;
window.addEventListener("resize", (e) => (width = carousel.offsetWidth));



