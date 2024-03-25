var query_pager_dom = document.querySelector(".pager");
var query_pager_ul = query_pager_dom.querySelector("ul");

var config_simple = {
    data: [],
    nowPage: 1, //当前页码
    allPage: 1, //共有多少页
    pageSize: 1 //页容量
}
var contentDom = getComputedStyle(document.querySelector('.content'));
config_simple.pageSize = Math.floor((parseInt(contentDom.height) - 100) / 100);



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
//             location.replace("/query_simple");
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
    document.styleSheets[0].addRule("section>div.content::before","display:flex");
    getData("/all_loupan_informations", 'get').then(data => {
        config_simple.data = data.result;
        config_simple.allPage = Math.ceil(config_simple.data.length / config_simple.pageSize);
        simple_render();
        document.styleSheets[0].addRule("section>div.content::before","display:none");
        $('div.pager').css('display',"flex");
    })

    // 简单查询渲染
    function simple_render() {
        let startIndex = (config_simple.nowPage - 1) * config_simple.pageSize;
        const curPageData = config_simple.data.slice(startIndex, startIndex + config_simple.pageSize);
        let strHtml = ``;
        curPageData.forEach(item => {
            // console.log(item);
            strHtml += `
                <tr>
                    <th><img src="${'../../static/images/' + item['default_image_id']}.jpg"></th>
                    <th>${item.loupan_name}</th>
                    <th>${item.address}</th>
                    <th>${item.cankao_price}元/平</th>
                    <th><div>小区类型：${item.property_type}; 小区高度类型：${item.building_type}; 绿化率:${item.lvhua_rate}; 停车位:${item.car_num}个</div></th>
                    <th>${item.sale_title}</th>
                    <th>
                    <button class="btn btn-shoucang" data-id=${item.loupan_id}>收藏</button>
                    <button class="btn btn-detail" data-id=${item.loupan_id}>小区详情</button>
                    </th>
                </tr>
            `;
        });
        // 小区列表dom
        let simple_list = query_simple.querySelector(`tbody`);
        simple_list.innerHTML = strHtml;

        simple_list.onclick = function (e) {
            let dom = e.target;
            if (dom.tagName !== "BUTTON") {
                return;
            }
            if(dom.classList.contains("btn-detail")){
                location.href = `/houseinfo?loupan_id=${dom.dataset.id}`;
            }else if(dom.classList.contains("btn-shoucang")){
                document.styleSheets[0].addRule("section>div.content::before","display:flex");
                getData(`/user_add_collection/${dom.dataset.id}`,"get").then(data=>{
                    document.styleSheets[0].addRule("section>div.content::before","display:none");
                    if(data.res===0){
                       alert("您还未登录")
                   }else if(data.res === 1){
                       alert("您已经收藏过了")
                   }else if(data.res === 2){
                       alert("收藏成功")
                   }
                })
            }

        }
    }

    $("button.find-btn").on("click", function () {
        let val = $("input.find-input").val().trim();
        if (val === "") {
            simple_render();
            $('div.pager').css('display',"flex");
            return;
        }
        let showData = config_simple.data.find(item => {
            return item.loupan_name === val;
        });
        console.log(showData);
        if (showData.length === 0) {
            return;
        }
        // showData = showData[0];
        let strHtml = `
            <tr>
                <th><img src="${'../../static/images/' + showData['default_image_id']}.jpg"></th>
                <th>${showData.loupan_name}</th>
                <th>${showData.address}</th>
                <th>${showData.cankao_price}元/平</th>
                <th><div>小区类型：${showData.property_type}; 小区高度类型：${showData.building_type}; 绿化率:${showData.lvhua_rate}; 停车位:${showData.car_num}个</div></th>
                <th>${showData.sale_title}</th>
                 <th>
                    <button class="btn btn-shoucang" data-id=${showData.loupan_id}>收藏</button>
                    <button class="btn btn-detail" data-id=${showData.loupan_id}>小区详情</button>
                </th>
            </tr>
            `;
        let simple_list = query_simple.querySelector(`tbody`);
        simple_list.innerHTML = strHtml;
        $("div.pager").css('display','none');
        simple_list.onclick = function (e) {
            let dom = e.target;
            if (dom.tagName !== "BUTTON") {
                return;
            }
            // location.search = `?loupan_id=${dom.dataset.id}`;
            if(dom.classList.contains("btn-detail")){
                location.href = `/houseinfo?loupan_id=${dom.dataset.id}`;
            }else if(dom.classList.contains("btn-shoucang")){
                document.styleSheets[0].addRule("section>div.content::before","display:flex");
                getData(`/user_add_collection/${dom.dataset.id}`,"get").then(data=>{
                    document.styleSheets[0].addRule("section>div.content::before","display:none");
                    if(data.res===0){
                        alert("您还未登录")
                    }else if(data.res === 1){
                        alert("您已经收藏过了")
                    }else if(data.res === 2){
                        alert("收藏成功")
                    }
                })
            }
        }
    })

    // 翻页事件
    query_pager_dom.onclick = function (e) {
        const dom = e.target;
        if (dom.tagName !== "SPAN" && dom.tagName !== "LI") {
            return;
        }
        let { nowPage, allPage, pageSize } = config_simple;

        if (dom.dataset.prev) {
            if (nowPage === 1) {
                return;
            }
            config_simple.nowPage--;
            render_page( config_simple.nowPage,"prev");
            simple_render();
        } else if (dom.dataset.next) {
            if (nowPage === allPage) {
                return;
            }
            config_simple.nowPage++;
            render_page( config_simple.nowPage,"next");
            simple_render();
        }

        if (dom.tagName === "LI") {
            render_page(+dom.dataset.num);
        }

        function render_page(curPage,type) {
            if (curPage < 3 || curPage > allPage - 2) {
                config_simple.nowPage = curPage;

                let liActive = query_pager_ul.querySelector("li.active");
                liActive.classList.remove("active");
                if(type === "prev"){
                    liActive.previousElementSibling.classList.add("active");
                }else if(type === "next"){
                    liActive.nextElementSibling.classList.add("active");
                }
                simple_render();
                return;
            }
            config_simple.nowPage = curPage;
            let pageHtml = '';
            pageHtml += `
                <li data-num="${curPage - 2}">${curPage - 2}</li>
                <li data-num="${curPage - 1}">${curPage - 1}</li>
                <li data-num="${curPage}" class="active">${curPage}</li>
                <li data-num="${curPage + 1}">${curPage + 1}</li>
                <li data-num="${curPage + 2}">${curPage + 2}</li>
                `;
            query_pager_ul.innerHTML = pageHtml;
            simple_render();
        }
    }
}
init();

