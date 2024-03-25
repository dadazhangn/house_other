from django.conf.urls import include, url
from django.contrib import admin
from compare import views

urlpatterns = [
   url(r"^compare$",views.compare) , #房源对比页面展示
]
