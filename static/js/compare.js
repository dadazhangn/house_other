let allData = [];
let showData = [];

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
//             location.replace("/compare");
        } else if (dom.dataset.id === "data-tuijian") {
            //   房源推荐
            console.log("房源推荐");
//            recommend_html
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


    function checkIsUser(){
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
        $('button.btn-compare').on('click',function(){
            let val = $('input').val().trim();

           if(showData.find(item => item.loupan_name === val)){
                alert("已加入对比！");
                return;
           }
           let result =  allData.find(item=>{
                console.log(item.loupan_name,val)
                return item.loupan_name === val;
            })
            render(result);
        });

         $('button.btn-reset').on('click',function(){
            $('input').val("");
            $('ul.compare-list').html("");
            showData = [];
        })
    }

    function render(data){
        if(!data){
            return;
        }
       let strHtml = `
             <li>
                <div>
                    <img src='../../static/images/${data.default_image_id}.jpg'>
                    <span>${data.loupan_name}</span>
                </div>
                <div class="active">￥${data.cankao_price}</div>
                <div>${data.zhandi_area}/㎡</div>
                <div>${data.sale_title}</div>
                <div>砖混结构</div>
                <div>${data.address}</div>
                <div>${data.property_type}</div>
            </li>
            `;
        $('ul.compare-list').append($(strHtml));
        showData.push(data);
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
    getData("/all_loupan_informations", 'get').then(data => {
        allData = data.result;
        document.styleSheets[0].addRule("section>div.content::before","display:none");
    })

    initNav();
    bindEvent();

}
init();

