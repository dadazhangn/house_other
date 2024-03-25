from django.apps import AppConfig


class DataCountConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'data_count'
    verbose_name = '后台数据管理'  # 设置该属性


