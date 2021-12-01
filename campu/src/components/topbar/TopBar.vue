<template>
  <header>
    <nav class="clear">
      <div class="left">
        <div class="imgbox left">
          <img src="@/assets/img/Top_Logo.jpg" class="top_img" alt="">
        </div>
        <ul class="right">
          <router-link class="px16 pointer" to='/home' tag='li' replace><span @click="flagT();homelist()">首页</span>
          </router-link>
          <router-link class="px16 pointer" to='/release' tag='li' replace @click.native="xxx">发布
          </router-link>
          <router-link class="px16 pointer" to='/car' tag='li' replace @click.native="xx">收藏
          </router-link>
          <router-link class="px16" style="cursor:help" to='/help' tag='li' replace><span>帮助</span></router-link>
        </ul>
      </div>
      <div class="right px14">
        <div class="px14" v-if="$store.state.img" style="padding-top: 20px">
          <el-dropdown @command="handleCommand">
          <span class="el-dropdown-link">
         {{$store.state.name}}<i class="el-icon-arrow-down el-icon--right"></i>
          </span>
            <el-dropdown-menu slot="dropdown">
              <el-dropdown-item command="a">退出登录</el-dropdown-item>
              <el-dropdown-item command="b">我的商品</el-dropdown-item>
              <el-dropdown-item command="c">我的留言</el-dropdown-item>
            </el-dropdown-menu>
          </el-dropdown>
        </div>
        <ul class="px14" v-else>
          <router-link class="px14 pointer" to="/login" tag='li' replace><span>登陆</span></router-link>
          <li>|</li>
          <router-link class="px14 pointer" to="/reg" tag='li' replace><span>注册</span></router-link>
        </ul>
      </div>
    </nav>
    <div>
      <el-dialog
        title="我发布的商品"
        :visible.sync="centerDialogVisible"
        append-to-body
        :modal="false"
        lock-scroll
        width="50%"
        center>
        <div style="overflow:auto;height: 600px;margin: 20px">
          <div style="margin-top: 10px;margin-left: 10px;" class="single xx"
               v-for="(item, index) in collect"
               :key="item.id">
            <div class="imgbox">
              <!-- 图片展示 -->
              <img :src="http+item.imgUrl" alt="">
            </div>
            <ul>
              <li>
                <!-- 描述 -->
                <p class="describe">
                  {{item.content}}
                </p>
              </li>
              <li class="clear">
                <!-- 二手价/原价 -->
                <p class="pricebox">
                  <span class="priTitle">{{item.title}}</span>
                </p>
              </li>
              <li style="padding-left:10px;">
                <span class="price">￥{{item.price}}</span><span>/</span><span class="cost">￥{{item.bprice}}</span>
              </li>
              <li class="lisc">
								<span class="licount">
									<span>浏览:</span><span>{{item.count}}</span>
									<span>收藏:</span><span>{{item.sc}}</span>
									<img src="@/assets/img/gouwuche.svg"
                       alt="收藏">
								</span>
              </li>
              <li class="clear">
                <p>
                  <!-- 时间 -->
                  <span class="item" style="padding-left: 8px">发布时间:{{item.createTime.substring(0,10)}}</span>
                  <!-- 收藏次数  浏览次数 点击收藏 -->
                </p>
              </li>
              <li>
                <div style="float: left">
                  <el-button type="warning" size="medium" @click="sxj(item.id)">上架/下架</el-button>
                </div>
                <div style="float: right">
                  <el-button type="danger" size="medium" @click="sc(item.id)">删除商品</el-button>
                </div>
              </li>
              <div></div>
            </ul>
          </div>
        </div>
      </el-dialog>
    </div>

    <div>
      <el-dialog
        title="我发布的留言"
        :visible.sync="centerDialogVisible1"
        append-to-body
        :modal="false"
        lock-scroll
        width="60%"
        center>
        <div style="overflow:auto;height: 600px;margin: 20px">
          <div style="float: left">
            <el-card class="box-card">
              <div class="block">
                <el-timeline>
                  <el-timeline-item v-for="(item,index) in  msg" :key="item.id" :timestamp="item.time" placement="top">
                    <i class="el-icon-delete" title="删除留言信息" style="cursor:pointer" @click="del(item.id)"></i>
                    <el-card>
                      <h4>{{item.text}}</h4>
                      <br>
                      <p>{{$store.state.name}} 在 {{item.time}} 留言给商品：{{pname[index].title}}</p>
                    </el-card>
                  </el-timeline-item>
                </el-timeline>
              </div>
            </el-card>
          </div>
        </div>
      </el-dialog>
    </div>
  </header>


</template>

