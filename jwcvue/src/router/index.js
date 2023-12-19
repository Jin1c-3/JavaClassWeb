import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)

/* Layout */
import Layout from '@/layout'

/**
 * Note: sub-menu only appear when route children.length >= 1
 * Detail see: https://panjiachen.github.io/vue-element-admin-site/guide/essentials/router-and-nav.html
 *
 * hidden: true                   if set true, item will not show in the sidebar(default is false)
 * alwaysShow: true               if set true, will always show the root menu
 *                                if not set alwaysShow, when item has more than one children route,
 *                                it will becomes nested mode, otherwise not show the root menu
 * redirect: noRedirect           if set noRedirect will no redirect in the breadcrumb
 * name:'router-name'             the name is used by <keep-alive> (must set!!!)
 * meta : {
    roles: ['admin','editor']    control the page roles (you can set multiple roles)
    title: 'title'               the name show in sidebar and breadcrumb (recommend set)
    icon: 'svg-name'/'el-icon-x' the icon show in the sidebar
    breadcrumb: false            if set false, the item will hidden in breadcrumb(default is true)
    activeMenu: '/example/list'  if set path, the sidebar will highlight the path you set
  }
 */

/**
 * constantRoutes
 * a base page that does not have permission requirements
 * all roles can be accessed
 */
export const constantRoutes = [
  {
    path: '/login',
    component: () => import('@/views/login/index'), // @指的是src路径
    hidden: true
  },

  {
    path: '/404',
    component: () => import('@/views/404'),
    hidden: true
  },

  {
    path: '/',
    component: Layout,
    redirect: '/dashboard',
    children: [{
      path: 'dashboard',
      name: 'Dashboard',
      component: () => import('@/views/dashboard/index'),
      meta: { title: '欢迎', icon: 'dashboard' }
    }]
  },

  {
    path: '/query',
    component: Layout,
    redirect: '/query/category',
    name: 'Query',
    meta: { title: '查询', icon: 'el-icon-s-help' },
    children: [
      {
        path: 'category',
        name: 'Category',
        component: () => import('@/views/query/category/index'),
        meta: { title: '防疫物资查看', icon: 'table' }
      },
      {
        path: 'record',
        name: 'Record',
        component: () => import('@/views/query/record/index'),
        meta: { title: '打卡记录查看', icon: 'tree' }
      }
    ]
  },

  {
    path: '/form',
    component: Layout,
    redirect: '/form/newCategory',
    name: 'Form',
    meta: {
      title: '填写记录',
      icon: 'el-icon-edit'
    },
    children: [
      {
        path: 'newCategory',
        name: 'NewCategory',
        component: () => import('@/views/form/newCategory/index'),
        meta: { title: '新增物资', icon: 'el-icon-document' }
      },
      {
        path: 'newRecord',
        name: 'NewwRecord',
        component: () => import('@/views/form/newRecord/index'),
        meta: { title: '新增打卡', icon: 'form' }
      }
    ]
  },

  {
    path: '/chart',
    component: Layout,
    redirect: '/chart/piechart',
    name: '疫情防控可视化',
    meta: {
      title: '疫情防控可视化',
      icon: 'el-icon-s-platform'
    },
    children: [
      {
        path: 'piechart',
        component: () => import('@/views/chart/piechart'),
        name: 'Piechart',
        meta: { title: '物资概况', icon: 'el-icon-pie-chart' }
      },
      {
        path: 'linechart',
        component: () => import('@/views/chart/linechart'), // Parent router-view
        name: 'Linechart',
        meta: { title: '疫情趋势', icon: 'el-icon-data-line' }
      }
    ]
  },

  {
    path: 'external-link',
    component: Layout,
    children: [
      {
        path: 'https://www.wh.sdu.edu.cn/',
        meta: { title: '友情链接', icon: 'link' }
      }
    ]
  },

  // 404 page must be placed at the end !!!
  { path: '*', redirect: '/404', hidden: true }
]

const createRouter = () => new Router({
  // mode: 'history', // require service support
  scrollBehavior: () => ({ y: 0 }),
  routes: constantRoutes
})

const router = createRouter()

// Detail see: https://github.com/vuejs/vue-router/issues/1234#issuecomment-357941465
export function resetRouter() {
  const newRouter = createRouter()
  router.matcher = newRouter.matcher // reset router
}

export default router
