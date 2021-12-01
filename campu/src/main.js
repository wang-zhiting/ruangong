import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import Vue from 'vue'
import App from './App'
import store from './store'
import router from './router'
import qs from 'qs';
import axios from 'axios';
Vue.prototype.$http = axios
Vue.prototype.$qs = qs;
Vue.config.productionTip = false;

/* eslint-disable no-new */
Vue.use(ElementUI)
// import request from "./network/request"
new Vue({
  el: '#app',
	router,
	store,
  render: h => h(App)
})


