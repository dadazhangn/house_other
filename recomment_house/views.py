from django.shortcuts import render
from django.http import JsonResponse
from data_count.models import *
import numpy as np

import math
# Create your views here.

def recommend_html(request):
    """
    房源推荐页面的显示
    :param request:
    :return:
    """
    return render(request,"gp_data/house_tuijian.html")



def data_to_json1(data):
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
        dict["price_2018"] =i.loupan_id.price_2018
        if dict not in list:
            list.append(dict)
    return {"result":list}
def base_user_recommend(request):
    """
    基于用户收藏的推荐
    csdn  算法地址 ：https://blog.csdn.net/winone361/article/details/45457445
    :param request:
    :return:
    """
    #获取全部用户对象
    all_user = user.objects.all()
    #获取全部楼盘对象
    all_loupan = loupan.objects.all()

    #创建用户收藏矩阵
    user_collect_items_X_Y = np.zeros((len(all_user),len(all_loupan)),dtype=float)

    #创建用户对

    for i in range(len(all_user)):
        for j in range(len(all_loupan)):
            #判断收藏夹中是否 有该用户收藏的该楼盘
            collect = collections.objects.filter(loupan_id = all_loupan[j],user_id = all_user[i])
            if len(collect) != 0:
                user_collect_items_X_Y[i][j] = 1

    #建立 楼盘 - 用户的倒叙表  转置用户收藏矩阵
    T_user_collect_items_X_Y = user_collect_items_X_Y.T

    #创建用户 - 用户矩阵
    user_user_X_Y = np.zeros((len(all_user),len(all_user)),dtype=float)

    #赋值用户相似表
    for i in range(len(T_user_collect_items_X_Y)):
        for j in range(len(T_user_collect_items_X_Y[i])):
            index_list = []
            if T_user_collect_items_X_Y[i][j]==1:
                index_list.append(j)

            if len(index_list)>=1:
                for i_ in range(len(index_list)):
                    for j_ in range(i_+1,len(index_list)):
                        user_user_X_Y[i_][j_]+=1

    like_user_user_X_Y = user_user_X_Y

    #进行用户相似计算
    for i in range(len(user_user_X_Y)):
        for j in range(len(user_user_X_Y[i])):
            print("user",user_user_X_Y)
            print(len(user_user_X_Y[i]))

            like_user_user_X_Y[i][j] = user_user_X_Y[i][j]/math.sqrt(len(user_user_X_Y[i])*len(user_user_X_Y[j]))
            print(user_user_X_Y[i][j]/math.sqrt(len(user_user_X_Y[i])*len(user_user_X_Y[j])))
            print(like_user_user_X_Y[i][j])

    print(like_user_user_X_Y)

    #获取当前用户
    now_user = user.objects.get(id = request.COOKIES["user_id"])
    index = 0
    for u in range(len(all_user)):
        if now_user==all_user[u]:
            index = u

    #从用户相似表中找到和他最相似的用户
    max_user_index = int(np.argmax(like_user_user_X_Y[index]))
    print(max_user_index)

    #获取当前用户收藏的楼盘
    now_user_collect = list(now_user.collections_set.all())
    #获取相似用户收藏的楼盘

    like_user_collect = list(all_user[max_user_index].collections_set.all())
    print("现在",now_user_collect)
    print("相似",like_user_collect)
    if now_user == all_user[max_user_index]:
        last_tuijian_data =now_user_collect
    else :
        for i in now_user_collect:
            print(i.loupan_id.loupan_name)
            for j in like_user_collect:
                print(j.loupan_id.loupan_name)
                print(i.loupan_id.loupan_name == j.loupan_id.loupan_name)
                if i.loupan_id.loupan_name == j.loupan_id.loupan_name:
                    print(i.loupan_id.loupan_name)
                    now_user_collect.remove(i)
                    print("移除成功")
        last_tuijian_data = now_user_collect + like_user_collect

    print(last_tuijian_data)

    #转换成json数据
    return JsonResponse(data_to_json1(last_tuijian_data))









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



