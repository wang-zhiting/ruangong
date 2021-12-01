<template>
  <div>
    <div id="Home" v-if="$store.state.flag == true">
      <div style="width: 100%;height:130px;background-color: #f6f6f6;">
      <div class="HomeBd clear">

        <div class="left">
          <div class="leftBd">
            <div class="q322"><img src="@/assets/img/fav.png" alt=""></div>
            <div class="pipe"></div>
            <div class="manifesto">
              <p>校园二手交易</p>
              <p>为校友量身打造的二手交易平台</p>
            </div>
          </div>
        </div>
        <div class="right">
          <div class="rightBd">
            <div id="input">
              <div class="inputBd" @click="focusClick">
                <input @blur="focusState = false" v-model="pkey" type="text" maxlength="12" v-focus="focusState">
              </div>
              <div id="search">
                <button class="searchBtn" @click="ss">搜索</button>
              </div>
            </div>
            <div id="release">
              <div class="releaseBd" @click="goReleaseClick">
                <div class="circle"><span id="sell">卖</span></div>
                <div class="reisin">
                  <p>发布闲置</p>
                  <p>
                    <span>闲置换钱</span><span>快速出售</span>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      </div>
      <h3>注意:本二手交易市场完全不收取中介费用，全凭客户喜好打赏。如有不便请多见谅！！！</h3>
      <div id="Goods">
        <div class="GoodsBd">
          <div class="single"
               v-for="(item, index) in $store.state.Single.slice(0,pagesize)"
               :key="item.id" @click="flagF(item.id,item.userId,item.count);count(index)">
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
                  <img src="@/assets/img/gouwuche.svg" title="收藏" @click="collectSwitchClickT(index,item.id,item.sc)">
                </span>
              </li>
              <li class="clear">
                <p>
                  <!-- 时间 -->
                  <span class="item">发布时间{{item.createTime}}</span>
                  <!-- 收藏次数  浏览次数 点击收藏 -->
                </p>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <!-- 分页 -->
      <div id="paging">
        <div class="block">
          <el-pagination
            @size-change="handleSizeChange"
            @current-change="handleCurrentChange"
            :current-page="currentPage"
            :page-sizes="pageCount"
            :page-size="pagesize"
            layout="total, sizes, prev, pager, next, jumper"
            :total="total">
          </el-pagination>
        </div>
      </div>
    </div>
    <div id="Details" v-else>
      <p>
        商品详情
      </p>
      <div class="clearfix">
        <div class="left">
          <ul>
            <li>
              <el-card shadow="always">
                <img :src="http+$store.state.Single[countrun].imgUrl" alt="">
              </el-card>
            </li>
          </ul>
        </div>
        <div class="right">
          <ul>
            <li>
              <span>商品名称:</span><span class="name">{{$store.state.Single[countrun].title}}</span>
            </li>
            <li>
              <span>商品原价:</span><span>￥</span><span>{{$store.state.Single[countrun].bprice}}</span>
            </li>
            <li>
              <span>商品二手价:</span><span><span
              style="color: red;font-size: 20px">￥{{$store.state.Single[countrun].price}}</span></span>
            </li>
            <li class="des">
              <span>商品描述:</span><span>{{$store.state.Single[countrun].content}}</span>
            </li>
            <li>
              <span>卖家联系方式:</span><span>{{tel}}</span>
            </li>
            <li>
              <span>商品上架时间:</span><span>{{$store.state.Single[countrun].createTime}}</span>
            </li>
            <li>
              <span>浏览次数: <span style="color: red">{{$store.state.Single[countrun].count}}</span></span>
            </li>
            <li>
              <span>收藏次数:<span style="color: red"> {{$store.state.Single[countrun].sc}}</span></span>
            </li>
            <li>
              <el-button type="primary" @click="sc($store.state.Single[countrun].id,$store.state.Single[countrun].sc)">
                收藏商品
              </el-button>
            </li>
          </ul>
        </div>
        <div style="float: left">
          <el-divider content-position="left"><span style="font-size: 15px">商品留言信息</span></el-divider>
          <el-divider><i class="el-icon-mobile-phone"></i></el-divider>
          <el-link icon="el-icon-edit" style="float: right" @click="ly($store.state.Single[countrun].id)">发布留言</el-link>
          <el-card class="box-card">
            <div class="block">
              <el-timeline>
                <el-timeline-item v-for="(item,index) in  msg" :key="item.id" :timestamp="item.time" placement="top">
                  <el-card>
                    <h4>{{item.text}}</h4>
                    <br>
                    <p>{{username[index].userName}} 提交于 {{item.time}}</p>
                  </el-card>
                </el-timeline-item>
              </el-timeline>
            </div>
          </el-card>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  import "@/assets/css/home.css"
  import '@/assets/css/goods.css'
  import '@/assets/css/details.css'
  import request from "@/network/request"

  export default {
    name: 'Home',
    components: {},
    data() {
      return {
        userName: '',
        countrun: 0,
        focusState: false,
        collectSwitch: false,
        collectSwitchCount: 2,
        single: [],
        currentPage: 1,
        pagesize: 10,
        pageCount: [],
        http: "https://fleamarket.fun:8843",
        pkey: '',
        total: 0,
        tel: '',
        msg: [],
        username: []
      }
    },
    methods: {
      ly(id) {
        console.log(id)
        if (sessionStorage.getItem("user") == null) {
          this.$message.error("请登录后再进行操作")
          setTimeout(() => {
            this.$router.replace('/login')
          }, 1000)
        } else {
          this.$prompt('请输入留言内容', '发布留言信息', {
            confirmButtonText: '提交',
            cancelButtonText: '取消',
            inputType: 'textarea'
          }).then(({value}) => {
            if (value == null || value == '') {
              this.$message.error("请输入内容")
            } else {
              this.$http
                .post('https://fleamarket.fun:8843/message/addMessage', {
                  fid: id,
                  text: value,
                  username: sessionStorage.getItem("user")
                })
                .then(response => {
                  if (response.data.data == true) {
                    this.$message({
                      type: 'success',
                      message: '增加留言成功'
                    });
                    setTimeout(function () {
                      location.reload();
                    }, 1000)
                    this.$store.commit('decrementF')
                  } else {
                    this.$message.error("增加留言失败")
                  }
                })
            }

          }).catch(() => {
            this.$message({
              type: 'info',
              message: '取消输入'
            });
          });
        }
      },
      sc(id, sc) {
        if (sessionStorage.getItem("user") == null) {
          this.$message.error("请登录后再进行操作")
          setTimeout(() => {
            this.$router.replace('/login')
          }, 1000)
        } else {
          this.$confirm('是否将此商品加入收藏?', '提示', {
            confirmButtonText: '确定',
            cancelButtonText: '取消',
            type: 'warning'
          }).then(() => {
            this.$http
              .post('https://fleamarket.fun:8843/favorites/addFavorites', {
                pid: id,
                state: 1,
                username: sessionStorage.getItem("user")
              })
              .then(response => {
                if (response.data.data == true) {
                  this.$http
                    .put('https://fleamarket.fun:8843/product/update?id=' + id + '&sc=' + (sc + 1))
                    .then(response => {
                      if (response.data.data == true) {
                        this.$message({
                          type: 'success',
                          message: '添加成功!'
                        });
                        setTimeout(() => {
                          location.reload();
                        }, 500)
                      }
                    })
                } else {
                  this.$message.error("请不要重复添加相同的商品");
                }
              })

          })
        }
      },
      focusClick() {
        this.focusState = true
      },
      collectSwitchClickT(index, id, sc) {
        setTimeout(() => {
          this.$store.commit('decrementT')
        }, 10)
        console.log(sc)
        this.$confirm('是否将此商品加入收藏?', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          this.$http
            .post('https://fleamarket.fun:8843/favorites/addFavorites', {
              pid: id,
              state: 1,
              username: sessionStorage.getItem("user")
            })
            .then(response => {
              if (response.data.data == true) {
                this.$http
                  .put('https://fleamarket.fun:8843/product/update?id=' + id + '&sc=' + (sc + 1))
                  .then(response => {
                    if (response.data.data == true) {
                      this.$message({
                        type: 'success',
                        message: '添加成功!'
                      });
                      setTimeout(() => {
                        location.reload();
                      }, 500)
                    }
                  })
              } else {
                this.$message.error("请不要重复添加相同的商品");
              }
            })

        })
      },
      collectSwitchClickF(index, id) {
        this.single[index].sc--;
      },
      goReleaseClick() {
        if (sessionStorage.getItem("user") == null) {
          this.$message.error("请登录账号后再进行操作")
          setTimeout(() => {
            this.$router.replace('/login')
          }, 0)
        } else {
          this.$router.replace('/release')
        }
      },
      handleSizeChange(val) {
        // 每页多条
        console.log(`每页 ${val} 条`);
        console.log(this.pageCount.length)
        console.log(this.single.length)
        // this.currentPage = val
        // this.pageCount
        this.pagesize = val
      },
      handleCurrentChange(val) {
        this.$store.state.Single = []
        this.single = []
        // 当前页
        console.log(val);
        console.log(`当前页: ${val}`);
        this.currentPage = val;
        let pagehomt = {
          page: this.currentPage,
          number: this.pagesize,
        }
        request({
          url: '/product/productList',
          method: 'post',
          data: pagehomt
        }).then(res => {
          console.log(res.data)
          this.$store.state.Single = res.data
          this.single = this.$store.state.Single
          this.total = res.total
          let pageArr = [];
          let count = Math.ceil(this.$store.state.Single.length / this.pagesize);
          for (let i = 1; i < count + 1; i++) {
            pageArr.push(this.pagesize * i);
          }
          this.pageCount = pageArr
          console.log(this.single)
        }).catch(err => {
          console.log(err);
        })
      },
      handlePageSizes() {
        let pagehomt = {
          page: this.currentPage,
          number: this.pagesize
        };
        request({
          url: '/product/productList',
          method: 'post',
          data: pagehomt
        }).then(res => {
          console.log(res.data);
          this.$store.state.Single = res.data
          this.single = this.$store.state.Single
          this.total = res.total;
          let pageArr = [];
          let count = Math.ceil(this.single.length / this.pagesize);
          for (let i = 1; i < count + 1; i++) {
            pageArr.push(this.pagesize * i);
          }
          this.pageCount = pageArr

        }).catch(err => {
          console.log(err);
        })

      },
      count(index) {
        this.countrun = index
      },
      flagF(id, userId, count) {
        this.$store.commit('decrementF')
        console.log(id, userId)
        this.$http
          .get('https://fleamarket.fun:8843/user/selectById?id=' + userId)
          .then(response => {
            this.tel = response.data.data.tel
          });
        this.$http
          .put('https://fleamarket.fun:8843/product/update?id=' + id + '&count=' + (count + 1))
          .then(response => {
            console.log(response.data)
          })
        this.$http
          .post('https://fleamarket.fun:8843/message/messageList', {
            page: 1,
            number: 1000,
            pId: id
          })
          .then(response => {
            this.msg = response.data.data
            console.log(response.data.data)
            let index = new Array()
            for (let i = 0; i < response.data.data.length; i++) {
              index.push(response.data.data[i].tid)
            }
            this.$http
              .post('https://fleamarket.fun:8843/user/selectByIds', {
                ids: index
              })
              .then(response => {
                index = [];
                this.username = response.data.data
                // alert(this.username[0].userName)
              })
            console.log(this.username)
          })

      },
      ss() {
        if (this.pkey == '') {
          this.$message.error('请输入要搜索的值')
        } else {
          let pagehomt = {
            page: 1,
            number: 10,
            key: this.pkey
          }
          request({
            url: '/product/productList',
            method: 'post',
            data: pagehomt
          }).then(res => {
            console.log(res.data)
            this.$store.state.Single = res.data
            this.single = this.$store.state.Single
            this.total = res.total
            let pageArr = [];
            let count = Math.ceil(this.$store.state.Single.length / this.pagesize);
            for (let i = 1; i < count + 1; i++) {
              pageArr.push(this.pagesize * i);
            }
            this.pageCount = pageArr
            console.log(this.single)
          }).catch(err => {
            console.log(err);
          })
        }
      }
    },
    directives: {
      focus: {
        update: function (el, value) {//表示元素插入到DOM中的时候会执行这个函数
          if (value) {
            el.focus()
          }
        }
      }
    },
    computed: {},
    created() {
      this.handlePageSizes();
      this.ceil;
      this.ceil1;
      const h = this.$createElement;
      this.$notify({
        title: '公告',
        message: h('i', { style: 'color: teal'}, '现在平台内所有商品，留言，用户信息全乃虚构，用户达到一定数量后将清空现有信息 本站唯一官网:FleaMarket')
        ,position: 'bottom-right'
      });
      this.$notify({
        title: '提示',
        message: '由于时间仓促，找到bug或者有什么问题请进入帮助页及时与我们取得联系,也可以通过邮件的形式与我们联系 官方邮箱地址:fleamarket@aliyun.com',
        duration: 0,
        position: 'bottom-right'
        ,offset: 400
      });

    }
  }
</script>

<style>
  #paging {
    width: 1200px;
    margin: 0 auto;
  }

  #paging > div {
    text-align: center;
  }

  .text {
    font-size: 14px;
  }

  .item {
    margin-bottom: 18px;
  }

  .clearfix:before,
  .clearfix:after {
    display: table;
    content: "";
  }

  .clearfix:after {
    clear: both
  }

  .box-card {
    width: 1200px;
  }
</style>
