import request from "@/network/request"

export default {
	aLogin(context, payload) {
		return new Promise((resolve, reject) => {
			request({
				url: '/user/login' + '?' +
						'userName=' + payload.userName +
						'&passWord=' + payload.passWord ,
				method: 'post',
				}).then(res => {
				console.log(res);
				
				if(res.data == false){
					alert(res.msg)
				}else {
					context.state.img = true
					this.$router.replace('/login')
					
				}
				console.log(context.state.img)
				}).catch(err => {
				console.log(err);
			})
		})
	},
	aHome(context, payload) {
		return new Promise((resolve, reject) => {
			let pagehomt = {
				page:1,
				number:10
			}
			request({
				url: '/product/productList' ,
				method: 'post',
				data: pagehomt
				}).then(res => {
				console.log(res);
				context.state.Single = res.data
				}).catch(err => {
				console.log(err);
			})
		})
	}
}