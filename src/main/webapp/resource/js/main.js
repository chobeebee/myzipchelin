/* 메인 베너 */
var swiper = new Swiper(".main_banner", {
  slidesPerView: 1,
  spaceBetween: 10,
  speed: 850,
  loop: true,
  pagination: {
    el: ".swiper-pagination",
    clickable: true,
  },
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  autoplay: {
    delay: 3500,
    disableOnInteraction: false,
  }
});