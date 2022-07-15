<template>
  <div>
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
    <div class="floor">
      <div class="floor_one">
        <h2>sub</h2>
        <div class="sub">
          <div class="detail">njavbesg</div>
          <div class="img">
            <img
              src="../../public/01fafc5ccba072a8012141685ee396.jpg@1280w_1l_2o_100sh.jpg"
              alt=""
            />
            <img src="../../public/1606236251.jpg" alt="" />
          </div>
        </div>
      </div>
      <div class="floor_two">
        <p></p>
      </div>
      <div class="floor_three">
        <img src="" alt="" />
        <div class="main">
          <h2>bisjvb</h2>
          <p>svbnwoivnw</p>
        </div>
      </div>
      <div class="floor_four">
        <div class="img1">
          <img src="" alt="" />
          <h2>ccc</h2>
          <p>nsvoiwenv</p>
        </div>
        <div class="img2">
          <img src="" alt="" />
          <h2>ccc</h2>
          <p>nsvoiwenv</p>
        </div>
        <div class="img3">
          <img src="" alt="" />
          <h2>ccc</h2>
          <p>nsvoiwenv</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import IndexFloor from "@/components/IndexFloor.vue";
export default {
  components: { IndexFloor },
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

<style>
* {
  margin: 0;
  padding: 0;
}
/* .floor {
  position: flex;
} */
.floor_one,
.floor_two,
.three,
.floor_four {
  position: relative;
}
.floor_one {
  background-color: rgb(11, 12, 17);
  position: relative;
  color: aliceblue;
}
h2 {
  text-align: center;
}
.floor_one .sub {
  height: 550px;
  background-color: rgb(11, 12, 17);
}
.floor_one > .sub > div {
  position: absolute;
}
.detail {
  left: 0;
  margin-left: 20px;
  margin-top: 10px;
}
.img {
  right: 0;
  margin-right: 20px;
  padding-right: 40px;
  margin-top: 10px;
  display: block;
}
.img > img {
  height: 241px;
  width: 540px;
  margin-bottom: 5px;
  display: block;
}
</style>
