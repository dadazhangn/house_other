from django.shortcuts import render

# Create your views here.

def compare(request):
    """

    :param request:
    :return:
    """

    return  render(request,"gp_data/compare.html")
