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
//            location.replace("/recommendation");
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


    function bindEvent() {
        $("button[type='submit']").on("click", function (e) {
            e.preventDefault();
            let newValSelect = parseFormToSelect($("form").serializeArray());
            let newValAll = parseFormToAll($("form").serializeArray());
            let obj={
                "newValSelect":newValSelect,
                "newValAll":newValAll
            }
            console.log(newValSelect,newValAll);
            // 请求获取数据
            document.styleSheets[0].addRule("section>div.content::before","display:flex");
            $.ajax({
                url: "/region_resource_select",
                type: "post",
                data: {"query_data": JSON.stringify(newValSelect)},
                dataType: "json",
            }).success(function (data) {
                document.styleSheets[0].addRule("section>div.content::before","display:none");
                if (data.result.length === 0) {
                    alert("没有符合的小区")
                } else {
                    $("#model").css("display","block");
                    render_model(data.result);
                }
            })
        })

        $("#model span.btn-model-close").on("click",function () {
            $("#model").css("display","none");
            document.querySelector(`#model-content tbody.model-list`).innerHTML="";
        })

        $("input[type='range']").on("input", function (e) {
            $(this).next().text($(e.target).val() + "%");
        })

        $("select#region-type").on("change", function (e) {
            let region = $("select#region").val();
            let name = $("select#region-type").find("option:selected").val();
            initSelect(region, name);
        })

        $("select#region").on("change", function (e) {
            let region = $("select#region").find("option:selected").val();
            let name = $("select#region-type").val();
            initSelect(region, name);
        })
    }

    /**
     * 渲染select标签
     * @param data
     */
    function render_select(data) {
        let strHtml = "";
        data.forEach(item => {
            strHtml += `<option value="${item.building_name}">${item.building_name}</option>`;
        })
        document.querySelector("select#select-resource").innerHTML = strHtml;
    }

    function render_model(data) {
        let strHtml = "";
        data.forEach(item => {
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
        })
        let model_list = document.querySelector(`#model-content tbody.model-list`);
        model_list.innerHTML = strHtml;
        $("div.pager").css('display','none');
        model_list.onclick = function (e) {
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

    /**
     *  解析form表单数据
     * @param formObj
     * @returns 返回选择数据
     */
    function parseFormToSelect(formObj) {
        let sendObj = {
            "louceng": [],
            "lvhua": {"min": 0, "max": 100},
            "chaoxiang": [],
            "zhuangxiu": [],
            "jiaoyu": {"range": 0, "data": []},
            "yiliao": {"range": 0, "data": []},
            "jiaotong": {"range": 0, "data": []},
            "yule": {"range": 0, "data": []},
        };
        let temp = [];
        formObj.forEach(formItem => {
            if (formItem.name === "lvhua") {
                let r = formItem.value.split("~").map(item => parseInt(item));
                temp.push(...r);
                return;
            }
            Object.keys(sendObj).forEach(key => {
                if (formItem.name === key && Array.isArray(sendObj[key])) {
                    sendObj[key].push(formItem.value);
                } else if (formItem.name.indexOf(key) !== -1) {
                    if (formItem.name.indexOf("range") !== -1) {
                        sendObj[key]['range'] = +formItem.value;
                    } else {
                        sendObj[key]['data'].push(formItem.value);
                    }
                }
            })
        });
        temp.sort();
        if (temp, length === 0) {
            sendObj['lvhua'].min = 0;
            sendObj['lvhua'].max = 100;
        } else {

            sendObj['lvhua'].min = temp[0];
            sendObj['lvhua'].max = temp[temp.length - 1];
        }
        return sendObj;
    }

    /**
     * 解析form表单数据
     * @param formObj
     * @returns 返回所有数据
     */
    function parseFormToAll(formObj) {
        let sendObj = {
            "louceng": { '低层': '0', '多层': '0', '小高层': '0', '高层': '0', '超高层': '0' },
            "lvhua": { "0~25%": '0', '25%~50%': '0', '50%~75%': '0', '75%~100%': '0', },
            "chaoxiang": { '朝东': '0', '朝南': '0', '朝西': '0', '朝北': '0' },
            "zhuangxiu": { '精装修': '0', '普通装修': '0', '毛坯房': '0', },
            "region": '0',
            "region-type": "学校",
            "region-resource": "某个学校",
            "jiaoyu": ['0', { '幼儿园': '0', '小学': '0', '中学': '0', '大学': '0' }],
            "yiliao": ['0', { '三甲医院': '0', '一级医疗设施': '0', '二级医疗设施': '0' }],
            "jiaotong": ['0', { '火车站': '0', '汽车站': '0', '高铁站': '0', '公交站': '0' }],
            "yule": ['0', { '市场': '0', '商场超市': '0', '餐饮': '0', '公园': '0' }]

        };
        formObj.forEach(formItem => {
            Object.keys(sendObj).forEach(key => {
                if (formItem.name === key) {
                    if (sendObj[key][formItem.value]) {
                        sendObj[key][formItem.value] = '1';
                    } else if (sendObj[key][1] && sendObj[key][1][formItem.value]) {
                        sendObj[key][1][formItem.value] = '1';
                    } else {
                        sendObj[key] = formItem.value;
                    }
                } else if (formItem.name.indexOf(key) !== -1) {
                    sendObj[key][0] = +formItem.value;
                }
            })
        });
        return sendObj;
    }


    //网络请求
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
    //初始化select标签
    function initSelect(region = "ganjinzi", name = "xuexiao") {
        getData(`../../static/dalian_public/${region}_${name}.json`, "get").then(data => {
            render_select(data[`${region}_${name}`]);
            document.styleSheets[0].addRule("section>div.content::before","display:none");
        })
    };

    initSelect();

    bindEvent();

}

init();

