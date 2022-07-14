<template>
  <swiper class="swiper" :options="swiperOption">
    <swiper-slide class="slide-1">
      <img
        src="../../public/01fafc5ccba072a8012141685ee396.jpg@1280w_1l_2o_100sh.jpg"
        alt=""
      />
    </swiper-slide>
    <swiper-slide class="slide-2">
      <img src="../../public/1606236251.jpg" alt="" />
    </swiper-slide>
    <swiper-slide class="slide-3">
      <img src="../../public/28b83ee610103242b8d904de7e33b520.jpg" alt="" />
    </swiper-slide>
    <swiper-slide class="slide-4">
      <img
        src="../../public/ChMlWV5N4RyIFciOAA1TX1AmfMwAANZEgDfHjAADVN3288.jpg"
        alt=""
      />
    </swiper-slide>
    <div
      class="swiper-pagination swiper-pagination-white"
      slot="pagination"
    ></div>
    <div
      class="swiper-pagination swiper-pagination-white"
      slot="pagination"
    ></div>
    <div
      class="swiper-pagination swiper-pagination-white"
      slot="pagination"
    ></div>
    <div
      class="swiper-pagination swiper-pagination-white"
      slot="pagination"
    ></div>
  </swiper>
</template>

<script>
export default {
  data() {
    return {
      swiperOption: {
        spaceBetween: 30,
        effect: "fade",
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
      },
    };
  },
};
</script>

<style></style>
