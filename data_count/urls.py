from django.conf.urls import include, url
from django.contrib import admin
from data_count import views

urlpatterns = [
    url(r'^index$',views.show_index),  #主页显示
    url(r'^main_html$',views.main_index),  # 首页展示数据获取
    url(r'^query_simple$', views.query_simple),  # 首页展示数据获取

]
