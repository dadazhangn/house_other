from django.conf.urls import include, url
from django.contrib import admin
from user import views

urlpatterns = [
    # url(r'region_informations',views.region_informations) , #区域资源  返回四个区的基本信息  经纬度
    url(r'^login$', views.login_html),  # 登陆页面
    url(r'^login_check$', views.login_check),  # 登陆检测
    url(r'^register$', views.register_html),  # 注册页面
    url(r'^register_check$', views.register_check),  # 注册检测
    url(r'^home_page$',views.home_page),#个人主页
    url(r'^home_page_html$',views.home_page_html),  #个人主页显示
    url(r'^user_add_comment$',views.user_add_comment), #用户增加评论
    url(r'^user_add_collection/(\d+)$',views.user_add_collection),  #用户收藏
    url(r'^delete_comment/(\d+)$',views.delete_comment),#用户删除
    url(r'^alter_user_info$',views.alter_user_info) ,#修改用户信息
    url(r'^alter_password$',views.alter_password),  #修改密码
    url(r'^delete_recommend/(\d+)$',views.delete_recommend) , #删除历史推荐
]
