const house_type_dom = document.querySelector("#house-type");
const region_dom = document.querySelector("#region");
const price_max_dom = document.querySelector("#price-max");
const price_min_dom = document.querySelector("#price-min");
const area_max_dom = document.querySelector("#area-max");
const area_min_dom = document.querySelector("#area-min");
let allData = [];
let map;
let query_condition_arr = {
    region: 0,
    house_type: "商住",
    price_max: 0,
    price_min: 0,
    area_max: 0,
    area_min: 0
}
var flag = false;


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
//             location.replace("/query_condition")
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
    getData("/all_loupan_informations", 'get').then(data => {
        document.styleSheets[0].addRule("section>div.content::before","display:none");
        allData = data.result;
     })



    function bindEvent() {
        let houseListDom = document.querySelector("#query-condition-list");
        document.querySelector(".query-tool-btn").onclick = function () {
            document.querySelector(".query-tool-btn").style.display = 'none';
            document.querySelector('.query-tool-content').style.display = 'block';
        }

        document.querySelector('.btn-close').onclick = function () {
            document.querySelector(".query-tool-btn").style.display = 'block';
            document.querySelector('.query-tool-content').style.display = 'none';
            houseListDom.style.display = 'none';
        }

        document.querySelector('.query-tool-content .btn-find').onclick = function () {
            houseListDom.style.display = 'block';
            query_condition_arr.region = region_dom.value;
            query_condition_arr.house_type = house_type_dom.value;
            query_condition_arr.price_max = price_max_dom.value;
            query_condition_arr.price_min = price_min_dom.value;
            query_condition_arr.area_max = area_max_dom.value;
            query_condition_arr.area_min = area_min_dom.value;
            if (!flag) {
                flag = true;
                setTimeout(() => {
                    conditionAllData();
                }, 1000);
            } else {
                conditionAllData();
            }
        }

    }

    function conditionAllData() {
        let { region, house_type, price_max, price_min, area_max, area_min } = query_condition_arr;
        // console.log(query_condition_arr);
        map.clearOverlays();
        let filter = allData.filter(itemData => {
            if (itemData.sub_region_id === +region &&
                itemData.property_type === house_type &&
                itemData.cankao_price < +price_max &&
                itemData.cankao_price > +price_min &&
                parseInt(itemData.zhandi_area) < +area_max &&
                parseInt(itemData.zhandi_area) > +area_min) {
                return true;
            } else {
                return false;
            }
        });
        filter.forEach((item, index) => {
            const { baidu_lat, baidu_lng, loupan_name, address } = item;
            create_marker(baidu_lat, baidu_lng, loupan_name, address, index + 1);
            map.centerAndZoom("大连市", 13);
            map.enableScrollWheelZoom(true); // 开启鼠标滚轮缩放
        });
        showResult(filter);
    }

    /**
     * 显示查询数据
     * @param {*} showData 
     */
    function showResult(showData = []) {
        document.querySelector('div.condition-num').innerHTML = `搜索结果：${showData.length}`;
        let strHtml = ``;
        showData.forEach((item, index) => {
            console.log(item);
            strHtml += `
                <li>
                    <span>
                        <i class="iconfont icon-biaoji"></i>
                        <span>${index+1}.${item.loupan_name}</span>
                    </span>
                    <span>
                        地址：${item.address}
                    </span>
                    <span class="btn-detail" data-id=${item.loupan_id}>
                        查看小区详情
                        <i class="iconfont icon-xiangqing"></i>
                    </span>
                </li>`;    
        })
        document.querySelector(".query-condition-list ul").innerHTML = strHtml;
        document.querySelector(".query-condition-list ul").onclick = function (e) {
            let dom = e.target;
            if (dom.tagName !== "SPAN") {
                return;
            }
            location.href = `/houseinfo?loupan_id=${dom.dataset.id}`;
        }
    }

    //创建地表marker 再给marker添加点事件 ，显示位置名称和地址
    function create_marker(lat, lng, local_name, adress, index) {
        var mPoint = new BMap.Point(lng, lat);
        var opts = {
            width: 200,     // 信息窗口宽度
            height: 100,     // 信息窗口高度
            title: "名称：" + local_name, // 信息窗口标题
        }
        //创建窗体
        var infoWindow = new BMap.InfoWindow("地址：" + adress, opts);  // 创建信息窗口对象

        var marker = new BMap.Marker(mPoint);
        marker.setAnimation(BMAP_ANIMATION_BOUNCE)
        marker.addEventListener('click', function (e) {
            map.openInfoWindow(infoWindow, mPoint); //开启信息窗口
        });
        // 将标注添加到地图
        marker.setLabel(getNumberLabel(index));
        map.addOverlay(marker);
    }
    //创建数字label 
    function getNumberLabel(number) {
        var offsetSize = new BMap.Size(0, 0);
        var labelStyle = {
            color: "#fff",
            backgroundColor: "0.05",
            border: "0"
        };

        //不同数字长度需要设置不同的样式。
        switch ((number + '').length) {
            case 1:
                labelStyle.fontSize = "14px";
                offsetSize = new BMap.Size(4, 2);
                break;
            case 2:
                labelStyle.fontSize = "12px";
                offsetSize = new BMap.Size(2, 4);
                break;
            case 3:
                labelStyle.fontSize = "10px";
                offsetSize = new BMap.Size(-2, 4);
                break;
            default:
                break;
        }

        var label = new BMap.Label(number, {
            offset: offsetSize
        });
        label.setStyle(labelStyle);
        return label;
    }


    function data_counter_map() {
        map = new BMap.Map("condition-map");    // 创建Map实例
        // 设置地图样式
        map.setMapStyle({
            styleJson: [
                {
                    "featureType": "road",
                    "elementType": "all",
                    "stylers": {
                        "color": "#ffffff",
                        "visibility": "off"
                    }
                }
            ]
        });
        map.centerAndZoom("大连市", 11);
        // map.addControl(new BMap.MapTypeControl());   //添加地图类型控件
        map.setCurrentCity("大连市");          // 设置地图显示的城市 此项是必须设置的
        var oldply;
        function getBoundary(data) {
            var bdary = new BMap.Boundary();
            bdary.get(data, function (rs) {
                var maxNum = -1, maxPly;
                var ply = new BMap.Polygon(rs.boundaries[0], { strokeWeight: 2, strokeOpacity: 0.5, fillColor: "#CDAA7D", strokeColor: "#FF00FF" });
                map.addOverlay(ply);
                //开始用"mouseover","mouseout"发现,鼠标移动过快,会多个省份也高亮了.所以改成 click了
                ply.addEventListener("click", function (e) {
                    if (typeof (oldply) != "undefined") {
                        oldply.setFillColor("#E0FFFF");
                    }
                    // ply.setFillColor("red");
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


    data_counter_map();
    bindEvent();
    initNav();
}
init();

