from django.db import models

# Create your models here.

class dalian_house_price(models.Model):
    """
    大连房价表  2020
    """
    city_name = models.CharField(max_length=25)
    y1 = models.IntegerField()
    y2 = models.IntegerField()
    y3 = models.IntegerField()
    y4 = models.IntegerField()
    y5 = models.IntegerField()
    y6 = models.IntegerField()
    y7 = models.IntegerField()
    y8 = models.IntegerField()
    y9 = models.IntegerField()
    y10 = models.IntegerField()
    y11 = models.IntegerField()
    y12 = models.IntegerField()

    class Meta:
        db_table = "dalian_house_price"

class region_city_price(models.Model):
    """
       大连区域房价表  2020
       """
    region_name = models.CharField(max_length=25)
    y1 = models.IntegerField()
    y2 = models.IntegerField()
    y3 = models.IntegerField()
    y4 = models.IntegerField()
    y5 = models.IntegerField()
    y6 = models.IntegerField()
    y7 = models.IntegerField()
    y8 = models.IntegerField()
    y9 = models.IntegerField()
    y10 = models.IntegerField()
    y11 = models.IntegerField()
    y12 = models.IntegerField()


    class Meta:
        db_table = "region_house_price"

class region_public(models.Model):
    """
    公共设施数量
    """
    region_name = models.CharField(max_length=25)
    school_num = models.IntegerField()
    hospital_num = models.IntegerField()
    government_num = models.IntegerField()
    shopping_mall_num = models.IntegerField()
    station_num = models.IntegerField()
    baidu_lat = models.FloatField(default=0.0)
    baidu_lng = models.FloatField(default=0.0)

    class Meta:
        db_table = "region_public"
        verbose_name_plural = verbose_name = '公共设施数量表'    #设置后台显示的名称

    def __str__(self):
        return self.region_name                       #显示该表的字段


class loupan(models.Model):
    """
    楼盘表
    """
    loupan_name = models.CharField(max_length=20)
    property_type = models.CharField(max_length=20)
    building_type = models.CharField(max_length=20)
    sub_region_id = models.IntegerField()
    address = models.CharField(max_length=20)
    lvhua_rate = models.CharField(max_length=20)
    zhandi_area = models.CharField(max_length=20)
    jianzhu_area = models.CharField(max_length=20)
    car_num = models.CharField(max_length=20)
    cankao_price = models.IntegerField()
    default_image_id = models.CharField(max_length=50)
    housetype_text = models.CharField(max_length=25)
    baidu_lat = models.FloatField(default=0)
    baidu_lng = models.FloatField(default=0)
    sale_title = models.CharField(max_length=20,default="在售")
    price_2020 = models.IntegerField(default=0)
    price_2019 = models.IntegerField(default=0)
    price_2018 = models.IntegerField(default=0)

    class Meta:
        db_table = "loupan"
        verbose_name_plural = verbose_name = '楼盘表'   #设置后台显示的名称

    def __str__(self):
        return self.loupan_name          #显示该表的字段

class loupan_house_type(models.Model):
    """
    楼盘户型表
    """
    loupan_id = models.IntegerField()
    housetype_text = models.CharField(max_length=25)
    chaoxiang = models.CharField(max_length=25)
    house_area = models.CharField(max_length=25)
    default_image = models.CharField(max_length=50)
    detail = models.CharField(max_length=50)
    louceng = models.CharField(max_length=25,default="高层")
    zhuangxiu = models.CharField(max_length=25,default="毛坯房")

    class Meta:
        db_table="loupan_house_type"
        verbose_name_plural = verbose_name = '楼盘户型表'    #设置后台显示的名称

    # def __str__(self):
    #     return self.loupan_id                      #显示该表的字段

class loupan_public_num(models.Model):
    """
    楼盘公共设施表
    """
    loupan_id = models.IntegerField()


    #教育
    youeryuan_num = models.IntegerField()
    xiaoxue_num = models.IntegerField()
    zhongxue_num = models.IntegerField()
    daxue_num = models.IntegerField()

    #医疗
    sanjiayiyuan_num = models.IntegerField()
    yijiyiliao = models.IntegerField()
    erjiyiliao = models.IntegerField()

    #交通
    huochezhan_num = models.IntegerField()
    qichezhan_num = models.IntegerField()
    gaotiezhan_num = models.IntegerField()
    gongjiaozhan_num = models.IntegerField()

    #娱乐
    shichang_num = models.IntegerField()
    shangchangchaoshi_num = models.IntegerField()
    canyin_num = models.IntegerField()
    gongyuan_num = models.IntegerField()

    #总数
    jiaoyu_count = models.IntegerField(default=0)
    yiliao_count = models.IntegerField(default=0)
    jiaotong_count = models.IntegerField(default=0)
    yule_count = models.IntegerField(default=0)


    class Meta:
        db_table = "loupan_public_num"
        verbose_name_plural = verbose_name = '楼盘公共设施表'    #设置后台显示的名称

    # def __str__(self):
    #     return self.loupan_id                         #显示该表的字段


