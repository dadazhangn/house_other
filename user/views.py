from django.shortcuts import render
from django.http import JsonResponse,HttpResponseRedirect

from data_count.models import *
import simplejson
import time

# Create your views here.

#登录装饰器
def login_required(view_func):
    '''登录装饰器'''
    def wrapper(request,*view_args,**view_kwargs):
        islogin = request.COOKIES.get("islogin")
        print(type(islogin))
        if islogin == 'True':
            #用户已登录,调用对应的视图
            print("用户一登陆")
            return view_func(request,*view_args,**view_kwargs)
        else:
            print("用户未登录")
            return HttpResponseRedirect("/index")
    return wrapper


#显示登陆页面
def login_html(request):
    """
      显示登陆页面
    :param request:
    :return:
    """
    return render(request,"user/login.html")

#显示注册页面
def register_html(request):
    """
    显示注册页面
    :param request:
    :return:
    """
    return render(request,"user/register.html")

#登陆验证
def login_check(request):
    """
    登录检测
    :param request:
    :return:
    """
    #获取用户名密码
    username = request.POST.get("username")
    password = request.POST.get("password")
    #用户类型判断
    user_type = 0 if request.POST.get("user_type")=="普通用户" else 1
    print(username,password,user_type)
    #创建用户对象
    user_ = user.objects.filter(username=username,password=password,user_type=user_type)
    if len(user_) == 1:
        #将用户名添加到session中
        response = JsonResponse({'res':1,"user_identity":user_type})
        #将用户添加到cookie中
        response.set_cookie("islogin",True)
        response.set_cookie("user_id",user_[0].id)
        response.set_cookie("username",username)
        response.set_cookie()
        return response
    else :
        return JsonResponse({'res':0})

def register_check(request):
    """
    注册检验
    :param request:
    :return:
    """
    # 获取用户名密码
    str = request.POST.get("data")
    post_data = simplejson.loads(str)
    print(post_data)


    #获取用户标签    username = request.POST.get("nickname")
    username = post_data["nickname"]
    password = post_data["pwd1"]
    min_age = post_data["age-min"]
    max_age = post_data["age-max"]
    signature = ""
    min_estate = post_data["salary-min"]
    max_estate = post_data["salary-max"]
    phone_num = post_data["tel"]
    user_type =0
    #获取注册时间
    register_time = time.strftime("%Y-%m-%d", time.localtime())
    education_background = post_data["education"]
    label_list = post_data["label"]

    is_house = 1 if "有房" in label_list else 0
    is_car = 1 if "有车" in label_list else 0
    is_money = 1 if "有存款" in label_list else 0
    is_marry = 1 if "已婚" in label_list else 0

    # print(username, password)
    # print(1)
    # 创建用户对象

    user_ = user.objects.filter(username=username, password=password)
    if len(user_) == 1:
        # 表示用户已存在
        return  JsonResponse({'res':0})
    else:  #表示用户不存在
        #将新用户插入
        user_ = user()
        user_.username = username
        user_.password = password
        user_.signature = signature
        user_.min_age = min_age
        user_.max_age = max_age
        user_.min_estate = min_estate
        user_.max_estate = max_estate
        user_.phone_num = phone_num
        user_.register_time = register_time
        user_.education_background = education_background
        user_.user_type = user_type
        user_.is_house = is_house
        user_.is_car = is_car
        user_.is_money = is_money
        user_.is_marry = is_marry
        user_.save()
        return JsonResponse({'res': 1})


def user_home_page_to_json(data):
    """
    将用户的个人信息转换成json格式
    :param data:
    :return:
    """


    dict={}
    dict["username"]=data.username
    dict["signature"] =data.signature
    dict["min_age"] = data.min_age
    dict["max_age"] =data.max_age
    dict["min_estate"] = data.min_estate
    dict["max_estate"] =data.max_estate
    dict["phone_num"]  =data.phone_num
    dict["register_time"] =data.register_time
    dict["education_background"] =data.education_background
    list = []
    if data.is_house ==1:
        list.append("有房")
    if data.is_car ==1:
        list.append("有车")
    if data.is_money ==1:
        list.append("有存款")
    if data.is_marry ==1:
        list.append("已婚")
    dict["user_label"] = list
    dict["user_type"] = data.user_type
    return dict

