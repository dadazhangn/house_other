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
    initNav();


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
        $("span#btn-model-close").on("click", function () {
            $("#model").css("display", "none");
            document.querySelector("#model-content").innerHTML = "";
        })

        $('button.btn-change-info').on("click", function () {
            let strHtml = ` <form>
                                    <div><input name="tel" id="tel" type="text" placeholder="手机号"></div>
                                    <div class="age">
                                        <input name="age-min" id="age-min" type="text" placeholder="最小年龄">
                                        <input name="age-max" id="age-max" type="text" placeholder="最大年龄">
                                    </div>
                                    <div>
                                        <select name="education">
                                            <option value="初中">初中</option>
                                            <option value="高中">高中</option>
                                            <option value="大学">大学</option>
                                            <option value="硕士">硕士</option>
                                            <option value="博士">博士</option>
                                        </select>
                                    </div>
                                    <div class="salary">
                                       <input name="salary-min" id="salary-min" type="text" placeholder="最小存款">
                                       <input name="salary-max" id="salary-max" type="text" placeholder="最大存款">
                                    </div>
                                    <div>
                                           <input  name="signature" type="text" placeholder="个性签名">
                                    </div>      
                                    <div class="oneself-tag">
                                        <label for="有房"><input type="checkbox" value="有房" name="label" id="有房">有房</label>
                                        <label for="有车"><input type="checkbox" value="有车" name="label" id="有车">有车</label>
                                        <label for="有存款"><input type="checkbox" value="有存款" name="label" id="有存款">有存款</label>
                                        <label for="已婚"><input type="checkbox" value="已婚" name="label" id="已婚">已婚</label>
                                    </div>
                                    <div>
                                        <button>确认注册</button>
                                    </div>
                                </form>`;
            document.querySelector("#model-content").innerHTML = strHtml;
            $("#model").css("display", "block");
            $("#model form button").on('click', function (e) {
                e.preventDefault();
                let oldVal = $("form").serializeArray();
                let newVal = {"label": []};
                oldVal.forEach(item => {
                    if (item.name === "label") {
                        newVal.label.push(item.value);
                        return;
                    }
                    newVal[item.name] = item.value;
                })
                if (+newVal.tel + "" === "NaN" || newVal.tel.length !== 11) {
                    alert("请输入正确的手机号")
                    return false;
                }
                if (+newVal['age-min'] + "" === "NaN" || +newVal['age-max'] + "" === "NaN") {
                    alert("请输入正确的年龄")
                    return false;
                }
                if (+newVal['salary-min'] + "" === "NaN" || +newVal['salary-max'] + "" === "NaN") {
                    alert("请输入正确的存款金额")
                    return false;
                }
                newVal.tel = +newVal.tel;
                newVal['salary-min'] = newVal['salary-min'] === "" ? -1 : +newVal['salary-min'];
                newVal['salary-max'] = newVal['salary-max'] === "" ? -1 : +newVal['salary-max'];
                newVal['age-min'] = newVal['age-min'] === "" ? -1 : +newVal['age-min'];
                newVal['age-max'] = newVal['age-max'] === "" ? -1 : +newVal['age-max'];
                // console.log(newVal)

                document.styleSheets[0].addRule("section>div.content::before","display:flex");
                $.ajax({
                    url: "/alter_user_info",
                    type: "post",
                    data: {"data": JSON.stringify(newVal)},
                    dataType: "json",
                }).success(function (data) {
                    console.log(data);
                    document.styleSheets[0].addRule("section>div.content::before","display:none");
                    if (data.res == 1) {
                        alert("修改成功");
                        //页面跳转
                        location.href = "/home_page_html"
                    } else {
                        alert("修改失败");

                    }
                })

            })
        })
        $('button.btn-change-pwd').on("click", function () {
            let strHtml = `
                <div class="form-box">  
                    <div>
                        <input type="password" placeholder="输入旧密码"/>    
                    </div>
                    <div>
                        <input type="password" placeholder="输入新密码"/>    
                    </div>
                     <div>
                        <input type="password" placeholder="确认新密码"/>    
                    </div>
                    <div>
                        <button type="button">确认修改</button>
                    </div>
                </div>
            `;
            document.querySelector("#model-content").innerHTML = strHtml;
            $("#model").css("display", "block");
            $("#model .form-box button").on('click', function () {
                let inps = document.querySelectorAll("div.form-box input");
                if (inps[0].value === "") {
                    alert("密码不正确")
                    return false;
                }
                if (inps[1].value === "") {
                    alert("请输入密码")
                    return false;
                } else if (inps[2].value === "") {
                    alert("请确认密码")
                    return false;
                }
                if (inps[2].value !== inps[1].value) {
                    alert("两次密码不一致")
                    return false;
                }
                document.styleSheets[0].addRule("section>div.content::before","display:flex");
                $.ajax({
                    url: "/alter_password",
                    type: "post",
                    data: {"old_password": inps[0].value, "new_password": inps[1].value},
                    dataType: "json",
                }).success(function (data) {
                    document.styleSheets[0].addRule("section>div.content::before","display:none");
                    if (data.res == 1) {
                        alert("修改成功");
                        $("span#btn-model-close").click();
                        //页面跳转
                        // location.href="/home_page_html"
                    } else {
                        alert("原始密码错误");
                    }
                })

            })
        })
    }

    document.styleSheets[0].addRule("section>div.content::before","display:flex");
    /**
     * 请求页面数据
     */
    getData("/home_page", "get").then(data => {
        if (data) {
            render(data);
            document.styleSheets[0].addRule("section>div.content::before","display:none");
        }
    })
    bindEvent();

    /**
     * 个人中心页面渲染
     * @param data
     */
    function render(data) {
        /**
         * 个人中心左侧渲染
         * @param userInfo
         */
        function render_left(userInfo) {
            $('.person-left span.nickname').text(userInfo.username);
            $('.person-left span.address').text("辽宁省大连市");
            $('.person-left span.signature').text(userInfo.signature);
            $('.left-footer span.age').text(userInfo.min_age + "~" + userInfo.max_age + "岁")
            $('.left-footer span.fund').text(userInfo.min_estate + "W~" + userInfo.max_estate + "W")
            $('.left-footer span.tel').text(userInfo.phone_num)
            $('.left-footer span.login-data').text(userInfo.register_time)
            $('.left-footer span.edu-bg').text(userInfo.education_background)
            $('.left-footer span.user-type').text(userInfo.user_type === 0 ? "用户" : "管理员");

            let strHtml = "";
            userInfo.user_label.forEach(label => {
                strHtml += `<span style="background-color: rgb(${Math.floor(Math.random() * 255)},${Math.floor(Math.random() * 255)},${Math.floor(Math.random() * 255)})">${label}</span>`;
            })
            document.querySelector(".left-center>div").innerHTML = strHtml;
        }

        /**
         * 个人中心右侧渲染
         * @param comments
         * @param histories
         */
        function render_right(comments, histories) {
            function render_comments(comments) {
                let strHtml = '';
                comments.forEach(comment => {
                    strHtml += `
                    <li>
                        <span>${comment.loupan_id}</span>
                        <span>${comment.loupan_name}</span>
                        <span>${comment.comment_text}</span>
                        <span>${comment.score}</span>
                        <span>${comment.comment_time}</span>
                        <span>
                            <button data-id="${comment.id}">删除</button>
                        </span>
                    </li>
                    `;
                })
                document.querySelector('ul.comment-list').innerHTML = strHtml;
                document.querySelector('ul.comment-list').onclick = function (e) {
                    let dom = e.target;
                    if (dom.tagName !== "BUTTON") {
                        return;
                    }
                    if (confirm("确认删除")) {
                        document.styleSheets[0].addRule("section>div.content::before","display:flex");
                        getData(`/delete_comment/${+dom.dataset.id}`, "get").then(data => {
                            document.styleSheets[0].addRule("section>div.content::before","display:none");
                            if (data.res === 1) {
                                alert("删除成功")
                                location.reload();
                            }
                        })
                    } else {
                        return;
                    }
                }
            };

            function render_history(histories) {
                let strHtml = "";
                histories.forEach((item, index) => {
                    strHtml += `
                         <li>
                            <span>${index + 1}</span>
                            <span><img
                                    src="../../static/images/${item.default_image_id}.jpg"></span>
                            <span>${item.loupan_name}</span>
                            <span>${item.cankao_price}</span>
                            <span>${item.building_type}</span>
                            <span>${item.lvhua_rate}</span>
                            <span>${item.address}</span>
                            <span>
                                <button data-id="${item.loupan_id}" type="button" class="detail">查看详情</button>
                                <button data-id="${item.loupan_id}" type="button" class="delete">删除</button>
                            </span>
                        </li>`;
                });
                let domList = document.querySelector("ul.history-list");
                domList.innerHTML = strHtml;
                domList.onclick = function (e) {
                    let dom = e.target;
                    if (dom.tagName !== "BUTTON") {
                        return;
                    }
                    if (dom.classList.contains("detail")) {
                        location.href = `/houseinfo?loupan_id=${dom.dataset.id}`;
                    } else if (dom.classList.contains("delete")) {
                        document.styleSheets[0].addRule("section>div.content::before","display:flex");
                        getData(`/delete_recommend/${+dom.dataset.id}`, "get").then(data => {
                            document.styleSheets[0].addRule("section>div.content::before","display:none");
                            if (data.res === 1) {
                                alert("删除成功")
                                location.reload();
                            }
                        })
                    }
                }
            }

            render_history(histories);
            render_comments(comments);
        }

        render_right(data.user_comments, data.history_recommend);
        render_left(data.user);
    }
}

init();

