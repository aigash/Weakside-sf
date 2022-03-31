// MENU WEAKSIDE
let btnMenu = document.getElementById('btnMenu');
let menuWeakside = document.getElementById('menuWeakside');
let plogoWeakside = document.getElementById('plogoWeakside');
let hideMenu = document.getElementById('hideMenu');
let blurMenu = document.getElementById('blurMenu');
let delay;
let delay2;

if (menuWeakside.style.display = "none") {
    btnMenu.addEventListener('click', function (e) {
        menuWeakside.style.display = "block"
        delay = setTimeout(changeColorWhite, 500);
        menuWeakside.style.animation = "0.5s ease move_menu";
        delay2 = setTimeout(showBlurMenu, 500);
    });
}
if (menuWeakside.style.display = "true") {
    hideMenu.addEventListener('click', function (e) {
        menuWeakside.style.animation = "0.5s ease hide_menu";
        plogoWeakside.style.color = "#9DACFF";
        blurMenu.style.display = "none";
        delay = setTimeout(hideMenuNav, 500);
    });
}

function showBlurMenu() {
    blurMenu.style.display = "block";
}
function hideMenuNav() {
    menuWeakside.style.display = "none";
}
function changeColorWhite() {
    plogoWeakside.style.color = "white";
}

// RECHERCHER UN CHAMPION
let search_fieldElt = document.getElementById('search-field');
  let advsearchElt = [...document.getElementsByClassName('advsearch')];

  search_fieldElt.addEventListener('input', function(e) {
    advsearchElt.forEach(element => {

      if (element.dataset.nom.toLowerCase().includes(search_fieldElt.value.toLowerCase())) {
        element.style.display = "block";
      } else {
        element.style.display = "none";
      }
    })
  })

  $(window).scroll(function() {
    if ($(window).scrollTop() >= 100) {
      $('body').addClass('scroll');
    } else {
      $('body').removeClass('scroll');
    }
  });