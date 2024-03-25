from django.shortcuts import render
from django.http import  JsonResponse,HttpResponse,HttpResponseRedirect
# Create your views here.
from  data_count.models import *


#登录装饰器
def login_required(view_func):
    '''登录装饰器'''
    def wrapper(request,*view_args,**view_kwargs):
        islogin = request.COOKIES.get("islogin")
        print(type(islogin))
        if islogin == 'True':
            #用户已登录,调用对应的视图
            print("用户一登陆")
            return view_func(request,*view_args,**view_kwargs)
        else:
            print("用户未登录")
            return HttpResponseRedirect("/login")
    return wrapper


@login_required
def admin_html(request):
    """
    显示后台管理页面
    :param request:
    :return:
    """
    return render(request,"admin/backindex.html")

def user_data_to_json(data):
    """
    将用户数据转换成json
    :param data:
    :return:
    """
    list  =[]
    for i in data:
        dict={}
        dict["id"] = i.id
        dict["username"] = i.username
        dict["password"] = i.password
        dict["signature"] = i.signature
        dict["min_age"] = i.min_age
        dict["max_age"] = i.max_age
        dict["min_estate"] = i.min_estate
        dict["max_estate"] = i.max_estate
        dict["phone_num"] = i.phone_num
        dict["education_background"] = i.education_background
        dict["user_type"] = "普通用户" if i.user_type==0 else "管理员"
        list.append(dict)

    return {"all_user":list}

@login_required
def  show_user(request):
    """
    显示所有用户
    :param request:
    :return:
    """
    #获取所有用户
    all_user = user.objects.all()

    return  JsonResponse(user_data_to_json(all_user))

@login_required
def delete_user(request):
    """
    删除用户
    :param request:
    :return:
    """
    #获取用户id
    user_id = request.POST.get("user_id")
    #获取用户对象
    user_ = user.objects.get(id=user_id)
    #删除用户
    user_.delete()
    #删除成功，返回参数
    return JsonResponse({"res":1})