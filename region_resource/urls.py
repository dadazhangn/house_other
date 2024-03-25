from django.conf.urls import include, url
from django.contrib import admin
from region_resource import views

urlpatterns = [
    url(r'^region_informations$',views.region_informations) , #区域资源  返回四个区的基本信息  经纬度
    url(r'^recommendation$',views.recommendation),
    url(r'^resources$',views.resources),
    url(r'region_resource_select$',views.region_resource_select) ,#区位资源查询
]
