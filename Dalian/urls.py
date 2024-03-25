"""Dalian URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.8/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""
from sys import path

from django.conf.urls import include, url
from django.contrib import admin
from django.urls import path
# from data_count.urls import *

urlpatterns = [
    path('admin/',admin.site.urls),     #django自带后台管理
    # url(r'^admin/', admin.site.urls),

    url(r'',include("data_count.urls")),  #data_count urls路由
    url(r'',include("loupan_select.urls")),  #data_count urls路由
    url(r'',include("region_resource.urls")) , #region_resource路由
    url(r'',include("user.urls")),  #用户路由
    url(r'',include("compare.urls")) ,# 房源对比路由

    url(r'',include("admin.urls")), #后台管理


    url(r'',include("recomment_house.urls")),  #房源推荐路由
]
