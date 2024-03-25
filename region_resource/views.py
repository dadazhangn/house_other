from django.shortcuts import render
from django.http import JsonResponse
from data_count.models import *
import math
import simplejson
import json
# Create your views here.
#进行数据存放
loupan_public_data = None

def data_to_json(data):
    """
    将获取的数据库数据转换成json格式
    :param data:
    :return:
    """
    list = []
    for i in data:
        print(i.region_name)
        dict = {
            "region_name":i.region_name,
            "school_num":i.school_num,
            "hospital_num":i.hospital_num,
            "government_num":i.government_num,
            "shopping_mall_num":i.shopping_mall_num,
            "station_num":i.station_num,
            "baidu_lat":i.baidu_lat,
            "baidu_lng":i.baidu_lng,
        }
        list.append(dict)
    return  {"regions":list}

def region_informations(request):
    """
    区域资源  获取四个区域的信息
    :param request:
    :return:
    """
    region_informarions = region_public.objects.all()

    response = JsonResponse(data_to_json(region_informarions))
    response["Access-Control-Allow-Origin"] = "*"

    return  response


def get_instance(X1,Y1,X2,Y2):
    """
    lng = 经度 lat= 维度
    通过X（经度） ，Y(维度) 计算两个点之间的距离
    :return: instance
    """
    R = 6371.0*1000  #地球半径为R = 6371.0km
    d = R*math.acos(math.cos(Y1)*math.cos(Y2)*math.cos(X1-X2)+math.sin(Y1)*math.sin(Y2))
    return d

def recommendation(request):
    """

    :param request:
    :return:
    """
    return  render(request,"gp_data/recommendation.html ")

def resources(request):
    """

    :param request:
    :return:
    """

    return render(request, "gp_data/resources.html ")


def data_to_list(data):
    """
    将字典数据转换成list
    :param data:
    :return:
    """
    list = []
    for key,value in data.items():
        if value==1:
            list.append(key)
    return list

def data_to_json(data):
    """
    将楼盘信息转换成json格式
    :param data:
    :return:
    """
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


