function init() {

    function bindEvent() {
        var token = $('input[name=csrfmiddlewaretoken]').val();
        $("button").on("click", function (e) {

            e.preventDefault();
            let newVal = chuliData($("form").serializeArray());
            console.log(newVal);
            console.log(typeof newVal.tel)

            $.ajax({
                url: "/register_check",
                type: "post",
                data:{
                    "data":JSON.stringify(newVal),
                    csrfmiddlewaretoken: token },
                dataType: "json",
            }).success(function (data) {
                 console.log(data);
                if (data.res==1) {
                    alert("注册成功");
                    //页面跳转
                    location.href="/login"
                }else{
                    alert("注册失败,已有该用户");

                }
            })

        })
    }

    function chuliData(oldVal) {
        let arr = {"label": []}
        oldVal.forEach(item => {
            if (item.name === "label") {
                arr.label.push(item.value);
                return;
            }
            arr[item.name] = item.value;
        })

        if (arr.pwd1 === "") {
            alert("请输入密码")
            return false;
        } else if (arr.pwd2 === "") {
            alert("请确认密码")
            return false;
        }
        if(arr.pwd1 !== arr.pwd2){
            alert("两次密码不一致")
            return false;
        }
        if(  +arr.tel+"" === "NaN" || arr.tel.length !== 11){
            alert("请输入正确的手机号")
            return false;
        }
        if(+arr.tel+"" === "NaN" ){
            alert("请输入正确的手机号")
            return false;
        }
        if(+arr['age-min']+"" === "NaN" || +arr['age-max']+"" === "NaN"){
            alert("请输入正确的年龄")
            return false;
        }

        if(+arr['salary-min']+"" === "NaN" || +arr['salary-max']+"" === "NaN"){
            alert("请输入正确的存款金额")
            return false;
        }

        delete(arr.pwd2);
        arr.tel = +arr.tel;
        arr['salary-min']=+arr['salary-min']
        arr['salary-max']=+arr['salary-max']
        arr['age-min']=+arr['age-min']
        arr['age-max']=+arr['age-max']
        return arr;
    }


    bindEvent();
}

init();

