let house_tuijian = document.querySelector('div.house-tuijian');
let user_tuijian = document.querySelector('div.user-tuijian');
let tuijian_nav = document.querySelector('div.tuijian-nav');
let dataObj = {
    "house_tuijian": [],
    "user_tuijina": [],
    "user_info": {}
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
//               location.replace("/recommend_html");
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
            return item[0] === "username";
        })

        if (isLogin) {
            document.querySelector("header .right").innerHTML = `<span>用户：${isLogin[1]}</span>`;
            return;
        } else {
            document.querySelector("header .right").innerHTML = `<span class="head-login">登录</span>
                <span class="head-register">注册</span>`;
        }
        $("header span.head-login").on("click", function () {
            location.replace("/login");
        })
        $("header span.head-register").on("click", function () {
            location.replace("/register");
        })
    }

    checkIsUser();


    function bindEvent() {
        $('div.tuijian-nav').on('click', function (e) {
            let dom = e.target;
            if (dom.tagName !== 'SPAN') {
                return;
            }
            if (dom.classList.contains("active")) {
                return;
            }
            tuijian_nav.querySelector("span.active").classList.remove('active');
            dom.classList.add("active");
            if (dom.dataset.nav === "user-nav") {
                user_tuijian.style.display = 'block';
                house_tuijian.style.display = 'none';
                if (dataObj.house_tuijian.length !== 0) {
                    render(dataObj.user_tuijina, user_tuijian.querySelector("ul.data.list"));
                } else {
                    document.styleSheets[0].addRule("div::before", "display:flex");
                    getData("/base_user_recommend").then(data => {
                        dataObj.user_tuijina = data;
                        render(dataObj.user_tuijina, user_tuijian.querySelector("ul.data.list"));
                        document.styleSheets[0].addRule("div::before", "display:none");
                    });
                }
            } else if (dom.dataset.nav === "house-nav") {
                user_tuijian.style.display = 'none';
                house_tuijian.style.display = 'block';
                if (dataObj.house_tuijian.length !== 0) {
                    render(dataObj.house_tuijian, house_tuijian.querySelector("ul.data-list"));
                } else {
                    document.styleSheets[0].addRule("section>div.content::before", "display:flex");
                    getData("/base_loupan_recommend").then(data => {
                        dataObj.house_tuijian = data.result;
                        render(dataObj.house_tuijian, house_tuijian.querySelector("ul.data-list"));
                        document.styleSheets[0].addRule("section>div.content::before", "display:none");
                    })
                }
            }
        });
    }

    /**
     * 网络请求
     * @param url
     * @returns {Promise<unknown>}
     */
    function getData(url) {
        return new Promise((resolve, reject) => {
            $.ajax({
                url: url,
                type: "get",
                dataType: "json",
            }).success(function (data) {
                if (data) {
                    resolve(data);
                } else {
                    reject(data);
                }
            })
        })
    }

    /**
     * 列表项添加点击事件
     * @param dom
     */
    function addEVent(dom) {
        dom.querySelectorAll("li").forEach(liDom => {
            liDom.onclick = function (e) {
                let clickDom = e.target;
                if (clickDom.tagName === "I") {
                    if (clickDom.classList.contains("active")) {
                    } else {
                        document.styleSheets[0].addRule("section>div.content::before", "display:flex");
                        getData(`/user_add_collection/${clickDom.dataset.id}`).then(data => {
                            document.styleSheets[0].addRule("section>div.content::before", "display:none");
                            if (data.res === 0) {
                                alert("您还未登录")
                            } else if (data.res === 1) {
                                alert("您已经收藏过了")
                            } else if (data.res === 2) {
                                alert("收藏成功")
                            }
                        });
                    }
                    clickDom.classList.toggle("active");
                    return;
                } else {
                    location.href = `/houseinfo?loupan_id=${clickDom.dataset.id}`;
                }
            }
        })
        // dom.onclick = function (e) {
        //     let dom = e.target;
        //     if (dom.tagName === "I") {
        //         if (dom.classList.contains("active")) {
        //
        //         } else {
        //             getData(`/user_add_collection/${dom.dataset.id}`).then(data => {
        //                 if (data.res === 0) {
        //                     alert("您还未登录")
        //                 } else if (data.res === 1) {
        //                     alert("您已经收藏过了")
        //                 } else if (data.res === 2) {
        //                     alert("收藏成功")
        //                 }
        //             });
        //         }
        //         dom.classList.toggle("active");
        //         return;
        //     } else if (dom.tagName === "LI") {
        //         location.href = `/houseinfo?loupan_id=${dom.dataset.id}`;
        //     }
        // }
    }

    /**
     * 渲染方法
     * @param data
     * @param dom
     */
    function render(data, dom) {
        let strHtml = "";
        data.forEach(item => {
            strHtml += `
                <li data-id="${item.loupan_id}">
                    <div class="img-box" data-id="${item.loupan_id}">
                        <img data-id="${item.loupan_id}" src="../../static/images/${item.default_image_id}.jpg">
                    </div>
                    <div data-id="${item.loupan_id}" class="house-info">
                        <span data-id="${item.loupan_id}">
                            ${item.loupan_name}
                            <i data-id="${item.loupan_id}" class="iconfont icon-shoucang"></i>
                        </span>
                        <span data-id="${item.loupan_id}" class="house-price">${item.cankao_price}元/平米</span>
                    </div>
                </li>
                `;
        })
        dom.innerHTML = strHtml;
        addEVent(dom);
    }

    function render_user(data) {
        let strHtml = `
                <li>昵称：${data.nickname}</li>
                <li>年龄：${data.min_age + "~" + data.max_age + "岁"}</li>
                <li>资金：${data.min_estate + "W~" + data.max_estate + "W"}</li>
                <li>教育程度：${data.education_background}</li>
                <li>用户类型：${data.user_type === 0 ? "用户" : "管理员"}</li>
                <li>注册时间：${data.register_time}</li>`;
        document.querySelector(".user-tuijian div.user-head ul").innerHTML = strHtml;
        document.querySelector(".user-tuijian div.user-head button").onclick = function () {
            location.replace("/home_page_html");
        }
    }

    initNav();
    bindEvent();

    getData("/base_user_recommend").then(data => {
        dataObj.user_tuijina = data.result;
        getData("/home_page", "get").then(data => {
            if (data) {
                dataObj.user_info = data.user;
                render_user(dataObj.user_info);
                render(dataObj.user_tuijina, user_tuijian.querySelector("ul.data-list"));
                document.styleSheets[0].addRule("section>div.content::before", "display:none");
            }
        });
    });
}

init();

