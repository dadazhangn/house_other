var model = document.querySelector("#model");
var btn_comment = document.querySelector("#btn-comment");
var detail_heads = document.querySelector('.detail-head');
var base_detail = document.querySelector('.base-detail');
var facility_box = document.querySelector('.facility-box');
var facility_nav = document.querySelector("ul.facility-nav");
var model_content = document.querySelector("#model-content");
var timer = null;
var jinweiArr = [];
var allData;

function initNav() {
    let navlist = document.querySelector("nav");
    let query_nav_container = document.querySelector(".query_nav_container");
    let analysis_nav_container = document.querySelector(".analysis_nav_container");
    // 导航跳转
    navlist.onclick = function (e) {
        let dom = e.target;
        if (dom.tagName !== "DD") {
            return false;
        }
        if (dom.dataset.id === "data-counter") {
            //   跳转--1.数据台账页面
            location.search = "";
            location.replace("/index");
        } else if (dom.dataset.id === "data-query") {
            // 展开 query-nav
            let temp = "flex";
            if (query_nav_container.style.display === "flex") {
                document.querySelector("section nav dd:nth-of-type(3)").style.marginTop = "0px";
                temp = "none";
            } else {
                document.querySelector("section nav dd:nth-of-type(3)").style.marginTop = "133px";
            }
            query_nav_container.style.display = temp;

        } else if (dom.dataset.id === "data-analysis") {
            //   展开analysis_nav
            let temp = "flex";
            if (analysis_nav_container.style.display === "flex") {
                document.querySelector("section nav dd:nth-of-type(4)").style.marginTop = "0px";
                temp = "none";
            } else {
                document.querySelector("section nav dd:nth-of-type(4)").style.marginTop = "93px";
            }
            analysis_nav_container.style.display = temp;
        } else if (dom.dataset.id === "data-compare") {
            //   房源对比
            console.log("房源对比");
            location.replace("/compare");
        } else if (dom.dataset.id === "data-tuijian") {
            //   房源推荐
            console.log("房源推荐");
               location.replace("/recommend_html");
        } else if (dom.dataset.id === "data-user") {
            //   用户模块
            console.log("用户模块");
             location.replace("/home_page_html");
        }
    }

    // 查询统计页面切换
    query_nav_container.onclick = function (e) {
        var dom = e.target;
        if (dom.tagName !== "SPAN") {
            return false;
        }
        if (dom.dataset.id === "query_simple") {
            // 1.简单查询
            console.log("简单查询");
            location.replace("/query_simple");
        } else if (dom.dataset.id === "query_condition") {
            // 2.条件查询
            console.log("条件查询");
            location.replace("/query_condition")
        } else if (dom.dataset.id === "query_public") {
            // 3.公共设施查询
            console.log("公共设施");
            location.replace("/query_public");
        }
    }


    // 区位资源分析导航
    analysis_nav_container.onclick = function (e) {
        var dom = e.target;
        if (dom.tagName !== "SPAN") {
            return false;
        }
        if (dom.dataset.id === "analysis-resources") {
            // 1.区位资源分析
            location.replace("/resources");
        } else if (dom.dataset.id === "analysis-recommendation") {
            // 2.购房推荐
            console.log("购房推荐");
            location.replace("/recommendation");
        }
    }
}

