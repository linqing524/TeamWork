<template>
  <div>
    <swiper
      class="swiper"
      :options="swiperOption"
      ref="myswiper"
      @mouseover.native="mouseover"
      @mouseout.native="mouseout"
    >
      <swiper-slide class="slide-1" v-for="(item, i) in data.Swiper" :key="i">
        <img :src="`/${item}`" alt="" />
      </swiper-slide>
      <div
        class="swiper-pagination swiper-pagination-white"
        slot="pagination"
        v-for="(item, i) in 4"
        :key="i"
      ></div>
      <!-- <div
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
      ></div> -->
    </swiper>
    <div class="floor" v-if="data">
      <div class="floor_one">
        <div class="detail" style="margin-top: 50px">
          <h2 style="font-size: 3em">{{ data.Onefloor.brand }}</h2>
          <p
            v-html="data.Onefloor.details"
            style="
              text-align: center;
              line-height: 70px;
              margin-top: 50px;
              font-size: 2em;
            "
          ></p>
        </div>
        <div class="img">
          <img
            v-for="(item, i) in data.Onefloor.pic"
            :key="i"
            :src="`/${item}`"
            alt=""
          />
          <!-- <img src="../../public/VCG211222513964.jpg" alt="" /> -->
        </div>
      </div>
      <div class="floor_two">
        <p>xxxxxx</p>
      </div>
      <div class="floor_three">
        <img :src="`/${data.Twofloor.pic[0]}`" alt="" />
        <div class="main">
          <h2>{{ data.Twofloor.brand }}</h2>
          <p>{{ data.Twofloor.details }}</p>
        </div>
      </div>
      <div class="floor_four">
        <h2>{{ p[0].brand }}</h2>
        <div class="four">
          <div class="img1">
            <img
              :src="`/${p[0].pic}`"
              alt=""
              @mouseover="imgclass = 1"
              :class="{ 'animate__animated animate__pulse': imgclass == 1 }"
            />
            <h2>{{ p[0].title }}</h2>
            <p>{{ p[0].details }}</p>
          </div>
          <div class="img2">
            <img
              :src="`/${p[1].pic}`"
              alt=""
              @mouseover="imgclass = 2"
              :class="{ 'animate__animated animate__pulse': imgclass == 2 }"
            />
            <h2>{{ p[1].title }}</h2>
            <p>{{ p[1].details }}</p>
          </div>
          <div class="img3">
            <img
              :src="`/${p[2].pic}`"
              alt=""
              @mouseover="imgclass = 3"
              :class="{ 'animate__animated animate__pulse': imgclass == 3 }"
            />
            <h2>{{ p[2].title }}</h2>
            <p>{{ p[2].details }}</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import IndexFloor from "@/components/IndexFloor.vue";
import "animate.css";
export default {
  computed: {
    p() {
      return this.data.Threefloor;
    },
  },
  components: { IndexFloor },
  data() {
    return {
      swiperOption: {
        spaceBetween: 30,
        effect: "fade",
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
          loop: true,
        },

        autoplay: {
          delay: 2500,
          disableOnInteraction: false,
        },
      },
      data: "",
      imgclass: 0,
    };
  },
  mounted() {
    this.getData();
  },
  methods: {
    getData() {
      this.axios.get("/show").then((res) => {
        console.log(res);
        this.data = res.data.result;
        console.log(this.data);
      });
    },
    mouseover() {
      // console.log(this.$refs);
      this.$refs.myswiper.swiper.autoplay.stop();
    },
    mouseout() {
      this.$refs.myswiper.swiper.autoplay.start();
    },
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
.floor_three,
.floor_four {
  position: relative;
}
.floor_one {
  background-color: rgb(11, 12, 17);
  color: aliceblue;
  display: flex;
}
h2 {
  text-align: center;
  font-size: 1.5em;
}
.floor_one div {
  height: 650px;
}
.detail {
  /* position: absolute; */
  left: 0;
  margin-left: 20px;
  margin-top: 10px;
  width: 70vw;
}
.img {
  right: 0;
  bottom: 0;
  margin-top: 10px;
}
.img > img {
  right: 0;
  height: 340px;
  width: 540px;
  margin-bottom: 5px;
  display: block;
}
.floor_two {
  background-color: rgb(27, 181, 128);
  height: 200px;
  margin-top: 5px;
}
.floor_two p {
  text-align: center;
}
.floor_three {
  background-color: rgb(255, 255, 255);
  color: black;
  margin-top: 5px;
  display: flex;
}
.floor_three > img {
  /* position: absolute; */
  height: 400px;
  display: inline-block;
}
.main {
  width: calc(100vw - 712px);
  height: 400px;
  align-items: center;
}
.floor_four {
  height: 800px;
  margin-top: 10px;
  background-color: rgb(11, 12, 17);
  color: white;
}
.floor_four h2 {
  flex-wrap: wrap;
}
.floor_four > .four {
  display: flex;
  margin-left: 10px;
  bottom: 0;
  justify-content: center;
  margin-top: 56px;
}
.floor_four .four div {
  width: 380px;
  margin-left: 20px;
}
.floor_four .four div img {
  width: 380px;
  height: 480px;
}
.floor_four > .four .img1,
.img3 {
  margin-top: 70px;
}
</style>
