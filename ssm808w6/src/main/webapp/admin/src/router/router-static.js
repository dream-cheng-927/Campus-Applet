import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import wanggoupindan from '@/views/modules/wanggoupindan/list'
    import huodongfenlei from '@/views/modules/huodongfenlei/list'
    import xuesheng from '@/views/modules/xuesheng/list'
    import discussershoushangpin from '@/views/modules/discussershoushangpin/list'
    import huodongxinxi from '@/views/modules/huodongxinxi/list'
    import discusshuodongxinxi from '@/views/modules/discusshuodongxinxi/list'
    import storeup from '@/views/modules/storeup/list'
    import discusswanggoupindan from '@/views/modules/discusswanggoupindan/list'
    import huodongshenqing from '@/views/modules/huodongshenqing/list'
    import shangpinfenlei from '@/views/modules/shangpinfenlei/list'
    import chat from '@/views/modules/chat/list'
    import ershoushangpin from '@/views/modules/ershoushangpin/list'
    import fabuershoushangpin from '@/views/modules/fabuershoushangpin/list'
    import config from '@/views/modules/config/list'
    import faqiwanggoupindan from '@/views/modules/faqiwanggoupindan/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/news',
        name: '校园资讯',
        component: news
      }
      ,{
	path: '/wanggoupindan',
        name: '网购拼单',
        component: wanggoupindan
      }
      ,{
	path: '/huodongfenlei',
        name: '活动分类',
        component: huodongfenlei
      }
      ,{
	path: '/xuesheng',
        name: '学生',
        component: xuesheng
      }
      ,{
	path: '/discussershoushangpin',
        name: '二手商品评论',
        component: discussershoushangpin
      }
      ,{
	path: '/huodongxinxi',
        name: '活动信息',
        component: huodongxinxi
      }
      ,{
	path: '/discusshuodongxinxi',
        name: '活动信息评论',
        component: discusshuodongxinxi
      }
      ,{
	path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
      ,{
	path: '/discusswanggoupindan',
        name: '网购拼单评论',
        component: discusswanggoupindan
      }
      ,{
	path: '/huodongshenqing',
        name: '活动申请',
        component: huodongshenqing
      }
      ,{
	path: '/shangpinfenlei',
        name: '商品分类',
        component: shangpinfenlei
      }
      ,{
	path: '/chat',
        name: '客服咨询',
        component: chat
      }
      ,{
	path: '/ershoushangpin',
        name: '二手商品',
        component: ershoushangpin
      }
      ,{
	path: '/fabuershoushangpin',
        name: '发布二手商品',
        component: fabuershoushangpin
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
      ,{
	path: '/faqiwanggoupindan',
        name: '发起网购拼单',
        component: faqiwanggoupindan
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
