from django.shortcuts import render
from django.http import JsonResponse,HttpResponseRedirect

# Create your views here.
from data_count.models import *

def data_to_list(data):
    """
    将数据转换成list
    :param data:
    :return:
    """
    list=[]
    for i in data:
        city_name = ""
        if isinstance(i,dalian_house_price):
            city_name=i.city_name
        else:
            city_name = i.region_name
        dict = {'city_name':city_name,
                "y1":i.y1,
                "y2": i.y2,
                "y3": i.y3,
                "y4": i.y4,
                "y5": i.y5,
                "y6": i.y6,
                "y7": i.y7,
                "y8": i.y8,
                "y9": i.y9,
                "y10": i.y10,
                "y11": i.y11,
                "y12": i.y12,

                }
        print(dict)
        list.append(dict)
    return list

def data_to_list2(data):
    list = []
    for i in data:
        print(i.region_name)
        dict = {
            "region_name":i.region_name,
            "school_num":i.school_num,
            "hospital_num":i.hospital_num,
            "government_num":i.government_num,
            "shopping_mall_num":i.shopping_mall_num,
            "station_num":i.station_num
        }
        list.append(dict)
    return list


def main_index(request):
    """
    主页展示
    :param request:
    :return:
    """
    #获取大连房价
    dalian_house_price_data = dalian_house_price.objects.all()
    list1 = data_to_list(dalian_house_price_data)

    #获取四个区的房价
    region_city_price_data = region_city_price.objects.all()
    list2 = data_to_list(region_city_price_data)
    #获取四个区的公共设施
    region_public_data = region_public.objects.all()
    list3 = data_to_list2(region_public_data)
    response = JsonResponse({"dalian_house_price_data":list1,"region_city_price_data":list2,"region_public_data":list3})
    response["Access-Control-Allow-Origin"] ="*"
    return response

def show_index(request):
    """
    主页展示
    :param request:
    :return:
    """

    return render(request,"gp_data/index.html")


def query_simple(request):
    """
    主页展示
    :param request:
    :return:
    """

    return render(request,"gp_data/query_simple.html")





