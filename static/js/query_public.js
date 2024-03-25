let allData;

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
            location.search="";
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
        }
        else if (dom.dataset.id === "data-user") {
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
//            location.replace("/query_public");
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
    let resultListDom = document.querySelector("#public-result-list");


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
    function bindEvent() {
        document.querySelector(".query-public-tool button").onclick = function () {
            let house_name = document.querySelector(".query-public-tool input.house-name").value;
            let scope = document.querySelector(".query-public-tool select").value;
            let house_round = +document.querySelector(".query-public-tool input.house-round").value;
            // baidu_lat: 38.9297
            // baidu_lng: 121.562
            let result = parseData(house_name)[0];
            console.log(result);
            map_init(house_name, scope, house_round, result.baidu_lng, result.baidu_lat);
        }
    }

    function parseData(house_name) {
        return allData && allData.filter(item => item.loupan_name == house_name);
    }

    function map_init(loupan_name, surround_public_type, search_radius, lng, lat) {
        console.log(loupan_name, surround_public_type, search_radius, lng, lat);
        console.log(1)
        var map = new BMap.Map("query-public"); // 创建Map实例
        var mpoint = new BMap.Point(lng, lat); //地图中心点，
        //创建marker
        var marker = new BMap.Marker(mpoint);
        var opts = {
            width: 50,     // 信息窗口宽度
            height: 50,     // 信息窗口高度
            title: "小区名称", // 信息窗口标题

        }
        var infoWindow = new BMap.InfoWindow(loupan_name, opts);
        marker.addEventListener("click", function () {
            map.openInfoWindow(infoWindow, mpoint); //开启信息窗口
        });
        map.addOverlay(marker)
        marker.setAnimation(BMAP_ANIMATION_BOUNCE);
        map.centerAndZoom(mpoint, 15); // 初始化地图,设置中心点坐标和地图级别。
        map.enableScrollWheelZoom(true); //启用滚轮放大缩小
        //地图、卫星、混合模式切换
        map.addControl(new BMap.MapTypeControl({ mapTypes: [BMAP_HYBRID_MAP] }));
        //向地图中添加缩放控件
        var ctrlNav = new window.BMap.NavigationControl({
            anchor: BMAP_ANCHOR_TOP_LEFT,
            type: BMAP_NAVIGATION_CONTROL_LARGE
        });
        map.addControl(ctrlNav);

        //向地图中添加缩略图控件
        var ctrlOve = new window.BMap.OverviewMapControl({
            anchor: BMAP_ANCHOR_BOTTOM_RIGHT,
            isOpen: 1
        });
        map.addControl(ctrlOve);

        //向地图中添加比例尺控件
        //var ctrlSca = new window.BMap.ScaleControl({
        //  anchor: BMAP_ANCHOR_BOTTOM_LEFT
        //});
        // map.addControl(ctrlSca);      
        var options = {
            renderOptions: { map: map, autoViewport: false, panel: "public-result-list" },
            onSearchComplete: function (results) {
                if (local.getStatus() == BMAP_STATUS_SUCCESS) {
                    // 判断状态是否正确  map.getDistance(pointA,pointB)).toFixed(2)+’ 米。’  弹窗 显示 名称 地址  距离目标point的距离
                }
            }
        };
        var local = new BMap.LocalSearch(map, options);
        // console.log(surround_public_type,search_radius)

        local.searchNearby(surround_public_type, mpoint, search_radius);
    }

    initNav();
    bindEvent();
    document.styleSheets[0].addRule("section>div.content::before","display:flex");
    getData("/all_loupan_informations", 'get').then(data => {
        allData = data.result;
        document.styleSheets[0].addRule("section>div.content::before","display:none");
    })
}
init();

