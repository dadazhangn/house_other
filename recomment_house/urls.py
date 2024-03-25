from django.conf.urls import include, url
from django.contrib import admin
from recomment_house import views

urlpatterns = [
        url(r'^recommend_html$',views.recommend_html),  # 显示房源推荐页面
        url(r'^base_loupan_recommend$',views.base_loupan_recommend),  #基于楼盘的推荐
        url(r'^base_user_recommend$',views.base_user_recommend) , #基于用户的推荐
]