function init() {

    function checkIsUser() {
        let cookieObj = [];
        document.cookie.split("; ").forEach(item => {
            cookieObj.push(item.split("="));
        })
        let isLogin = cookieObj.find(item => {
            console.log(item);
            return item[0] === "username";
        })

        if (isLogin) {
            document.querySelector("header .right").innerHTML = `<span>用户：${isLogin[1]}</span>`;
            return;
        } else {
            document.querySelector("header .right").innerHTML = `<span class="head-login">登录</span>
                <span class="head-register">注册</span>`;
        }
        $("header span.head-login").on("click",function (){
            location.replace("/login");
        })
        $("header span.head-register").on("click",function (){
            location.replace("/register");
        })
    }
    checkIsUser();





    // 地图
    function showFacility(name = "公交") {
        // 百度地图API功能
        if (facility && facility.offsetParent === null) {
            return;
        }
        clearInterval(timer);
        var map = new BMap.Map("facility");            // 创建Map实例
        var mPoint = new BMap.Point(jinweiArr[0], jinweiArr[1]);
        // map.enableScrollWheelZoom();
        map.centerAndZoom(mPoint, 12);
        show_public(name);

        function show_public(public_type) {
            map.clearOverlays();
            var circle = new BMap.Circle(mPoint, 6000, {
                fillColor: "blue",
                strokeWeight: 1,
                fillOpacity: 0.3,
                strokeOpacity: 0.3
            });
            map.addOverlay(circle);
            var options = {
                renderOptions: {map: map, autoViewport: false, panel: "facility-list"},
                onSearchComplete: function (results) {
                    // console.log(results)
                    if (local.getStatus() == BMAP_STATUS_SUCCESS) {
                        // 判断状态是否正确  map.getDistance(pointA,pointB)).toFixed(2)+’ 米。’  弹窗 显示 名称 地址  距离目标point的距离
                    }
                }
            };
            var local = new BMap.LocalSearch(map, options);
            local.searchNearby(public_type, mPoint, 6000);
        }
    }

    // 事件
    function bindEvent() {
        document.querySelector(".detail-head").onclick = function (e) {
            let dom = e.target;
            if (dom.tagName !== 'SPAN') {
                return;
            }
            detail_heads.querySelector("span.active").classList.remove('active');
            dom.classList.add("active");

            if (dom.dataset.nav === "base") {
                base_detail.style.display = 'flex';
                facility_box.style.display = 'none';
            } else if (dom.dataset.nav === "facility") {
                base_detail.style.display = 'none';
                facility_box.style.display = 'block';
                timer = setInterval(() => {
                    showFacility();
                }, 1);
            }
        }


        document.querySelector("ul.facility-nav").onclick = function (e) {
            let dom = e.target;

            if (dom.tagName !== "LI") {
                return;
            }
            facility_nav.querySelector("li.active").classList.remove("active");
            dom.classList.add("active");
            if (dom.dataset.name) {
                showFacility(dom.dataset.name);
                document.querySelector('#facility-type').innerText = dom.dataset.name;
            }
        }

        document.querySelector("#btn-model-close").onclick = function () {
            model.style.display = "none";
            model_content.innerHTML = "";
        }
        document.querySelector("#echart-house-price").onclick = function () {
            model.style.display = "block";
            render_echarts(allData["loupan"]);
        }
        btn_comment.onclick = function () {
            model.style.display = 'block';
            show_comment_box();
        };


    }


    function show_comment_box() {
        let str = `
            <p>请做出您的评价</p>
            <div class="model-star-box">
                评价等级：
                <span class="iconfont icon-star model-star"></span>
                <span class="iconfont icon-star model-star"></span>
                <span class="iconfont icon-star model-star"></span>
                <span class="iconfont icon-star model-star"></span>
                <span class="iconfont icon-star model-star"></span>
            </div>
            <textarea></textarea>
            <button class="insert-comment">确认</button>
            `;
        model_content.innerHTML = str;
        let spanDoms = model_content.querySelectorAll(".model-star-box span");
        let index = 0;
        spanDoms.forEach((dom) => {
            dom.onclick = function (e) {
                let el = e.target;
                index = [].indexOf.call(el.parentElement.children, el);

                // console.log(el.parentElement.children, index)
                spanDoms.forEach((item) => {
                    item.classList.contains("active") && item.classList.remove("active");
                })
                console.log(Array.prototype.slice.call(spanDoms, 0, index + 1))
                Array.prototype.slice.call(spanDoms, 0, index + 1).forEach((item) => {
                    item.classList.add("active");
                })
            }
        });
        $("button.insert-comment").on("click", function () {
            let val = $("#model-content textarea").val().trim();
            // console.log(new Date().Format("yyyy-mm-dd"));
            console.log(val, index + 1, location.search.split("=")[1]);
            document.styleSheets[0].addRule("section>div.content::before","display:flex");
            $.ajax({
                url: "/user_add_comment",
                type: "post",
                data: {
                    "loupan_id": +location.search.split("=")[1],
                    "comment_text": val,
                    "score": index + 1,
                    "comment_time": new Date().toLocaleString()
                },
                dataType: "json",
            }).success(function (data) {
                if (data.res === 0) {
                    alert("您还有登录！！！")
                } else if (data.res === 1) {
                    document.styleSheets[0].addRule("section>div.content::before","display:none");
                    alert("评论成功")
                    location.reload()
                }
            })
        })

    }

    // 获取数据
    function getData(url, type) {
        return new Promise((resolve, reject) => {
            $.ajax({
                url: url,
                type: type,
                dataType: "json",
            }).success(function (res) {
                if (res) {
                    resolve(res);
                } else {
                    reject("请求失败");
                }
            })
        })
    }

    // 数据渲染
    function render(data) {
        let {loupan, loupan_house_type, loupan_comments} = data;

        function render_1(loupan) {
            const strHtml = `
                <p>楼盘首页：${loupan["loupan_name"]}</p>
                <div class="house-home-box">
                    <div class="house-home-left">
                        <img src="../../static/images/${loupan["default_image_id"]}.jpg" alt="">
                    </div>
                    <div class="house-home-right">
                        <div>
                            <span>楼盘最低价：</span>
                            <span class="house-home-price">${loupan["cankao_price"]}</span>
                            <span>元/平分米</span>
                        </div>
                        <div>&nbsp;&nbsp;&nbsp;绿化率：${loupan["lvhua_rate"]}</div>
                        <div>建筑类型：砖混结构</div>
                        <div>房源类型：${loupan["property_type"]}</div>
                        <div>楼盘高度：${loupan["building_type"]}</div>
                        <div>主力户型：${loupan["housetype_text"]}</div>
                        <div>楼盘位置：${loupan["address"]}</div>
                        <div>房价走势：<button id="echart-house-price">点击查看</button></div>
                    </div>
                </div>`;
            document.querySelector("div.house-home").innerHTML = strHtml;
        }

        function render_2(name, house_type) {
            const strHtml = `
                    <p>楼盘首页：${name}</p>
                    <div class="house-type-box">
                        <div class="house-type-left">
                            <img src="../../static/images/housetype_images/${house_type["default_image"]}.png" >
                        </div>
                        <div class="house-type-right">
                            <div>居室：${house_type["housetype_text"]}</div>
                            <div>层高：暂无</div>
                            <div>户型朝向：${house_type["chaoxiang"]}</div>
                            <div>建筑面积：${house_type["house_area"]}平米</div>
                            <div>详情：${house_type["detail"]}</div>
                        </div>
                    </div>`;
            document.querySelector("div.house-type").innerHTML = strHtml;
        }

        function render_3(loupan) {
            let arrArea = ["中山", "沙河口", "甘井子", "西岗"];
            const strHtml = `
                    <p>基本信息</p>
                    <div class="house-info-box">
                        <span>楼盘名称：${loupan["loupan_name"]}</span>
                        <span>所属区域：${arrArea[loupan["sub_region_id"]]}</span>
                        <span>房源类型：${loupan["property_type"]}</span>
                        <span>停车位：${loupan["car_num"]}</span>
                        <span>建筑类型：${loupan["building_type"]}</span>
                        <span>绿化率：${loupan["lvhua_rate"]}</span>
                        <span>结构类型：砖混结构</span>
                        <span>占地面积：${loupan["zhandi_area"]}</span>
                        <span>是否已售：${loupan["sale_title"]}</span>
                        <span>建筑面积：${loupan["jianzhu_area"]}</span>
                        <span>楼盘地址：${loupan["address"]}</span>
                        <span>参考价格：￥${loupan["cankao_price"]}</span>
                    </div>`;
            document.querySelector("div.house-info").innerHTML = strHtml;
        }

        function render_4(comments) {
            let strHtml = ``;
            comments.forEach(comment => {
                let arr = [false, false, false, false, false];
                for (let i = 0; i < comment.score; i++) {
                    arr.splice(i, 1, true);
                }
                strHtml += `
                        <li>
                            <div class="comment-left">
                                <div class="img-box">

<!--                                    <img src="https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2680422136,3870612526&fm=26&gp=0.jpg">-->
                                        <img src="../../static/picture.png">
                                </div>
                                <div class="comment-name">${comment.username}</div>
                            </div>
                            <div class="comment-right">
                                <div class="comment-stars">
                                    <span class="iconfont icon-star ${arr[0] ? 'active' : ''}"></span>
                                    <span class="iconfont icon-star ${arr[1] ? 'active' : ''}"></span>
                                    <span class="iconfont icon-star ${arr[2] ? 'active' : ''}"></span>
                                    <span class="iconfont icon-star ${arr[3] ? 'active' : ''}"></span>
                                    <span class="iconfont icon-star ${arr[4] ? 'active' : ''}"></span>
                                </div>
                                <div class="comment-content">${comment.comment_text}</div>
                                <div class="comment-time">
                                    <span>评论时间：</span>
                                    <span>${comment.comment_time}</span>
                                </div>
                            </div>
                        </li>`;
            });
            document.querySelector(".house-comment ul").innerHTML = strHtml;
        }

        render_1(loupan);
        render_2(loupan["loupan_name"], loupan_house_type);
        render_3(loupan);
        render_4(loupan_comments);
        bindEvent();
    }

    function render_echarts(data) {
        let {price_2018, price_2019, price_2020} = data;
        let myChart = echarts.init(model_content);
        const option = {
            title: {
                text: '近几年房价'
            },
            xAxis: {
                type: 'category',
                data: ['2018年', '2019年', '2020年']
            },
            yAxis: {
                type: 'value',
                axisLine: {
                    show: true,
                    symbol: ['none', 'arrow']
                },
                name: "元",
            },
            series: [{
                data: [price_2018, price_2019, price_2020],
                type: 'line',
                itemStyle: {normal: {label: {show: true}}}
            }]
        };

        myChart.setOption(option);
    }

    initNav();
    document.styleSheets[0].addRule("section>div.content::before","display:flex");
    getData(`/loupan_detail/${location.search.split("=")[1]}`, 'get').then(data => {
        allData = data;
        let {baidu_lng, baidu_lat} = data["loupan"];
        jinweiArr.push(baidu_lng, baidu_lat);
        render(data);
        document.styleSheets[0].addRule("section>div.content::before","display:none");
    })

}

init();

