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
//             location.replace("/index");
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


    function exec_counter() {
        document.styleSheets[0].addRule("section>div.content::before","display:flex");
        data_counter_map();
        getData("/main_html", "get").then(data => {
            console.log(data);
            chart_1(data["dalian_house_price_data"]);
            chart_2(data["region_city_price_data"]);
            chart_3(data["region_public_data"]);
            document.styleSheets[0].addRule("section>div.content::before","display:none");
        }, reson => console.log(reson))

    }

    // 数据台账-显示地图
    function data_counter_map() {
        var map = new BMap.Map("counter-1");    // 创建Map实例
        // 设置地图样式
        // map.setMapStyle({
        //     styleJson: [
        //         {
        //             "featureType": "road",
        //             "elementType": "all",
        //             "stylers": {
        //                 "color": "#ffffff",
        //                 "visibility": "off"
        //             }
        //         }
        //     ]
        // });
        map.centerAndZoom("大连市", 10);
        // map.addControl(new BMap.MapTypeControl());   //添加地图类型控件
        map.setCurrentCity("大连市");          // 设置地图显示的城市 此项是必须设置的
        var oldply;

        function getBoundary(data) {
            var bdary = new BMap.Boundary();
            bdary.get(data, function (rs) {
                var maxNum = -1, maxPly;
                var ply = new BMap.Polygon(rs.boundaries[0], {
                    strokeWeight: 2,
                    strokeOpacity: 0.5,
                    fillColor: "#CDAA7D",
                    strokeColor: "#FF00FF"
                });
                map.addOverlay(ply);
                //开始用"mouseover","mouseout"发现,鼠标移动过快,会多个省份也高亮了.所以改成 click了
                ply.addEventListener("click", function (e) {
                    if (typeof (oldply) != "undefined") {
                        oldply.setFillColor("#E0FFFF");
                    }
                    ply.setFillColor("red");
                    oldply = ply;
                });

                if (maxPly) {

                    map.setViewport(maxPly.getPoints());
                }
            });
        }

        //行政区
        var datas = ["中山区", "西岗区", "沙河口区", "甘井子区"]
        for (var i = 0; i < datas.length; i++) {
            getBoundary(datas[i]);
        }
    }

    // 图一
    function chart_1(data) {
        let values = Object.values(data[0]);
        let myChart = echarts.init(document.getElementById('counter-2'));
        const option = {
            title: {
                text: '房价走势'
            },
            xAxis: {
                type: 'category',
                data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月']
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
                data: values.slice(1),
                type: 'line',
                itemStyle: {normal: {label: {show: true}}}
            }]
        };

        myChart.setOption(option);
    }

    // 图二
    function chart_2(data) {
        const myChart = echarts.init(document.getElementById('counter-3'));
        const option = {
            title: {
                text: '房价对比'
            },
            tooltip: {
                trigger: 'axis'
            },
            legend: {
                data: ['甘井子', '中山', '沙河口', '西岗']
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            toolbox: {
                feature: {
                    saveAsImage: {name: "保存"}
                }
            },
            xAxis: {
                type: 'category',
                data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月']
            },
            yAxis: {
                type: 'value',
                axisLine: {
                    show: true,
                    symbol: ['none', 'arrow']
                },
                name: "元"
            },
            series: [
                {
                    name: '甘井子',
                    type: 'line',
                    stack: '价格',
                    data: Object.values(data[0]).slice(1),
                    itemStyle: {normal: {label: {show: true}}}
                },
                {
                    name: '中山',
                    type: 'line',
                    stack: '价格',
                    data: Object.values(data[1]).slice(1),
                    itemStyle: {normal: {label: {show: true}}}
                },
                {
                    name: '沙河口',
                    type: 'line',
                    stack: '价格',
                    data: Object.values(data[2]).slice(1),
                    itemStyle: {normal: {label: {show: true}}}
                },
                {
                    name: '西岗',
                    type: 'line',
                    stack: '价格',
                    data: Object.values(data[3]).slice(1),
                    itemStyle: {normal: {label: {show: true}}}
                },
            ]
        };

        myChart.setOption(option);
    }

    // 图三
    function chart_3(data) {
        const myChart = echarts.init(document.getElementById('counter-4'));
        const option = {
            title: {
                text: "公共资源数量对比"
            },
            legend: {
                right: 20,
                data: ['中山', '西岗', '沙河口', '甘井子']
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis: [
                {
                    type: 'category',
                    data: ['学校', '医院', '政府', '商场']
                }
            ],
            yAxis: {
                type: 'value',
                axisLine: {
                    show: true,
                    symbol: ['none', 'arrow']
                },
                name: "个"
            },
            series: [
                {
                    name: '中山',
                    type: 'bar',
                    data: Object.values(data[0]).slice(1),
                    itemStyle: {normal: {label: {show: true, position: 'top'}}}
                },
                {
                    name: '西岗',
                    type: 'bar',
                    data: Object.values(data[1]).slice(1),
                    itemStyle: {normal: {label: {show: true, position: 'top'}}}
                },
                {
                    name: '沙河口',
                    type: 'bar',
                    data: Object.values(data[2]).slice(1),
                    itemStyle: {normal: {label: {show: true, position: 'top'}}}
                },
                {
                    name: '甘井子',
                    type: 'bar',
                    data: Object.values(data[3]).slice(1),
                    itemStyle: {normal: {label: {show: true, position: 'top'}}}
                },
            ]
        };


        myChart.setOption(option);
    }

    // 网络请求
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

    // 初始化首页
    exec_counter();
    initNav();
    checkIsUser();
}

init();