def base_loupan_recommend(request):
    """
    基于楼盘的推荐
    csdn 算法地址：
    :param request:
    :return:
    """
    #获取用户行为中的全部数据
    #获取全部用户
    all_user = user.objects.all()
    #获取全部楼盘
    all_loupan = loupan.objects.all()
    #创建用户行为矩阵
    action_user_X_Y = np.zeros((len(all_loupan),len(all_user)),dtype=float)

    #为行为矩阵赋值
    for i in range(len(all_loupan)):
        for j in range(len(all_user)):
            #创建用户行为表对象
            user_action = user_actions.objects.filter(loupan_id=all_loupan[i],user_id=all_user[j])
            #获取分数
            if len(user_action)!=0:
                count = user_action[0].click_num+user_action[0].search_num+user_action[0].collection_num+user_action[0].comment_num
                print(count)
                action_user_X_Y[i][j] = count

    print(action_user_X_Y)
    #创建相似矩阵
    like_user_X_Y = np.zeros((len(all_loupan),len(all_loupan)),dtype=float)

    for i in range(len(all_loupan)):
        for j in range(len(all_loupan)):
            if i==j:
                like_user_X_Y[i][j] =1.0
            else:
                like_user_X_Y[i][j] =sum(np.array(action_user_X_Y[i])*np.array(action_user_X_Y[j]))/(math.sqrt(sum(action_user_X_Y[i]*action_user_X_Y[i]))+math.sqrt(sum(action_user_X_Y[j]*action_user_X_Y[j])))
                print("分子:",sum(np.array(action_user_X_Y[i])*np.array(action_user_X_Y[j])))
                print("分母:",(math.sqrt(sum(action_user_X_Y[i]*action_user_X_Y[i]))+math.sqrt(sum(action_user_X_Y[j]*action_user_X_Y[j]))))
    print(like_user_X_Y[0])
    #对like_user_X_Y 讲nan换成0.0
    action_user_X_Y[np.isnan(action_user_X_Y)]=0.0
    like_user_X_Y[np.isnan(like_user_X_Y)] = 0.0
    #创建推荐矩阵  相似矩阵*评分矩阵

    recommen_X_Y = np.dot(like_user_X_Y,action_user_X_Y)

    #生成该用户的推荐list
    #获取用户在那一列
    user_id = request.COOKIES["user_id"]
    islogin = request.COOKIES["islogin"]
    if islogin=="False":
        #表示用户没有登录
        return JsonResponse({"res":0})
    now_user = user.objects.get(id=user_id)
    y_index = 0
    for i in range(len(all_user)):
        if all_user[i] == now_user:
            y_index = i

    tuijian_obj =[]

    #讲推荐矩阵转置
    T_recommen_X_Y = recommen_X_Y.T
    for i in range(len(T_recommen_X_Y[y_index])):
        if T_recommen_X_Y[y_index][i] !=0.0 :
            tuijian_obj.append(all_loupan[i])
            #添加到历史推荐
            # 将数据添加到历史推荐中
            history_info = history_recommend.objects.filter(user_id=now_user, loupan_id=all_loupan[i])
            if len(history_info) == 0:
                # 创建对象添加数据
                history_info_obj = history_recommend()
                history_info_obj.user_id = now_user
                history_info_obj.loupan_id = all_loupan[i]
                history_info_obj.save()
            # 进行用户行为保存
            if request.COOKIES["islogin"] == "True":
                print("用户行为保存")
                user_obj = user.objects.get(id=request.COOKIES["user_id"])
                # 创建user_actions 对象
                user_action = user_actions.objects.filter(user_id=user_obj, loupan_id=all_loupan[i])
                if len(user_action) != 0:
                    # 将click_num +1
                    user_action[0].click_num = user_action[0].click_num + 1
                    user_action[0].collection_num = user_action[0].collection_num + 2
                    user_action[0].save()
                else:
                    user_action = user_actions()
                    user_action.user_id = user_obj
                    user_action.loupan_id = all_loupan[i]
                    user_action.click_num = 1
                    user_action.collection_num = 2
                    user_action.save()

    #将推荐的对象转成json格式
    if len(tuijian_obj)==0:
        #表示推荐列表为空
        return JsonResponse({'res':1})
    else :
        return  JsonResponse(data_to_json(tuijian_obj))

