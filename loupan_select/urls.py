from django.conf.urls import include, url
from django.contrib import admin
from loupan_select import views

urlpatterns = [
    url(r'^loupan_public/(\d+)',views.loupan_public),  # 楼盘周边设施查询
    url(r'^all_loupan_informations$',views.loupan_information), #所有楼盘信息
    url(r'^loupan_detail/(\d+)',views.loupan_detail), #显示某个楼盘的信息
    url(r'^houseinfo$',views.houseinfo), #楼盘信息详情页面
    url(r'^query_condition$',views.query_condition), #条件查询页面展示
    url(r'^query_simple$',views.query_simple),# 简单查询页面展示
    url(r'^query_public$',views.query_public),#公共设施查询
]
