export default {
	handleVal(state, payload) {
		state.userName = payload
	},
	decrementF(state) {
		state.flag = false
		console.log(state.flag)
	},
	decrementT(state) {
		state.flag = true
		console.log(state.flag)
	}
}