<script>
  import "../../assets/css/heder.css"
  import '@/assets/css/car.css'
  import "@/assets/css/home.css"
  import '@/assets/css/goods.css'
  import '@/assets/css/details.css'

  export default {
    name: 'TopBar',
    data() {
      return {
        Acolor: '',
        path: '/home',
        username: '',
        centerDialogVisible: false,
        centerDialogVisible1: false,
        collect: [],
        http: "https://fleamarket.fun:8843",
        msg: [],
        pname:[]
      }
    },
    methods: {
      del(id){
        this.$confirm('此操作将永久删除此留言信息，是否继续?', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          this.$http
            .post('https://fleamarket.fun:8843/message/delete',{
              id:id,
              username:sessionStorage.getItem("user")
            })
            .then(response=>{
              this.$message.success(response.data.msg)
              setTimeout(function () {
                location.reload();
              }, 1000)
            })
        })
      },
      sc(id){
        this.$confirm('此操作将永久删除关于此商品的所有信息，是否继续?', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          this.$http
            .post('https://fleamarket.fun:8843/product/delete',{
              id:id,
              username:sessionStorage.getItem("user")
            })
            .then(response=>{
              this.$message.success(response.data.msg)
              setTimeout(function () {
                location.reload();
              }, 1000)
            })
        })
      },
      sxj(id){
        this.$confirm('系统自动判断上下架(下架的商品其他用户将看不到),是否继续?', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
           this.$http
          .put('https://fleamarket.fun:8843/product/obtained',{
            id:id
          })
          .then(response=>{
             this.$message.success(response.data.msg)
            setTimeout(function () {
              location.reload();
            }, 1000)
          })
        })
      },
      xxx() {
        this.pd();
      },
      xx() {
        this.pd1();
      },
      flagT() {
        if (this.path != this.$route.path) {
          this.$router.replace(this.path)
        }
        this.$store.commit('decrementT')
        console.log('mmp')
      },
      homelist() {
        this.$store
          .dispatch('aHome')
          .then(res => {
            console.log('里面完成了提交');
            console.log(res)
          })
      },
      pd() {
        if (sessionStorage.getItem("user") == null) {
          this.$message.error("请登录账号后再进行操作")
          setTimeout(() => {
            this.$router.replace('/login')
          }, 0)
        } else {
          this.$router.replace('/release')
        }
      },
      pd1() {
        if (sessionStorage.getItem("user") == null) {
          this.$message.error("请登录账号后再进行操作")
          setTimeout(() => {
            this.$router.replace('/login')
          }, 0)
        } else {

          this.$router.replace('/car')
        }
      },
      handleCommand(command) {
        if (command == 'a') {
          this.out()
        }
        if (command == 'b') {
          //我发布的商品
          this.myproduct()
        }
        if (command == 'c') {
          //我发布的留言
          this.mymsg()
        }
      },
      myproduct() {
        this.$http
          .post('https://fleamarket.fun:8843/product/productListByUser', {
            page: 1,
            number: 1000,
            username: sessionStorage.getItem("user")
          })
          .then(response => {
            this.collect = response.data.data
          })
        this.centerDialogVisible = true
      },
      mymsg() {
        this.centerDialogVisible1 = true
        this.$http
          .post('https://fleamarket.fun:8843/message/messageListByUser', {
            page: 1,
            number: 10000,
            username: sessionStorage.getItem("user")
          })
          .then(response => {
            this.msg = response.data.data
            let index = new Array();
            for (let i = 0; i < response.data.data.length; i++) {
              index.push(response.data.data[i].fid)
            }
            this.$http
              .post('https://fleamarket.fun:8843/product/productListByIds',{
                 pId:index
              })
              .then(response => {
                  this.pname = response.data.data
              })
          })
      },
      out() {
        this.$confirm('确定退出账号吗?', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          sessionStorage.clear()
          this.$message({
            type: 'success',
            message: '退出登录成功!'
          });
          this.$router.replace('/home')
          setTimeout(function () {
            location.reload();
          }, 1000)
        }).catch(() => {
          this.$message({
            type: 'info',
            message: '退出失败'
          });
        });
      }
    },
    created() {
      this.homelist();
      console.log(sessionStorage.getItem("user"), sessionStorage.length);
      //
      if (sessionStorage.getItem("user") != null) {
        this.$store.state.img = true
        this.$store.state.name = sessionStorage.getItem("user")
      }
    }
  }
</script>

<style scoped>
  .colorblue {
    color: #4DA5FF;
  }

  .el-dropdown-link {
    cursor: pointer;
    color: #409EFF;
  }

  .el-icon-arrow-down {
    font-size: 12px;
  }

  #paging {
    width: 1200px;
    margin: 0 auto;
  }

  #paging > div {
    text-align: center;
  }
</style>
