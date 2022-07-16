import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/HomeView.vue'

Vue.use(VueRouter)
const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(to){
  return originalPush.call(this, to).catch(err => err)
  }
const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/about',
    name: 'about',
    component: () => import( '../views/AboutView.vue')
  },
  {
    path:'/ht',
    redirect:'/ht/analysis',
    name: 'layout',
    component: () => import('../back-stage/Layout.vue'),
    children:[
      {
        path: '/ht/analysis',
        path:'',
        name: 'analysis',
        component: () => import('../back-stage/Analysis.vue'),
      },  
      {
        path: 'zxg',
        name:'zxg',
        component: () => import('../back-stage/xg-table/ZXG.vue'),
      },
      {
        path: 'hgds',
        name:'hgds',
        component: () => import('../back-stage/xg-table/HGDS.vue'),
      },
      {
        path: 'ml',
        name:'ml',
        component: () => import('../back-stage/xg-table/ML.vue'),
      },
      {
        path: 'mt',
        name:'mt',
        component: () => import('../back-stage/xg-table/MT.vue'),
      },
      {
        path: 'handle',
        name:'handle',
        component: () => import('../back-stage/vip-table/Handle.vue'),
      },
      {
        path: 'news',
        name: 'news',
        component: () => import('../back-stage/vip-table/News.vue'),
      },
     
    ]
  },
  {
    path: '/c',
    name: 'routeName',
    component: () => import('../views/echarts.vue'),
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})




export default router
