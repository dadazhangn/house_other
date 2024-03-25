from django.shortcuts import render
from django.http import JsonResponse
# Create your views here.
import requests
import json
from data_count.models import *
def loupan_public(request,loupan_id):
    """
    楼盘周边设施查询
    :param request:
    :return:
    """
    print(loupan_id)
    Loupan_data = loupan.objects.get(id=loupan_id)

    print(Loupan_data)
    dict = {}
    ak_list = ["hRn38VddgoQ1DDcru8VkcjgrXmI9emgM","8q4DHHCGiNAqGHuSKT0yRBSczReFetxW","pKHrcQG12Yk8DF0midbSOrTVoIiwKzTy","lDpuaDnGKnxCl7QuVloZGy6GfCqPWRwy"]
    query_list = ["公交","学校","医院","商场"]
    for i in query_list :
        url = "	http://api.map.baidu.com/place/v2/search?query={}&location={},{}&radius=6000&output=json&ak=z9xc2hrpsDDMnPvp81826Xfuv17KcaBy&scope=2&page_num=1"\
            .format(i,Loupan_data.baidu_lat,Loupan_data.baidu_lng)
        print(url)
        response = requests.get(url)
        json_data = json.loads(response.content.decode("utf-8"))
        dict[i]=json_data
    response = JsonResponse(dict)
    response["Access-Control-Allow-Origin"] = "*"
    return response

#数据转换json
def data_to_json(data):
    list = []
    for i in data:
        dict = {}
        dict["loupan_id"] = i.id
        dict["loupan_name"] = i.loupan_name
        dict["property_type"] = i.property_type
        dict["building_type"] = i.building_type
        dict["sub_region_id"] = i.sub_region_id
        dict["address"] = i.address
        dict["lvhua_rate"] = i.lvhua_rate
        dict["zhandi_area"] = i.zhandi_area
        dict["jianzhu_area"] = i.jianzhu_area
        dict["car_num"] = i.car_num
        dict["cankao_price"] = i.cankao_price
        dict["default_image_id"] = i.default_image_id
        dict["housetype_text"] = i.housetype_text
        dict["baidu_lat"] = i.baidu_lat
        dict["baidu_lng"] = i.baidu_lng
        dict["sale_title"] = i.sale_title
        dict["price_2020"] = i.price_2020
        dict["price_2019"] = i.price_2019
        dict["price_2018"] =i.price_2018
        list.append(dict)
    return {"result":list}
#小区详情
def loupan_information(request):
    """
    小区信息
    :param request:
    :return:
    """
    loupan_datas = loupan.objects.all()
    data_json = data_to_json(loupan_datas)
    response = JsonResponse(data_json)
    response["Access-Control-Allow-Origin"] = "*"
    return response
#转换成json格式
def data_to_json1(data1,data2,data3):
    dict1 = {}
    dict1["loupan_id"] = data1.id
    dict1["loupan_name"] = data1.loupan_name
    dict1["property_type"] = data1.property_type
    dict1["building_type"] = data1.building_type
    dict1["sub_region_id"] = data1.sub_region_id
    dict1["address"] = data1.address
    dict1["lvhua_rate"] = data1.lvhua_rate
    dict1["zhandi_area"] = data1.zhandi_area
    dict1["jianzhu_area"] = data1.jianzhu_area
    dict1["car_num"] = data1.car_num
    dict1["cankao_price"] = data1.cankao_price
    dict1["default_image_id"] = data1.default_image_id
    dict1["housetype_text"] = data1.housetype_text
    dict1["baidu_lat"] = data1.baidu_lat
    dict1["baidu_lng"] = data1.baidu_lng
    dict1["sale_title"] = data1.sale_title
    dict1["price_2020"] = data1.price_2020
    dict1["price_2019"] = data1.price_2019
    dict1["price_2018"] = data1.price_2018
    dict2 = {}
    dict2["id"] = data2.id
    dict2["loupan_id"] = data2.loupan_id
    dict2["housetype_text"] = data2.housetype_text
    dict2["chaoxiang"] = data2.chaoxiang
    dict2["house_area"] = data2.house_area
    dict2["default_image"] = data2.default_image
    dict2["detail"] = data2.detail
    #楼盘全部评论信息
    list= []
    for i in data3:
        dict= {}
        dict["comment_text"]=i.comment_text
        dict["score"] = i.score
        dict["username"] = i.user_id.username
        dict["comment_time"] = i.comment_time
        list.append(dict)
    print(list)
    return {"loupan":dict1,"loupan_house_type":dict2,"loupan_comments":list}

def loupan_detail(request,loupan_id):
    """
    楼盘详情
    :param request:
    :return:
    """
    #获取楼盘信息
    loupan_data = loupan.objects.get(id=loupan_id)
    #通过外键获取
    house_type = loupan_house_type.objects.get(loupan_id=loupan_id)
    # #获取楼盘全部评论信息
    loupan_comments = loupan_data.comments_set.all()

    #进行用户行为保存
    if request.COOKIES["islogin"]=="True":
        print("用户行为保存")
        user_obj = user.objects.get(id=request.COOKIES["user_id"])
        #创建user_actions 对象
        user_action = user_actions.objects.filter(user_id=user_obj,loupan_id=loupan_data)
        print(len(user_action))
        if len(user_action)!=0:
            #将click_num +1
            user_action[0].click_num =user_action[0].click_num+1
            user_action[0].search_num= user_action[0].search_num+2
            user_action[0].save()
        else:
            user_action = user_actions()
            user_action.user_id = user_obj
            user_action.loupan_id = loupan_data
            user_action.click_num = 1
            user_action.search_num = 2

            user_action.save()

    response = JsonResponse(data_to_json1(loupan_data,house_type,loupan_comments))
    response["Access-Control-Allow-Origin"] = "*"


    return response

def houseinfo(request):
    """
    展现 楼盘信息详情页面
    :param request:
    :return:
    """
    return render(request,"gp_data/houseinfo.html")

def query_condition(request):
    """
    条件查询页面展示
    :param request:
    :return:
    """
    return render(request,"gp_data/query_condition.html")

def query_simple(request):
    """
    简单查询页面
    :param request:
    :return:
    """
    return render(request,"gp_data/query_simple.html")

def query_public(request):
    """
    公共设施页面展示
    :param request:
    :return:
    """
    return  render(request,"gp_data/query_public.html")

