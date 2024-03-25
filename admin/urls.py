from django.conf.urls import include, url
from django.contrib import admin
from admin import views


urlpatterns = [
    url(r'^admin_html$',views.admin_html), #展示后台页面
    url(r'^show_user$',views.show_user),  #返回所有用户数据
    url(r'^delete_user$',views.delete_user),  #删除用户
]