def comments_to_json(data):
    """
    将用户的评论信息转换成json格式
    :param data:
    :return:
    """
    list = []
    for i in data:
        dict={}
        #楼盘对象
        dict["id"] = i.id
        dict["loupan_id"] = i.loupan_id.id
        dict["loupan_name"] = i.loupan_id.loupan_name
        dict["comment_text"] = i.comment_text
        dict["score"] = i.score
        dict["comment_time"] = i.comment_time
        list.append(dict)

    return list


def history_recommend_to_json(data):
    list = []
    for i in data:
        dict = {}
        dict["loupan_id"] = i.loupan_id.id
        dict["loupan_name"] = i.loupan_id.loupan_name
        dict["property_type"] = i.loupan_id.property_type
        dict["building_type"] = i.loupan_id.building_type
        dict["sub_region_id"] = i.loupan_id.sub_region_id
        dict["address"] = i.loupan_id.address
        dict["lvhua_rate"] = i.loupan_id.lvhua_rate
        dict["zhandi_area"] = i.loupan_id.zhandi_area
        dict["jianzhu_area"] = i.loupan_id.jianzhu_area
        dict["car_num"] = i.loupan_id.car_num
        dict["cankao_price"] = i.loupan_id.cankao_price
        dict["default_image_id"] = i.loupan_id.default_image_id
        dict["housetype_text"] = i.loupan_id.housetype_text
        dict["baidu_lat"] = i.loupan_id.baidu_lat
        dict["baidu_lng"] = i.loupan_id.baidu_lng
        dict["sale_title"] = i.loupan_id.sale_title
        dict["price_2020"] = i.loupan_id.price_2020
        dict["price_2019"] = i.loupan_id.price_2019
        dict["price_2018"] = i.loupan_id.price_2018
        list.append(dict)
    return  list
@login_required
def home_page(request):
    """
    个人主页信息
    :param request:
    :return:
    """
    #从COOKIES中获取username
    #用户信息
    username = request.COOKIES['username']
    user_ = user.objects.get(username=username)
    user_informations = user_home_page_to_json(user_)

    #获取用户的所有评论
    all_comments = user_.comments_set.all()
    user_comments = comments_to_json(all_comments)

    #获取历史推荐
    all_history_loupan = user_.history_recommend_set.all()
    all_history_list = history_recommend_to_json(all_history_loupan)

    return JsonResponse({"user":user_informations,"user_comments":user_comments,"history_recommend":all_history_list})

def home_page_html(request):
    """
    个人主页显示
    :param request:
    :return:
    """
    return render(request,"user/personalcenter.html")

@login_required
def user_add_comment(request):
    """
    用户增加评论评论
    :param request:
    :return:
    """

    user_id = request.COOKIES["user_id"]
    #建立用户对象
    user_obj = user.objects.get(id=user_id)
    loupan_id = request.POST.get("loupan_id")
    #获取楼盘对象
    loupan_obj = loupan.objects.get(id=loupan_id)
    comment_text = request.POST.get("comment_text")
    score = request.POST.get("score")
    comment_time = request.POST.get("comment_time")

    comment = comments(user_id=user_obj,loupan_id=loupan_obj,comment_text=comment_text,score=score,comment_time = comment_time)
    comment.save()

    # 进行用户行为保存
    if request.COOKIES["islogin"] == "True":
        print("用户行为保存")
        user_obj = user.objects.get(id=request.COOKIES["user_id"])
        # 创建user_actions 对象
        user_action = user_actions.objects.filter(user_id=user_obj, loupan_id=loupan_obj)
        if len(user_action) != 0:
            # 将click_num +1
            user_action[0].click_num = user_action[0].click_num + 1
            user_action[0].comment_num = user_action[0].comment_num + 2
            user_action[0].save()
        else:
            user_action = user_actions()
            user_action.user_id = user_obj
            user_action.loupan_id =  loupan_obj
            user_action.click_num = 1
            user_action.comment_num = 2
            user_action.save()

    #保存成功返回参数
    return  JsonResponse({"res":1})

