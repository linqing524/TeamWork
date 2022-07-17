import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/HomeView.vue'
import Register from '../views/Register.vue'

Vue.use(VueRouter)

const routes = [
  // {
  //   path: '/',
  //   name: 'home',
  //   component: HomeView
  // },
  {
    path: '/about',
    name: 'about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/AboutView.vue')
  },
  {
    path: '/register',
    name: 'register',
    component: Register,
    meta:{
      title:'注册',
      cool:true
    }
  },
  {
    path: '*',
    name: 'notfound',
    component: () => import('../views/NotFound.vue'),
  },
  {
    path: '/product',
    name: 'product',
    component: () => import('../views/Product.vue'),
  },
  {
    path: '/login',
    name: 'login',
    component: () => import('../views/Login.vue'),
  },
  {
    path: '/nav',
    name: 'nav',
    component: () => import('../views/Nav_Bar.vue'),
    meta:{
      title:'首页',
      cool:'yes'
    }
  },
  
]


const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})
router.beforeEach((to,from,next)=>{
  document.title=to.meta.title
  next();
})
export default router
