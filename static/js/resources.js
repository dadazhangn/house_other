let regions_lat_lng = {
    "zhongshan": {
        "lat": 38.9243,
        "lng": 121.652,
    },
    "xigang": {
        "lat": 38.9331,
        "lng": 121.64,
    },
    "shakekou": {
        "lat": 38.9182,
        "lng": 121.605,
    },
    "ganjinzi": {
        "lat": 38.9585,
        "lng": 121.532,
    }
}

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
//            location.replace("/resources");
        } else if (dom.dataset.id === "analysis-recommendation") {
            // 2.购房推荐
            console.log("购房推荐");
            location.replace("/recommendation");
        }
    }
}

function init() {
    initNav();

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

    function bindEvent() {
        const resources_nav = document.querySelector("ul.resources-nav");
        resources_nav.onclick = function (e) {
            let dom = e.target;
            if (dom.tagName !== "LI") {
                return;
            }
            resources_nav.querySelector("li.active") && resources_nav.querySelector("li.active").classList.remove("active");
            dom.classList.add("active");
            let region = document.querySelector("select").value;
            if (dom.dataset.name) {
                showResources(region, dom.dataset.name);
            }
        }
    }

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
    document.styleSheets[0].addRule("section>div.content::before","display:flex");

    function showResources(region = "ganjinzi", name = "xuexiao") {
        document.styleSheets[0].addRule("section>div.content::before","display:flex");
        getData(`../../static/dalian_public/${region}_${name}.json`, "get").then(data => {
            document.styleSheets[0].addRule("section>div.content::before","display:none");
            show_map(regions_lat_lng[region].lng,regions_lat_lng[region].lat,data[`${region}_${name}`]);
        })
    }


    function show_map(lng, lat, data) {
        //大连四个区的坐标
        var map = new BMap.Map("resources");          // 创建地图实例
        var point = new BMap.Point(lng, lat);
        map.centerAndZoom(point, 13);             // 初始化地图，设置中心点坐标和地图级别
        // map.setCurrentCity("沙河口");		//设置当前显示城市
        map.enableScrollWheelZoom(); // 允许滚轮缩放


        if (!isSupportCanvas()) {
            alert('热力图目前只支持有canvas支持的浏览器,您所使用的浏览器不能使用热力图功能~')
        }
        //详细的参数,可以查看heatmap.js的文档 https://github.com/pa7/heatmap.js/blob/master/README.md
        //参数说明如下:
        /* visible 热力图是否显示,默认为true
         * opacity 热力的透明度,1-100
         * radius 势力图的每个点的半径大小
         * gradient  {JSON} 热力图的渐变区间 . gradient如下所示
         *  {
                .2:'rgb(0, 255, 255)',
                .5:'rgb(0, 110, 255)',
                .8:'rgb(100, 0, 255)'
            }
            其中 key 表示插值的位置, 0~1.
                value 为颜色值.
         */
        heatmapOverlay = new BMapLib.HeatmapOverlay({"radius": 100, "visible": true});
        map.addOverlay(heatmapOverlay);
        heatmapOverlay.setDataSet({data: data, max: 100});

        //closeHeatmap();


        //判断浏览区是否支持canvas
        function isSupportCanvas() {
            var elem = document.createElement('canvas');
            return !!(elem.getContext && elem.getContext('2d'));
        }

        // function setGradient(){
        //     /*格式如下所示:
        //     {
        //         0:'rgb(102, 255, 0)',
        //         .5:'rgb(255, 170, 0)',
        //         1:'rgb(255, 0, 0)'
        //     }*/
        //     var gradient = {};
        //     var colors = document.querySelectorAll("input[type='color']");
        //     colors = [].slice.call(colors,0);
        //     colors.forEach(function(ele){
        //         gradient[ele.getAttribute("data-key")] = ele.value;
        //     });
        //     heatmapOverlay.setOptions({"gradient":gradient});
        // }
        //
        // function openHeatmap(){
        //     heatmapOverlay.show();
        // }
        //
        // function closeHeatmap(){
        //     heatmapOverlay.hide();
        // }
    }

    showResources();


    bindEvent();
}

init();