@login_required
def  user_add_collection(request,loupan_id):
    """
    用户收藏功能
    :param request:
    :return:
    """

    user_id = request.COOKIES["user_id"]
    user_obj = user.objects.get(id=user_id)

    print(user_id)
    collect_time = time.strftime("%Y-%m-%d", time.localtime())
    #获取是否登录
    islogin = request.COOKIES.get("islogin")
    if islogin==False:
        return JsonResponse({'res':0})

    collection = collections.objects.filter(user_id=user_id,loupan_id=loupan_id)

    #已经收藏
    if len(collection)==1:
        return JsonResponse({'res':1})
    #没有收藏 添加收藏
    collection_ = collections(user_id=user_obj,loupan_id=loupan.objects.get(id=loupan_id),collect_time=collect_time)
    collection_.save()

    # 进行用户行为保存
    if request.COOKIES["islogin"] == "True":
        print("用户行为保存")
        user_obj = user.objects.get(id=request.COOKIES["user_id"])
        # 创建user_actions 对象
        user_action = user_actions.objects.filter(user_id=user_obj, loupan_id=loupan.objects.get(id=loupan_id))
        if len(user_action) != 0:
            # 将click_num +1
            user_action[0].click_num = user_action[0].click_num + 1
            user_action[0].collection_num = user_action[0].collection_num + 2
            user_action[0].save()
        else:
            user_action = user_actions()
            user_action.user_id = user_obj
            user_action.loupan_id = loupan.objects.get(id=loupan_id)
            user_action.click_num = 1
            user_action.collection_num = 2
            user_action.save()

    return  JsonResponse({'res':2})

@login_required
def alter_user_info(request):
    """
    修改用户的个人信息
    :param request:
    :return:
    """
    str = request.POST.get("data")
    post_data = simplejson.loads(str)
    print(post_data)
    signature= post_data["signature"]
    min_age = post_data["age-min"]
    max_age = post_data["age-max"]
    min_estate = post_data["salary-min"]
    max_estate = post_data["salary-max"]
    phone_num = post_data["tel"]
    education_background = post_data["education"]
    label_list = post_data["label"]
    is_house = 1 if "有房" in label_list else 0
    is_car = 1 if "有车" in label_list else 0
    is_money = 1 if "有存款" in label_list else 0
    is_marry = 1 if "已婚" in label_list else 0

    user_id = request.COOKIES["user_id"]
    user_one = user.objects.get(id=user_id)
    user_one.signature = signature
    if min_age!=-1:
        user_one.min_age = min_age
    if max_age!=-1:
        user_one.max_age = max_age
    if min_estate!=-1:
        user_one.min_estate = min_estate
    if max_estate!=-1:
        user_one.max_estate = max_estate
    user_one.phone_num = phone_num
    user_one.education_background = education_background
    user_one.is_house = is_house
    user_one.is_car = is_car
    user_one.is_money =is_money
    user_one.is_marry = is_marry

    user_one.save()

    return JsonResponse({"res":1})

@login_required
def delete_comment(request,id):
    """
    用户删除评论
    :param request:
    :param id:
    :return:
    """
    user_comment = comments.objects.get(id=id)
    user_comment.delete()

    return JsonResponse({'res':1})


def alter_password(request):
    """
    用户修改密码
    :param request:
    :return:
    """
    old_password = request.POST.get("old_password")
    new_password = request.POST.get("new_password")

    user_id = request.COOKIES["user_id"]
    #获取用户对象
    user_ = user.objects.get(id=user_id)
    if user_.password!=old_password:
        #输入密码和原始密码不同
        return JsonResponse({"res":0})
    else:
        #存入数据库
        user_.password = new_password
        user_.save()
        return JsonResponse({"res":1})

@login_required
def delete_recommend(request,loupan_id):
    """
    删除历史推荐
    :param request:
    :return:
    """
    user_id = request.COOKIES["user_id"]
    user_ = user.objects.get(id=user_id)
    loupan_obj = loupan.objects.get(id=loupan_id)
    #创建历史推荐对象
    history_obj = history_recommend.objects.get(user_id=user_id,loupan_id=loupan_obj)
    history_obj.delete()

    return JsonResponse({"res":1})