class user(models.Model):
    """
    用户表
    """
    username = models.CharField(max_length=25)
    password = models.CharField(max_length=25)
    signature = models.CharField(max_length=50)
    min_age = models.IntegerField()
    max_age = models.IntegerField()
    min_estate = models.IntegerField()
    max_estate = models.IntegerField()
    phone_num = models.CharField(max_length=20)
    register_time = models.CharField(max_length=20)
    education_background = models.CharField(max_length=20)
    user_type = models.IntegerField()
    is_house = models.IntegerField(default=0)
    is_car = models.IntegerField(default=0)
    is_money = models.IntegerField(default=0)
    is_marry = models.IntegerField(default=0)

    class Meta:
        db_table = "user"
        verbose_name_plural = verbose_name = '用户表'    #设置后台显示的名称

    def __str__(self):
        return self.username                         #显示该表的字段

class collections(models.Model):
    """
    用户收藏
    """
    loupan_id = models.ForeignKey("loupan",on_delete=models.CASCADE)  #定义关联属性  与楼盘表一对多关系
    user_id = models.ForeignKey("user",on_delete=models.CASCADE) #定义关联属性 ，与user表一对多
    collect_time = models.CharField(max_length=20)  #收藏时间


    class Meta:
        db_table = "collections"
        verbose_name_plural = verbose_name = '用户收藏表'    #设置后台显示的名称

    # def __str__(self):
    #     return self.user_id_id                         #显示该表的字段


class comments(models.Model):
    """
    用户评论表
    """
    loupan_id = models.ForeignKey("loupan", on_delete=models.CASCADE)  # 定义关联属性  与楼盘表一对多关系
    user_id = models.ForeignKey("user", on_delete=models.CASCADE)  # 定义关联属性 ，与user表一对多
    comment_text = models.TextField()
    score =  models.IntegerField()   #评分
    comment_time = models.CharField(max_length=50)  #评论时间

    class Meta:
        db_table = "comments"
        verbose_name_plural = verbose_name = '用户评论表'    #设置后台显示的名称

    # def __str__(self):
    #     return self.loupan_name                         #显示该表的字段


class buy_house_condition(models.Model):
    """
    用户购房选址表
    """
    user_id = models.OneToOneField("user",on_delete=models.CASCADE)

    #楼层
    is_diceng =models.IntegerField(default=0)
    is_duoceng = models.IntegerField(default=0)
    is_xiaogaoceng = models.IntegerField(default=0)
    is_gaoceng = models.IntegerField(default=0)
    is_chaogaoceng = models.IntegerField(default=0)

    #绿化率
    lvhua_20_30 = models.IntegerField(default=0)
    lvhua_30_40= models.IntegerField(default=0)
    lvhua_40_45 = models.IntegerField(default=0)
    lvhua_45_50 = models.IntegerField(default=0)

    #户型
    is_pingceng = models.IntegerField(default=0)
    is_cuoceng = models.IntegerField(default=0)
    is_yueshi = models.IntegerField(default=0)
    is_fushi = models.IntegerField(default=0)

    #装修类型
    is_jinzhuangxiu = models.IntegerField(default=0)
    is_jinzhuangxiu = models.IntegerField(default=0)
    is_jinzhuangxiu = models.IntegerField(default=0)

    #周边设施
    is_youeryuan = models.IntegerField(default=0)
    is_xiaoxue  = models.IntegerField(default=0)
    is_zhongxue = models.IntegerField(default=0)
    is_daxue = models.IntegerField(default=0)
    jiaoyu_rate = models.IntegerField(default=0)

    #医疗
    is_sanjia_yiyuan = models.IntegerField(default=0)
    is_yiji = models.IntegerField(default=0)
    is_erji = models.IntegerField(default=0)
    yiliao_rate = models.IntegerField(default=0)

    #交通
    is_huochezhan = models.IntegerField(default=0)
    is_qichezhan = models.IntegerField(default=0)
    is_gaoqiezhan = models.IntegerField(default=0)
    is_gongjiaozhan = models.IntegerField(default=0)
    jiaotong_rate = models.IntegerField(default=0)

    #娱乐设施
    is_shichang = models.IntegerField(default=0)
    is_shangchangchaoshi = models.IntegerField(default=0)
    is_canyin = models.IntegerField(default=0)
    is_gongyuan = models.IntegerField(default=0)
    yule_rate = models.IntegerField(default=0)


    class Meta:
        db_table = "buy_house_condition"
        verbose_name_plural = verbose_name = '用户购房选址表'    #设置后台显示的名称



class user_actions(models.Model):

    """
    用户行为表
    """
    user_id = models.ForeignKey("user",on_delete=models.CASCADE)
    loupan_id = models.ForeignKey("loupan",on_delete=models.CASCADE)

    #点击
    click_num = models.IntegerField(default=0)
    #搜索
    search_num = models.IntegerField(default=0)
    #收藏
    collection_num = models.IntegerField(default=0)
    #评论
    comment_num = models.IntegerField(default=0)


    class Meta:
        db_table = "user_actions"
        verbose_name_plural = verbose_name = '用户行为表'    #设置后台显示的名称

    # def __str__(self):
    #     return self.user_id_id                        #显示该表的字段




class history_recommend(models.Model):
    """
    用户历史推荐表
    """
    user_id = models.ForeignKey("user",models.CASCADE)
    loupan_id = models.ForeignKey("loupan",models.CASCADE)


    class Meta:
        db_table = "history_recommend"
        verbose_name_plural = verbose_name = '用户历史推荐表'    #设置后台显示的名称






