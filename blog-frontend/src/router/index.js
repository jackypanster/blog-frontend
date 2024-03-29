import Vue from 'vue'
import Router from 'vue-router'
import Home from '../views/Home.vue'
import Admin from '../views/Admin.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    },
    {
      path: '/admin',
      name: 'Admin',
      component: Admin,
      // 添加路由守卫以确保只有管理员能访问
    }
  ]
})