def region_resource_select(request):
    """
    区位资源查询
    :param request:
    :return:
    """
    #获取周边设施
    str = request.POST.get("query_data")
    all_canshu = simplejson.loads(str)
    print(all_canshu)


    louceng_list = all_canshu["louceng"]
    lvhua_min = all_canshu["lvhua"]["min"]
    lvhua_max = all_canshu["lvhua"]["max"]
    chaoxiang_list = all_canshu["chaoxiang"]
    zhuangxiu_list = all_canshu["zhuangxiu"]

    #教育
    jiaoyu_rate = all_canshu["jiaoyu"]["range"]/100
    jiaoyu_list = all_canshu["jiaoyu"]["data"]

    #医疗
    yiliao_rate = all_canshu["yiliao"]["range"]/100
    yiliao_list = all_canshu["yiliao"]["data"]

    #交通
    jiaotong_rate = all_canshu["jiaotong"]["range"]/100
    jiaotong_list = all_canshu["jiaotong"]["data"]

    #娱乐
    yule_rate = all_canshu["yule"]["range"]/100
    yule_list = all_canshu["yule"]["data"]

    #获取全部楼盘数据
    all_loupan_info = loupan.objects.all()

    query_loupan_info=[]

    index = 0
    #进行筛选
    for loupan_info in all_loupan_info:
        #获取周边公共设施对象
        public_num = loupan_public_num.objects.get(loupan_id=loupan_info.id)
        public_num = public_num_to_dict(public_num)
        print("当前数据",index)
        #获取楼盘主力户型对象
        house_type = loupan_house_type.objects.get(loupan_id=loupan_info.id)
        if (lvhua_min<=int(loupan_info.lvhua_rate)<=lvhua_max and house_type.chaoxiang in chaoxiang_list and house_type.louceng in louceng_list and house_type.zhuangxiu in zhuangxiu_list):
            #统计周边设施占比
            print("一级过滤已通过")
            #教育
            jiaoyu_count =0
            for i in jiaoyu_list:
                print(type(i))
                jiaoyu_count += public_num[i]
            print("教育：",jiaoyu_count)
            query_jiaoyu_rate = jiaoyu_count/(200 if public_num["jiaoyu_count"]==0 else  public_num["jiaoyu_count"])
            print("教育",query_jiaoyu_rate)

            #医疗
            yiliao_count = 0
            for i in yiliao_list:
                yiliao_count += public_num[i]
            print("医疗：",yiliao_count)
            query_yiliao_rate = yiliao_count/(200 if public_num["yiliao_count"]==0 else  public_num["yiliao_count"])
            print("医疗",query_yiliao_rate)

            #交通
            jiaotong_count =0
            for i in jiaotong_list:
                jiaotong_count+=public_num[i]
            print("交通：",jiaotong_count)
            query_jiaotong_rate = jiaotong_count/(200 if public_num["jiaotong_count"]==0 else  public_num["jiaotong_count"])
            print("交通",query_jiaotong_rate)
            #娱乐
            yule_count =0
            for i in yule_list:
                yule_count+=public_num[i]
            print("娱乐",yule_count)
            query_yule_rate = yule_count/(200 if public_num["yule_count"]==0 else  public_num["yule_count"])
            print("娱乐",query_yule_rate)

            if query_jiaoyu_rate>=jiaotong_rate and query_yiliao_rate>=yiliao_rate and query_jiaotong_rate>=jiaotong_rate and query_yule_rate>=yule_rate:

                query_loupan_info.append(loupan_info)

                # 进行用户行为保存
                if request.COOKIES["islogin"] == "True":
                    print("用户行为保存")
                    user_obj = user.objects.get(id=request.COOKIES["user_id"])
                    # 创建user_actions 对象
                    user_action = user_actions.objects.filter(user_id=user_obj,
                                                              loupan_id=loupan_info)
                    if len(user_action) != 0:
                        # 将click_num +1
                        user_action[0].click_num = user_action[0].click_num + 1
                        user_action[0].search_num = user_action[0].search_num + 2
                        user_action[0].save()
                    else:
                        user_action = user_actions()
                        user_action.user_id = user_obj
                        user_action.loupan_id = loupan_id = loupan_info
                        user_action.click_num = 1
                        user_action.search_num = 2
                        user_action.save()

        index+=1
    user_obj = user.objects.get(id=request.COOKIES["user_id"])
    #将数据添加到历史推荐中
    if len(query_loupan_info)!=0:
        for lou in query_loupan_info:
            #判断是否推荐过
            history_info = history_recommend.objects.filter(user_id=user_obj,loupan_id=lou)
            if len(history_info)==0:
                #创建对象添加数据
                history_info_obj = history_recommend()
                history_info_obj.user_id = user_obj
                history_info_obj.loupan_id = lou
                history_info_obj.save()


    return JsonResponse(data_to_json(query_loupan_info))

def public_num_to_dict(data):
    """
    将public_num 转换成dict
    :param data:
    :return:
    """

    dict={}
    dict["youeryuan_num"] = data.youeryuan_num
    dict["xiaoxue_num"] = data.xiaoxue_num
    dict["zhongxue_num"] = data.zhongxue_num
    dict["daxue_num"] = data.daxue_num
    dict["sanjiayiyuan_num"] = data.sanjiayiyuan_num
    dict["yijiyiliao"] = data.yijiyiliao
    dict["erjiyiliao"] = data.erjiyiliao
    dict["huochezhan_num"] = data.huochezhan_num
    dict["qichezhan_num"] = data.qichezhan_num
    dict["gaotiezhan_num"] = data.gaotiezhan_num
    dict["gongjiaozhan_num"] = data.gongjiaozhan_num
    dict["shichang_num"] = data.shichang_num
    dict["shangchangchaoshi_num"] = data.shangchangchaoshi_num
    dict["canyin_num"] = data.canyin_num
    dict["gongyuan_num"] = data.gongyuan_num
    dict["jiaoyu_count"] = data.jiaoyu_count
    dict["yiliao_count"] = data.yiliao_count
    dict["jiaotong_count"] = data.jiaotong_count
    dict["yule_count"] = data.yule_count

    return  dict











