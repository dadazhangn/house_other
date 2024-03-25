/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : house_analysis

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 06/06/2023 21:23:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for all_public
-- ----------------------------
DROP TABLE IF EXISTS `all_public`;
CREATE TABLE `all_public`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `building_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `baidu_lat` float NULL DEFAULT NULL,
  `baidu_lng` float NULL DEFAULT NULL,
  `belong_region` int(0) NULL DEFAULT NULL,
  `belong_public_type` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3459 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of all_public
-- ----------------------------
INSERT INTO `all_public` VALUES (2242, '大连嘉汇·阳光学校', 38.8738, 121.635, 0, 0);
INSERT INTO `all_public` VALUES (2243, '中山区青泥洼桥小学', 38.9228, 121.648, 0, 0);
INSERT INTO `all_public` VALUES (2244, '大连市第三十九中学', 38.9205, 121.666, 0, 0);
INSERT INTO `all_public` VALUES (2245, '大连市第九中学', 38.9168, 121.647, 0, 0);
INSERT INTO `all_public` VALUES (2246, '东港第一小学', 38.9211, 121.692, 0, 0);
INSERT INTO `all_public` VALUES (2247, '中山区民生小学', 38.9333, 121.651, 0, 0);
INSERT INTO `all_public` VALUES (2248, '大连市第四十四中学', 38.8812, 121.653, 0, 0);
INSERT INTO `all_public` VALUES (2249, '大连市第二中学', 38.9069, 121.65, 0, 0);
INSERT INTO `all_public` VALUES (2250, '大连市第二十四中学', 38.9156, 121.646, 0, 0);
INSERT INTO `all_public` VALUES (2251, '舰艇学院', 38.8843, 121.678, 0, 0);
INSERT INTO `all_public` VALUES (2252, '大连市第十五中学', 38.8805, 121.65, 0, 0);
INSERT INTO `all_public` VALUES (2253, '东港第三小学', 38.9201, 121.714, 0, 0);
INSERT INTO `all_public` VALUES (2254, '大连市第三十五中学', 38.9233, 121.68, 0, 0);
INSERT INTO `all_public` VALUES (2255, '秀月小学', 38.8866, 121.665, 0, 0);
INSERT INTO `all_public` VALUES (2256, '大连市第十六中学', 38.9264, 121.654, 0, 0);
INSERT INTO `all_public` VALUES (2257, '中山区中心小学', 38.9238, 121.65, 0, 0);
INSERT INTO `all_public` VALUES (2258, '大连市第三十三中学', 38.9311, 121.653, 0, 0);
INSERT INTO `all_public` VALUES (2259, '大连市第四十二中学', 38.8984, 121.652, 0, 0);
INSERT INTO `all_public` VALUES (2260, '嘉汇二中', 38.9002, 121.69, 0, 0);
INSERT INTO `all_public` VALUES (2261, '大连市第四十中学', 38.9003, 121.682, 0, 0);
INSERT INTO `all_public` VALUES (2262, '嘉得英语学校', 38.907, 121.652, 0, 0);
INSERT INTO `all_public` VALUES (2263, '优米美术学校(桃源店)', 38.8903, 121.66, 0, 0);
INSERT INTO `all_public` VALUES (2264, '大连明星小学', 38.9028, 121.66, 0, 0);
INSERT INTO `all_public` VALUES (2265, '大连市培根学校', 38.881, 121.648, 0, 0);
INSERT INTO `all_public` VALUES (2266, '中山区山屏小学', 38.9104, 121.689, 0, 0);
INSERT INTO `all_public` VALUES (2267, '春德小学', 38.9241, 121.678, 0, 0);
INSERT INTO `all_public` VALUES (2268, '中山区风景小学', 38.9209, 121.667, 0, 0);
INSERT INTO `all_public` VALUES (2269, '大连中山高级中学', 38.9293, 121.644, 0, 0);
INSERT INTO `all_public` VALUES (2270, '中山区桃源小学', 38.89, 121.659, 0, 0);
INSERT INTO `all_public` VALUES (2271, '大连市中山区解放小学', 38.9165, 121.655, 0, 0);
INSERT INTO `all_public` VALUES (2272, '大连市中山区实验学校', 38.9175, 121.65, 0, 0);
INSERT INTO `all_public` VALUES (2273, '大连交通技师学院培训处', 38.9049, 121.68, 0, 0);
INSERT INTO `all_public` VALUES (2274, '嘉汇中学', 38.9268, 121.672, 0, 0);
INSERT INTO `all_public` VALUES (2275, '大连市卫生学校-西楼', 38.9272, 121.656, 0, 0);
INSERT INTO `all_public` VALUES (2276, '中山区向阳小学', 38.9086, 121.648, 0, 0);
INSERT INTO `all_public` VALUES (2277, '大连市中山区青云小学', 38.9006, 121.652, 0, 0);
INSERT INTO `all_public` VALUES (2278, '三八小学', 38.9259, 121.669, 0, 0);
INSERT INTO `all_public` VALUES (2279, '西岗区建设小学', 38.9267, 121.635, 0, 0);
INSERT INTO `all_public` VALUES (2280, '大连市中山区培智学校', 38.9022, 121.657, 0, 0);
INSERT INTO `all_public` VALUES (2281, '大连市中山区实验学校(小学部)', 38.9171, 121.649, 0, 0);
INSERT INTO `all_public` VALUES (2282, '大连市机械工业职业技术学校', 38.9268, 121.665, 0, 0);
INSERT INTO `all_public` VALUES (2283, '智星少年学校', 38.9233, 121.65, 0, 0);
INSERT INTO `all_public` VALUES (2284, '中山区中南路小学', 38.9099, 121.676, 0, 0);
INSERT INTO `all_public` VALUES (2285, '东港第二小学', 38.9277, 121.69, 0, 0);
INSERT INTO `all_public` VALUES (2286, '大连市中山区虎滩小学', 38.8847, 121.694, 0, 0);
INSERT INTO `all_public` VALUES (2287, '中山区葵英小学', 38.9029, 121.654, 0, 0);
INSERT INTO `all_public` VALUES (2288, '朴新教育科苑学校(三八广场校区)', 38.9257, 121.662, 0, 0);
INSERT INTO `all_public` VALUES (2289, '大连中山少儿才艺中心', 38.922, 121.658, 0, 0);
INSERT INTO `all_public` VALUES (2290, '大连百学文化艺术培训学校', 38.9161, 121.648, 0, 0);
INSERT INTO `all_public` VALUES (2291, '朴新同芳学校(秀月街校区)', 38.8884, 121.665, 0, 0);
INSERT INTO `all_public` VALUES (2292, '大连市汽车技术职业培训学校', 38.9048, 121.681, 0, 0);
INSERT INTO `all_public` VALUES (2293, '大连市中山区鸿珀文化艺术培训学校', 38.9245, 121.686, 0, 0);
INSERT INTO `all_public` VALUES (2294, '如是学校', 38.8998, 121.653, 0, 0);
INSERT INTO `all_public` VALUES (2295, '大连市姝雅职业培训学校', 38.9301, 121.647, 0, 0);
INSERT INTO `all_public` VALUES (2296, '大连艺苗艺术培训学校', 38.9231, 121.647, 0, 0);
INSERT INTO `all_public` VALUES (2297, '青联外语学校', 38.9237, 121.64, 0, 0);
INSERT INTO `all_public` VALUES (2298, '智星教育培训学校(三八广场分校)', 38.9244, 121.664, 0, 0);
INSERT INTO `all_public` VALUES (2299, '大连大学中山临床学院', 38.9219, 121.654, 0, 0);
INSERT INTO `all_public` VALUES (2300, '大连中山麦考儿英语培训学校', 38.9219, 121.647, 0, 0);
INSERT INTO `all_public` VALUES (2301, '大连华翎舞蹈培训学校(中山老店)', 38.9257, 121.662, 0, 0);
INSERT INTO `all_public` VALUES (2302, '大连交通技师学院二区', 38.9051, 121.68, 0, 0);
INSERT INTO `all_public` VALUES (2303, '爱乐艺术学校(虎滩校区)', 38.8942, 121.692, 0, 0);
INSERT INTO `all_public` VALUES (2304, '俐慧美术学校(青泥洼桥总部)', 38.9256, 121.64, 0, 0);
INSERT INTO `all_public` VALUES (2305, '博希教育培训学校', 38.9213, 121.689, 0, 0);
INSERT INTO `all_public` VALUES (2306, '大连中山诚嘉教育培训学校', 38.9301, 121.681, 0, 0);
INSERT INTO `all_public` VALUES (2307, '大连大学职业技术学院(东院)', 38.9259, 121.657, 0, 0);
INSERT INTO `all_public` VALUES (2308, '嘉汇培训学校(二七分校)', 38.9271, 121.672, 0, 0);
INSERT INTO `all_public` VALUES (2309, '大连兰克少儿舞蹈学校', 38.9283, 121.648, 0, 0);
INSERT INTO `all_public` VALUES (2310, '大连交通技师学院实训中心', 38.9048, 121.681, 0, 0);
INSERT INTO `all_public` VALUES (2311, '大连古文化茶艺职业培训学校', 38.9114, 121.675, 0, 0);
INSERT INTO `all_public` VALUES (2312, '大连文博科技文化培训学校', 38.9284, 121.646, 0, 0);
INSERT INTO `all_public` VALUES (2313, '博生源学校', 38.9237, 121.64, 0, 0);
INSERT INTO `all_public` VALUES (2314, '金歌文化艺术学校', 38.9219, 121.647, 0, 0);
INSERT INTO `all_public` VALUES (2315, '航远学校', 38.9321, 121.657, 0, 0);
INSERT INTO `all_public` VALUES (2316, '阿斯顿未来英语培训学校(中山广场校区)', 38.9257, 121.662, 0, 0);
INSERT INTO `all_public` VALUES (2317, '墨鹤练字学校', 38.9267, 121.661, 0, 0);
INSERT INTO `all_public` VALUES (2318, '大连市第16中学教务处', 38.9264, 121.654, 0, 0);
INSERT INTO `all_public` VALUES (2319, '大连市第二中学-新楼', 38.9072, 121.651, 0, 0);
INSERT INTO `all_public` VALUES (2320, '鸣华教育学校', 38.9301, 121.647, 0, 0);
INSERT INTO `all_public` VALUES (2321, '博希培训学校', 38.9218, 121.694, 0, 0);
INSERT INTO `all_public` VALUES (2322, '新美商学院', 38.93, 121.646, 0, 0);
INSERT INTO `all_public` VALUES (2323, '仁和会计培训(大连中山校区)', 38.9256, 121.662, 0, 0);
INSERT INTO `all_public` VALUES (2324, '大连市电子信息职业高级中学', 38.9027, 121.687, 0, 0);
INSERT INTO `all_public` VALUES (2325, '9中学区', 38.9232, 121.653, 0, 0);
INSERT INTO `all_public` VALUES (2326, '大连鸿鑫驾驶员培训学校', 38.9326, 121.647, 0, 0);
INSERT INTO `all_public` VALUES (2327, '辽宁中医药大学大连国际医药教育学院分院', 38.9271, 121.657, 0, 0);
INSERT INTO `all_public` VALUES (2328, '大连九拍现代音乐教育(巾帼大厦分校)', 38.9206, 121.653, 0, 0);
INSERT INTO `all_public` VALUES (2329, '平海石教育', 38.9245, 121.643, 0, 0);
INSERT INTO `all_public` VALUES (2330, '天禾童画少儿美术', 38.9234, 121.663, 0, 0);
INSERT INTO `all_public` VALUES (2331, '大连大学护理学院宿舍楼', 38.9274, 121.656, 0, 0);
INSERT INTO `all_public` VALUES (2332, '大连大学附属中山医院', 38.923, 121.655, 0, 1);
INSERT INTO `all_public` VALUES (2333, '大连市友谊医院', 38.9275, 121.664, 0, 1);
INSERT INTO `all_public` VALUES (2334, '大连市中医医院', 38.908, 121.65, 0, 1);
INSERT INTO `all_public` VALUES (2335, '中山区人民医院', 38.9023, 121.655, 0, 1);
INSERT INTO `all_public` VALUES (2336, '大连港医院', 38.9141, 121.674, 0, 1);
INSERT INTO `all_public` VALUES (2337, '大连造船厂职工医院', 38.9301, 121.644, 0, 1);
INSERT INTO `all_public` VALUES (2338, '大连协和中西医结合医院', 38.9232, 121.685, 0, 1);
INSERT INTO `all_public` VALUES (2339, '武警辽宁总队大连医院', 38.8906, 121.675, 0, 1);
INSERT INTO `all_public` VALUES (2340, '大连市友谊医院-门诊综合楼', 38.9261, 121.663, 0, 1);
INSERT INTO `all_public` VALUES (2341, '中山区妇幼保健所', 38.8979, 121.656, 0, 1);
INSERT INTO `all_public` VALUES (2342, '大连民主护理院', 38.9319, 121.654, 0, 1);
INSERT INTO `all_public` VALUES (2343, '奉泰医院', 38.8812, 121.655, 0, 1);
INSERT INTO `all_public` VALUES (2344, '大连恒生堂中医院', 38.8975, 121.684, 0, 1);
INSERT INTO `all_public` VALUES (2345, '人民路社区医院', 38.929, 121.665, 0, 1);
INSERT INTO `all_public` VALUES (2346, '大连市友谊医院住院部-6号楼', 38.928, 121.664, 0, 1);
INSERT INTO `all_public` VALUES (2347, '大连拜博口腔医院', 38.9217, 121.647, 0, 1);
INSERT INTO `all_public` VALUES (2348, '中山区青泥洼桥社区卫生中心', 38.9247, 121.646, 0, 1);
INSERT INTO `all_public` VALUES (2349, '大连中山昆明社区卫生服务中心预防保健部', 38.9131, 121.648, 0, 1);
INSERT INTO `all_public` VALUES (2350, '九铭医疗整形', 38.9068, 121.652, 0, 1);
INSERT INTO `all_public` VALUES (2351, '龙华中医医院', 38.89, 121.661, 0, 1);
INSERT INTO `all_public` VALUES (2352, '大连天津街肛泰肛肠医院', 38.9305, 121.652, 0, 1);
INSERT INTO `all_public` VALUES (2353, '大连馥龙堂中医院', 38.9184, 121.646, 0, 1);
INSERT INTO `all_public` VALUES (2354, '芳华医疗美容整形', 38.9365, 121.664, 0, 1);
INSERT INTO `all_public` VALUES (2355, '大连医科大学附属第一医院对口援建医院', 38.8906, 121.675, 0, 1);
INSERT INTO `all_public` VALUES (2356, '大连市友谊医院住院部-2号楼', 38.9276, 121.664, 0, 1);
INSERT INTO `all_public` VALUES (2357, '大连八七医院', 38.8952, 121.655, 0, 1);
INSERT INTO `all_public` VALUES (2358, '大连市友谊医院-5号楼', 38.928, 121.663, 0, 1);
INSERT INTO `all_public` VALUES (2359, '大连市友谊医院-3号楼', 38.9278, 121.664, 0, 1);
INSERT INTO `all_public` VALUES (2360, '大连中山老虎滩社区卫生服务中心预防保健部', 38.9041, 121.681, 0, 1);
INSERT INTO `all_public` VALUES (2361, '达美元辰医疗美容', 38.9316, 121.662, 0, 1);
INSERT INTO `all_public` VALUES (2362, '大连北方老年病医院', 38.8926, 121.657, 0, 1);
INSERT INTO `all_public` VALUES (2363, '大连市友谊医院住院部-1号楼', 38.9274, 121.664, 0, 1);
INSERT INTO `all_public` VALUES (2364, '爱普医疗美容', 38.9319, 121.682, 0, 1);
INSERT INTO `all_public` VALUES (2365, '大连市友谊医院大连市红十字医院住院结算处', 38.928, 121.663, 0, 1);
INSERT INTO `all_public` VALUES (2366, '大连市中医医院-2号楼', 38.9078, 121.65, 0, 1);
INSERT INTO `all_public` VALUES (2367, '大连市友谊医院住院部-5号楼', 38.928, 121.663, 0, 1);
INSERT INTO `all_public` VALUES (2368, '大连市中医医院-1号楼', 38.9077, 121.65, 0, 1);
INSERT INTO `all_public` VALUES (2369, '大连市中医医院-3号楼', 38.9085, 121.65, 0, 1);
INSERT INTO `all_public` VALUES (2370, '绚素医疗美容', 38.9043, 121.652, 0, 1);
INSERT INTO `all_public` VALUES (2371, '大连市中医医院机关楼', 38.908, 121.65, 0, 1);
INSERT INTO `all_public` VALUES (2372, '崴也娜医疗美容', 38.9268, 121.705, 0, 1);
INSERT INTO `all_public` VALUES (2373, '锐鹰眼科', 38.9172, 121.649, 0, 1);
INSERT INTO `all_public` VALUES (2374, '老虎滩社区卫生服务中心', 38.9041, 121.681, 0, 1);
INSERT INTO `all_public` VALUES (2375, '大连付家庄医院', 38.8785, 121.639, 0, 1);
INSERT INTO `all_public` VALUES (2376, '大连市口腔医院(昆明街门诊)', 38.9219, 121.649, 0, 1);
INSERT INTO `all_public` VALUES (2377, '桂林社区卫生服务中心', 38.9177, 121.664, 0, 1);
INSERT INTO `all_public` VALUES (2378, '青泥洼桥街道社区卫生服务中心(明泽预防保健站)', 38.9275, 121.667, 0, 1);
INSERT INTO `all_public` VALUES (2379, '新柳社区卫生服务站', 38.9263, 121.674, 0, 1);
INSERT INTO `all_public` VALUES (2380, '桂林社区柳林卫生服务站', 38.9216, 121.652, 0, 1);
INSERT INTO `all_public` VALUES (2381, '大连德莱茵医疗美容', 38.9225, 121.687, 0, 1);
INSERT INTO `all_public` VALUES (2382, '好中一国医(国药馆)', 38.9262, 121.673, 0, 1);
INSERT INTO `all_public` VALUES (2383, '陈氏中医皮肤病专科', 38.9051, 121.687, 0, 1);
INSERT INTO `all_public` VALUES (2384, '友谊医院综合医疗保健区-1号楼', 38.9274, 121.664, 0, 1);
INSERT INTO `all_public` VALUES (2385, '大连时代购物广场', 38.9302, 121.657, 0, 2);
INSERT INTO `all_public` VALUES (2386, '柏威年购物中心(大连店)', 38.9238, 121.636, 0, 2);
INSERT INTO `all_public` VALUES (2387, '大连凯丹广场', 38.9297, 121.681, 0, 2);
INSERT INTO `all_public` VALUES (2388, '麦凯乐(大连总店)', 38.922, 121.642, 0, 2);
INSERT INTO `all_public` VALUES (2389, '新玛特购物休闲广场(友好街店)', 38.9226, 121.641, 0, 2);
INSERT INTO `all_public` VALUES (2390, '友谊商城(人民路店)', 38.9287, 121.652, 0, 2);
INSERT INTO `all_public` VALUES (2391, '胜利购物广场', 38.9256, 121.642, 0, 2);
INSERT INTO `all_public` VALUES (2392, '百年城', 38.922, 121.643, 0, 2);
INSERT INTO `all_public` VALUES (2393, '佳兆业广场', 38.928, 121.644, 0, 2);
INSERT INTO `all_public` VALUES (2394, '大商新玛特超市(中南店)', 38.9, 121.683, 0, 2);
INSERT INTO `all_public` VALUES (2395, '三八商城', 38.9273, 121.661, 0, 2);
INSERT INTO `all_public` VALUES (2396, '天和广场', 38.9296, 121.647, 0, 2);
INSERT INTO `all_public` VALUES (2397, '大商集团二七贸易大世界', 38.9278, 121.672, 0, 2);
INSERT INTO `all_public` VALUES (2398, '大都会', 38.9217, 121.645, 0, 2);
INSERT INTO `all_public` VALUES (2399, '名店坊(人民路店)', 38.93, 121.659, 0, 2);
INSERT INTO `all_public` VALUES (2400, '新天百鞋城', 38.9294, 121.647, 0, 2);
INSERT INTO `all_public` VALUES (2401, '中山区一方国际商城', 38.9275, 121.654, 0, 2);
INSERT INTO `all_public` VALUES (2402, '温州城', 38.9273, 121.671, 0, 2);
INSERT INTO `all_public` VALUES (2403, '21库海外工厂店', 38.9371, 121.67, 0, 2);
INSERT INTO `all_public` VALUES (2404, '永大商厦', 38.9278, 121.673, 0, 2);
INSERT INTO `all_public` VALUES (2405, '港汇休闲购物中心', 38.9268, 121.645, 0, 2);
INSERT INTO `all_public` VALUES (2406, '嘉和大厦', 38.9258, 121.661, 0, 2);
INSERT INTO `all_public` VALUES (2407, '天植商城', 38.9303, 121.649, 0, 2);
INSERT INTO `all_public` VALUES (2408, '雅都商厦', 38.9243, 121.644, 0, 2);
INSERT INTO `all_public` VALUES (2409, '中山区l1发中山区二七广场温州城', 38.9273, 121.671, 0, 2);
INSERT INTO `all_public` VALUES (2410, '新天百南楼', 38.9293, 121.647, 0, 2);
INSERT INTO `all_public` VALUES (2411, '利福商厦', 38.9223, 121.639, 0, 2);
INSERT INTO `all_public` VALUES (2412, 'A.M.R(新玛特购物休闲广场店)', 38.922, 121.64, 0, 2);
INSERT INTO `all_public` VALUES (2413, '城市会客厅', 38.9357, 121.662, 0, 2);
INSERT INTO `all_public` VALUES (2414, '长江物流商厦', 38.933, 121.663, 0, 2);
INSERT INTO `all_public` VALUES (2415, '胜利广场-A栋', 38.925, 121.641, 0, 2);
INSERT INTO `all_public` VALUES (2416, '胜利广场-B栋', 38.9254, 121.642, 0, 2);
INSERT INTO `all_public` VALUES (2417, '大连市住房公积金管理中心中山办事处', 38.9225, 121.647, 0, 3);
INSERT INTO `all_public` VALUES (2418, '中山区市民综合服务中心', 38.9246, 121.661, 0, 3);
INSERT INTO `all_public` VALUES (2419, '中山区行政服务中心', 38.9245, 121.661, 0, 3);
INSERT INTO `all_public` VALUES (2420, '中华人民共和国大连海关', 38.9301, 121.678, 0, 3);
INSERT INTO `all_public` VALUES (2421, '国家税务总局大连市中山区税务局', 38.922, 121.675, 0, 3);
INSERT INTO `all_public` VALUES (2422, '大连市中山区人力资源和社会保障局', 38.9264, 121.653, 0, 3);
INSERT INTO `all_public` VALUES (2423, '大连市气象局', 38.915, 121.652, 0, 3);
INSERT INTO `all_public` VALUES (2424, '大连市财政局', 38.9311, 121.646, 0, 3);
INSERT INTO `all_public` VALUES (2425, '大连市政协', 38.9199, 121.653, 0, 3);
INSERT INTO `all_public` VALUES (2426, '大连市司法局', 38.9231, 121.651, 0, 3);
INSERT INTO `all_public` VALUES (2427, '大连市住房公积金管理中心', 38.9225, 121.647, 0, 3);
INSERT INTO `all_public` VALUES (2428, '大连市中山区市场监督管理局', 38.9311, 121.646, 0, 3);
INSERT INTO `all_public` VALUES (2429, '大连市卫生和健康委员会', 38.931, 121.662, 0, 3);
INSERT INTO `all_public` VALUES (2430, '社保中心', 38.9246, 121.661, 0, 3);
INSERT INTO `all_public` VALUES (2431, '大连东港特勤消防站', 38.9242, 121.705, 0, 3);
INSERT INTO `all_public` VALUES (2432, '大连市退役军人事务局', 38.9304, 121.644, 0, 3);
INSERT INTO `all_public` VALUES (2433, '中建八局(工友村)', 38.9298, 121.686, 0, 3);
INSERT INTO `all_public` VALUES (2434, '大连市中山区人大常委会老虎台街道工作委员会', 38.8958, 121.692, 0, 3);
INSERT INTO `all_public` VALUES (2435, '中国共产党大连市中山区老虎滩街道杏花社区总支部委员会', 38.8934, 121.695, 0, 3);
INSERT INTO `all_public` VALUES (2436, '大连市地税局直属局', 38.9272, 121.66, 0, 3);
INSERT INTO `all_public` VALUES (2437, '中山区市场监督管理局东港市场监督管理所', 38.923, 121.688, 0, 3);
INSERT INTO `all_public` VALUES (2438, '大连致远物业管理有限公司卧龙双厦小区办公室', 38.8944, 121.658, 0, 3);
INSERT INTO `all_public` VALUES (2439, '大连市节约用水办公室', 38.929, 121.671, 0, 3);
INSERT INTO `all_public` VALUES (2440, '中国建筑一局集团承建大连港湾街二号地块改造项目', 38.9318, 121.669, 0, 3);
INSERT INTO `all_public` VALUES (2441, '大连市龙狮锣鼓秧歌民乐委员会', 38.9213, 121.673, 0, 3);
INSERT INTO `all_public` VALUES (2442, '中国共产党大连市中山区葵英街道光华社区总支部委员会', 38.8989, 121.656, 0, 3);
INSERT INTO `all_public` VALUES (2443, '贵州省政府驻大连办', 38.9192, 121.666, 0, 3);
INSERT INTO `all_public` VALUES (2444, '团体中心', 38.9295, 121.655, 0, 3);
INSERT INTO `all_public` VALUES (2445, '大连港集团大连港引航站', 38.9329, 121.665, 0, 3);
INSERT INTO `all_public` VALUES (2446, '中山区人大常委会葵英街道工作委员会', 38.9185, 121.647, 0, 3);
INSERT INTO `all_public` VALUES (2447, '中国共产党大连中山区桃源街道工作委员会', 38.8939, 121.66, 0, 3);
INSERT INTO `all_public` VALUES (2448, '大连市妇女创就业指导服务中心', 38.9209, 121.653, 0, 3);
INSERT INTO `all_public` VALUES (2449, '中国共产党大连市中山区青泥洼桥街道望海社区总支委员会', 38.9179, 121.662, 0, 3);
INSERT INTO `all_public` VALUES (2450, '大连市中山区桃源街道劳动人事争议调解中心', 38.8942, 121.66, 0, 3);
INSERT INTO `all_public` VALUES (2451, '中山区法律援助中心驻人民法院工作站', 38.93, 121.654, 0, 3);
INSERT INTO `all_public` VALUES (2452, '大连市委办公厅机关事务服务中心', 38.9254, 121.672, 0, 3);
INSERT INTO `all_public` VALUES (2453, '信息化管理处', 38.9166, 121.648, 0, 3);
INSERT INTO `all_public` VALUES (2454, '大连市打假办公室', 38.9269, 121.661, 0, 3);
INSERT INTO `all_public` VALUES (2455, '大连市民办教育协会常务理事单位', 38.9271, 121.657, 0, 3);
INSERT INTO `all_public` VALUES (2456, '王楠公益助残之家', 38.9303, 121.663, 0, 3);
INSERT INTO `all_public` VALUES (2457, '石大姐调解工作室', 38.9298, 121.663, 0, 3);
INSERT INTO `all_public` VALUES (2458, '运达集团技术管理中心', 38.9302, 121.674, 0, 3);
INSERT INTO `all_public` VALUES (2459, '鸡西矿务局', 38.9294, 121.643, 0, 3);
INSERT INTO `all_public` VALUES (2460, '大连市中山区社区卫生保障中心', 38.8995, 121.654, 0, 3);
INSERT INTO `all_public` VALUES (2461, '大连市工作落实年活动领导小组办公室', 38.9215, 121.672, 0, 3);
INSERT INTO `all_public` VALUES (2462, '网络拍卖服务中心', 38.929, 121.667, 0, 3);
INSERT INTO `all_public` VALUES (2463, '大连市美发美容行业价格监督站', 38.9277, 121.647, 0, 3);
INSERT INTO `all_public` VALUES (2464, '大连市房租征收办公室', 38.9273, 121.668, 0, 3);
INSERT INTO `all_public` VALUES (2465, '中建三局', 38.9303, 121.674, 0, 3);
INSERT INTO `all_public` VALUES (2466, '青泥洼桥街道综合治理工作中心', 38.9235, 121.663, 0, 3);
INSERT INTO `all_public` VALUES (2467, '大连市中山区青泥洼桥街道民防办公室', 38.9236, 121.663, 0, 3);
INSERT INTO `all_public` VALUES (2468, '大连市中山区卫生和计划生育药具管理站', 38.8979, 121.656, 0, 3);
INSERT INTO `all_public` VALUES (2469, '中山区葵英街道豪森茗家小区综治工作服务站', 38.9071, 121.654, 0, 3);
INSERT INTO `all_public` VALUES (2470, '大连市中山区东港推进办公室', 38.93, 121.674, 0, 3);
INSERT INTO `all_public` VALUES (2471, '大连市中山区慈善总会人民路街道慈善办公室', 38.9289, 121.665, 0, 3);
INSERT INTO `all_public` VALUES (2472, '市场管理所', 38.9288, 121.653, 0, 3);
INSERT INTO `all_public` VALUES (2473, '中山区人民路街道社会管理服务中心', 38.9299, 121.662, 0, 3);
INSERT INTO `all_public` VALUES (2474, '杏花社区保险服务站', 38.8936, 121.695, 0, 3);
INSERT INTO `all_public` VALUES (2475, '大连市中山区渔政管理所', 38.8918, 121.693, 0, 3);
INSERT INTO `all_public` VALUES (2476, '葵英街道反邪教分会石葵社区工作小组', 38.9049, 121.647, 0, 3);
INSERT INTO `all_public` VALUES (2477, '大连市中山区人民政府督学室', 38.9167, 121.647, 0, 3);
INSERT INTO `all_public` VALUES (2478, '脑一办公室', 38.908, 121.65, 0, 3);
INSERT INTO `all_public` VALUES (2479, '桃源社区人防工作站', 38.892, 121.662, 0, 3);
INSERT INTO `all_public` VALUES (2480, '中山区人民路街道社会矛盾综合调处服务中心', 38.9299, 121.663, 0, 3);
INSERT INTO `all_public` VALUES (2481, '物管办公室(大连中山医院)', 38.9215, 121.655, 0, 3);
INSERT INTO `all_public` VALUES (2482, '大连市地方志办公室', 38.9128, 121.675, 0, 3);
INSERT INTO `all_public` VALUES (2483, '中信产业基金', 38.9297, 121.655, 0, 3);
INSERT INTO `all_public` VALUES (2484, '青泥洼桥派出所双合社区警务室矛盾纠纷调解室', 38.9246, 121.646, 0, 3);
INSERT INTO `all_public` VALUES (2485, '大连新韩物业项目部监督管理处', 38.9298, 121.649, 0, 3);
INSERT INTO `all_public` VALUES (2486, '大连市中山区海军广场街道志愿服务工作总站', 38.9261, 121.676, 0, 3);
INSERT INTO `all_public` VALUES (2487, '大连市中外经济技术交流协会项目中心', 38.9304, 121.648, 0, 3);
INSERT INTO `all_public` VALUES (2488, '大连市中山区政府信息查阅点', 38.9279, 121.667, 0, 3);
INSERT INTO `all_public` VALUES (2489, '大连市城市管理行政执法局一分局青泥洼桥街道执法大队', 38.9236, 121.663, 0, 3);
INSERT INTO `all_public` VALUES (2490, '大连市旅游局', 38.9309, 121.662, 0, 3);
INSERT INTO `all_public` VALUES (2491, '青泥洼桥派出所流动人口管理服务站', 38.923, 121.645, 0, 3);
INSERT INTO `all_public` VALUES (2492, '葵英街道综合治理中心', 38.9194, 121.649, 0, 3);
INSERT INTO `all_public` VALUES (2493, '中山区志愿服务工作总站', 38.91, 121.668, 0, 3);
INSERT INTO `all_public` VALUES (2494, '中山区青泥洼桥街道湖畔社区劳动监察工作站', 38.9225, 121.664, 0, 3);
INSERT INTO `all_public` VALUES (2495, '今今乐道读书会大连分会(魔方loft咖啡书院)', 38.9357, 121.671, 0, 3);
INSERT INTO `all_public` VALUES (2496, '中山区人民路街道党群服务中心', 38.9288, 121.665, 0, 3);
INSERT INTO `all_public` VALUES (2497, '大连朝阳海港公寓物业产权人委员会', 38.9212, 121.669, 0, 3);
INSERT INTO `all_public` VALUES (2498, '中山区打假办公室', 38.902, 121.684, 0, 3);
INSERT INTO `all_public` VALUES (2499, '杏花社区劳动保障工作站', 38.8936, 121.695, 0, 3);
INSERT INTO `all_public` VALUES (2500, '中山区葵英街道林海社区民情诉求站', 38.9099, 121.668, 0, 3);
INSERT INTO `all_public` VALUES (2501, '辽宁海事局人事教育处', 38.9329, 121.664, 0, 3);
INSERT INTO `all_public` VALUES (2502, '大连市中山区人民防空办公室', 38.9146, 121.683, 0, 3);
INSERT INTO `all_public` VALUES (2503, '中山区葵英街道劳动监察中队', 38.9184, 121.647, 0, 3);
INSERT INTO `all_public` VALUES (2504, '辽宁渔业船舶检验局中山检验站', 38.8977, 121.656, 0, 3);
INSERT INTO `all_public` VALUES (2505, '大连市中山区现行文件服务中心', 38.923, 121.652, 0, 3);
INSERT INTO `all_public` VALUES (2506, '中山区慈善总会平安社区慈善工作站', 38.9119, 121.684, 0, 3);
INSERT INTO `all_public` VALUES (2507, '大连海运交通卫生监督所', 38.9307, 121.655, 0, 3);
INSERT INTO `all_public` VALUES (2508, '桂林街派出所', 38.9246, 121.665, 0, 3);
INSERT INTO `all_public` VALUES (2509, '大连市中山区人民法院', 38.9303, 121.654, 0, 3);
INSERT INTO `all_public` VALUES (2510, '大连市人民路派出所', 38.93, 121.661, 0, 3);
INSERT INTO `all_public` VALUES (2511, '大连市公安局交警支队西岗大队', 38.8803, 121.64, 0, 3);
INSERT INTO `all_public` VALUES (2512, '大连海事法院', 38.9256, 121.682, 0, 3);
INSERT INTO `all_public` VALUES (2513, '大连市葵英街派出所', 38.9067, 121.654, 0, 3);
INSERT INTO `all_public` VALUES (2514, '大连市公安局中山分局出入境管理大队', 38.925, 121.705, 0, 3);
INSERT INTO `all_public` VALUES (2515, '桃源街派出所', 38.8922, 121.662, 0, 3);
INSERT INTO `all_public` VALUES (2516, '春海街派出所', 38.925, 121.705, 0, 3);
INSERT INTO `all_public` VALUES (2517, '中山公安局', 38.9309, 121.655, 0, 3);
INSERT INTO `all_public` VALUES (2518, '大连市中山区公证处', 38.923, 121.652, 0, 3);
INSERT INTO `all_public` VALUES (2519, '海军广场派出所', 38.9234, 121.674, 0, 3);
INSERT INTO `all_public` VALUES (2520, '秀月街派出所', 38.8872, 121.678, 0, 3);
INSERT INTO `all_public` VALUES (2521, '大连市公安局中山分局东港派出所', 38.925, 121.705, 0, 3);
INSERT INTO `all_public` VALUES (2522, '海关总署党校大连校区', 38.8921, 121.717, 0, 3);
INSERT INTO `all_public` VALUES (2523, '大连市大港派出所', 38.9424, 121.667, 0, 3);
INSERT INTO `all_public` VALUES (2524, '中山区人民路街道海港社区居民委员会', 38.9364, 121.663, 0, 3);
INSERT INTO `all_public` VALUES (2525, '大连港公安局交警大队大港中队', 38.9426, 121.666, 0, 3);
INSERT INTO `all_public` VALUES (2526, '中南路派出所迎宾社区警务室', 38.9098, 121.685, 0, 3);
INSERT INTO `all_public` VALUES (2527, '大连铁路运输检察院反贪污贿赂局', 38.9254, 121.656, 0, 3);
INSERT INTO `all_public` VALUES (2528, '大连市中山区老虎滩街道总工会', 38.8958, 121.692, 0, 3);
INSERT INTO `all_public` VALUES (2529, '大连市公安局中山分局刑侦大队第一中队', 38.9293, 121.643, 0, 3);
INSERT INTO `all_public` VALUES (2530, '大连市公安局中山分局校园警务工作站', 38.9251, 121.682, 0, 3);
INSERT INTO `all_public` VALUES (2531, '大连市中山区人民检察院反渎职侵权局', 38.9294, 121.672, 0, 3);
INSERT INTO `all_public` VALUES (2532, '审判法庭', 38.9302, 121.654, 0, 3);
INSERT INTO `all_public` VALUES (2533, '大连市中山区人民法院民事第四合议庭', 38.9303, 121.654, 0, 3);
INSERT INTO `all_public` VALUES (2534, '大连市中山区价格认证中心', 38.9039, 121.654, 0, 3);
INSERT INTO `all_public` VALUES (2535, '老虎滩街道社会治安综合治理工作中心', 38.8954, 121.692, 0, 3);
INSERT INTO `all_public` VALUES (2536, '大连市中山区葵花小区物业产权人委员会', 38.9096, 121.652, 0, 3);
INSERT INTO `all_public` VALUES (2537, '希望区部', 38.9299, 121.675, 0, 3);
INSERT INTO `all_public` VALUES (2538, '景和公寓', 38.9135, 121.652, 0, 3);
INSERT INTO `all_public` VALUES (2539, '大连市中山区慈善总会老虎滩街道慈善办公室', 38.8954, 121.692, 0, 3);
INSERT INTO `all_public` VALUES (2540, '中心警务室', 38.9096, 121.689, 0, 3);
INSERT INTO `all_public` VALUES (2541, '大连市公安局中山分局校园警务工作站(虎滩路)', 38.8999, 121.691, 0, 3);
INSERT INTO `all_public` VALUES (2542, '中山区反邪教协会青泥洼桥街道分会', 38.9236, 121.663, 0, 3);
INSERT INTO `all_public` VALUES (2543, '大连市公安局中山分局情报中队', 38.9309, 121.656, 0, 3);
INSERT INTO `all_public` VALUES (2544, '大连市中山区人民检察院司法警察大队', 38.9293, 121.672, 0, 3);
INSERT INTO `all_public` VALUES (2545, '大连慈善基金会', 38.9273, 121.652, 0, 3);
INSERT INTO `all_public` VALUES (2546, '大连市公安局桃源街蓝鲨机动队', 38.8925, 121.659, 0, 3);
INSERT INTO `all_public` VALUES (2547, '葵英街道派出所林海社区中心警务室', 38.91, 121.668, 0, 3);
INSERT INTO `all_public` VALUES (2548, '中山广场应急避难所', 38.9273, 121.651, 0, 3);
INSERT INTO `all_public` VALUES (2549, '大连市西岗区八一小学', 38.8941, 121.653, 1, 0);
INSERT INTO `all_public` VALUES (2550, '大连市西岗区五四路小学', 38.9144, 121.621, 1, 0);
INSERT INTO `all_public` VALUES (2551, '大连市第五中学', 38.9399, 121.598, 1, 0);
INSERT INTO `all_public` VALUES (2552, '大连艺术学校', 38.8951, 121.638, 1, 0);
INSERT INTO `all_public` VALUES (2553, '大连市第七中学', 38.927, 121.616, 1, 0);
INSERT INTO `all_public` VALUES (2554, '大连市西岗区新石路小学', 38.8995, 121.629, 1, 0);
INSERT INTO `all_public` VALUES (2555, '大连市三十七中学', 38.9237, 121.627, 1, 0);
INSERT INTO `all_public` VALUES (2556, '大连市第三十四中学', 38.9148, 121.63, 1, 0);
INSERT INTO `all_public` VALUES (2557, '大连市西岗区水仙小学', 38.911, 121.62, 1, 0);
INSERT INTO `all_public` VALUES (2558, '大连市第三十六中学', 38.9153, 121.633, 1, 0);
INSERT INTO `all_public` VALUES (2559, '大连市西岗区香二小学', 38.9353, 121.603, 1, 0);
INSERT INTO `all_public` VALUES (2560, '大连市第二十六中学', 38.8956, 121.636, 1, 0);
INSERT INTO `all_public` VALUES (2561, '大连市第七十一中学', 38.9346, 121.643, 1, 0);
INSERT INTO `all_public` VALUES (2562, '大连市第一中学', 38.9216, 121.618, 1, 0);
INSERT INTO `all_public` VALUES (2563, '西岗区兆麟小学', 38.9381, 121.645, 1, 0);
INSERT INTO `all_public` VALUES (2564, '大连市实验小学', 38.921, 121.633, 1, 0);
INSERT INTO `all_public` VALUES (2565, '大连市西岗中学', 38.8931, 121.649, 1, 0);
INSERT INTO `all_public` VALUES (2566, '大连市第十二中学', 38.9109, 121.622, 1, 0);
INSERT INTO `all_public` VALUES (2567, '大连市西岗区九三小学', 38.9228, 121.621, 1, 0);
INSERT INTO `all_public` VALUES (2568, '石道街小学', 38.8947, 121.636, 1, 0);
INSERT INTO `all_public` VALUES (2569, '大连市普通高中创新实践学校', 38.9415, 121.6, 1, 0);
INSERT INTO `all_public` VALUES (2570, '大连市西岗区长春路小学', 38.9272, 121.613, 1, 0);
INSERT INTO `all_public` VALUES (2571, '大连教育学院', 38.9117, 121.612, 1, 0);
INSERT INTO `all_public` VALUES (2572, '大连教育学院-西楼', 38.9115, 121.611, 1, 0);
INSERT INTO `all_public` VALUES (2573, '大连交通技师学院', 38.9036, 121.625, 1, 0);
INSERT INTO `all_public` VALUES (2574, '大连市西岗区工人村小学', 38.9393, 121.599, 1, 0);
INSERT INTO `all_public` VALUES (2575, '大连市西岗区日新学校', 38.9261, 121.627, 1, 0);
INSERT INTO `all_public` VALUES (2576, '大连东方实验高级中学', 38.9381, 121.605, 1, 0);
INSERT INTO `all_public` VALUES (2577, '西岗区红岩小学', 38.9147, 121.637, 1, 0);
INSERT INTO `all_public` VALUES (2578, '大连教育学院-附属高级中学', 38.9109, 121.612, 1, 0);
INSERT INTO `all_public` VALUES (2579, '西岗区景润小学', 38.9306, 121.612, 1, 0);
INSERT INTO `all_public` VALUES (2580, '大连市朝鲜族学校', 38.9115, 121.626, 1, 0);
INSERT INTO `all_public` VALUES (2581, '西岗区教师进修学校', 38.9086, 121.613, 1, 0);
INSERT INTO `all_public` VALUES (2582, '大连盲聋学校', 38.9128, 121.609, 1, 0);
INSERT INTO `all_public` VALUES (2583, '天欣机动车驾驶培训学校', 38.936, 121.601, 1, 0);
INSERT INTO `all_public` VALUES (2584, '白云新村小学', 38.904, 121.612, 1, 0);
INSERT INTO `all_public` VALUES (2585, '西岗区教师进修学校附属学校', 38.9069, 121.613, 1, 0);
INSERT INTO `all_public` VALUES (2586, '刘宁钢琴学校(大同街)', 38.9181, 121.615, 1, 0);
INSERT INTO `all_public` VALUES (2587, '新世纪英语学校(珠江路)', 38.915, 121.62, 1, 0);
INSERT INTO `all_public` VALUES (2588, '大连市西岗区大同小学', 38.9174, 121.618, 1, 0);
INSERT INTO `all_public` VALUES (2589, '大连市西岗区香炉礁小学', 38.9362, 121.6, 1, 0);
INSERT INTO `all_public` VALUES (2590, '西岗区杏园小学', 38.8895, 121.65, 1, 0);
INSERT INTO `all_public` VALUES (2591, '德豪学校', 38.9397, 121.596, 1, 0);
INSERT INTO `all_public` VALUES (2592, '西岗区教师进修学校附属学校-国际部', 38.9071, 121.612, 1, 0);
INSERT INTO `all_public` VALUES (2593, '佳音英语(桃源分校)', 38.8915, 121.655, 1, 0);
INSERT INTO `all_public` VALUES (2594, '大连市西岗区中小学综合素质教育中心', 38.9381, 121.606, 1, 0);
INSERT INTO `all_public` VALUES (2595, '德才学校', 38.9177, 121.615, 1, 0);
INSERT INTO `all_public` VALUES (2596, '艾加文化艺术学校', 38.9264, 121.615, 1, 0);
INSERT INTO `all_public` VALUES (2597, '大连市劳动保障职业培训学校', 38.9221, 121.637, 1, 0);
INSERT INTO `all_public` VALUES (2598, '华夏未来大连中心金色少年培训学校(劳动公园校区)', 38.9154, 121.638, 1, 0);
INSERT INTO `all_public` VALUES (2599, '金榜教育', 38.9219, 121.62, 1, 0);
INSERT INTO `all_public` VALUES (2600, '北京舞蹈学院大连中音教学中心(大连时尚百盛店)', 38.9167, 121.616, 1, 0);
INSERT INTO `all_public` VALUES (2601, '库柏联盟艺术学院(印象城校区)', 38.9168, 121.616, 1, 0);
INSERT INTO `all_public` VALUES (2602, '大连联邦雅思英语学校(嘉汇大厦)', 38.9127, 121.614, 1, 0);
INSERT INTO `all_public` VALUES (2603, '大连市中山区唯艺艺术培训学校', 38.9127, 121.616, 1, 0);
INSERT INTO `all_public` VALUES (2604, '同晖培训学校', 38.9229, 121.623, 1, 0);
INSERT INTO `all_public` VALUES (2605, '友和小学', 38.9148, 121.62, 1, 0);
INSERT INTO `all_public` VALUES (2606, '爱民教育学校', 38.9181, 121.618, 1, 0);
INSERT INTO `all_public` VALUES (2607, '大连社会主义学院南区', 38.8732, 121.623, 1, 0);
INSERT INTO `all_public` VALUES (2608, '滨海小学-海洋特色学校', 38.8756, 121.631, 1, 0);
INSERT INTO `all_public` VALUES (2609, '大连世华文化艺术专修学校', 38.9031, 121.617, 1, 0);
INSERT INTO `all_public` VALUES (2610, '大连工业大学继续教育学院', 38.9075, 121.613, 1, 0);
INSERT INTO `all_public` VALUES (2611, '新加坡赛思商学院大连办事处', 38.9249, 121.631, 1, 0);
INSERT INTO `all_public` VALUES (2612, '大连工人大学-附属商务学校', 38.9232, 121.623, 1, 0);
INSERT INTO `all_public` VALUES (2613, '远程与继续教育学院办公楼', 38.9218, 121.635, 1, 0);
INSERT INTO `all_public` VALUES (2614, '大连理工大学石油化工学院(中山路)', 38.9178, 121.633, 1, 0);
INSERT INTO `all_public` VALUES (2615, '大连教育学院资产设备科', 38.9117, 121.612, 1, 0);
INSERT INTO `all_public` VALUES (2616, 'HomeLink(H34中学区新店)', 38.9146, 121.631, 1, 0);
INSERT INTO `all_public` VALUES (2617, '大连医科大学附属第一医院', 38.9157, 121.618, 1, 1);
INSERT INTO `all_public` VALUES (2618, '大连市第二人民医院', 38.924, 121.628, 1, 1);
INSERT INTO `all_public` VALUES (2619, '大连医科大学附属第一医院二部', 38.9081, 121.608, 1, 1);
INSERT INTO `all_public` VALUES (2620, '解放军联勤保障部队第967医院', 38.9083, 121.618, 1, 1);
INSERT INTO `all_public` VALUES (2621, '大连医科大学附属第一医院', 38.9082, 121.608, 1, 1);
INSERT INTO `all_public` VALUES (2622, '大连大学附属中山医院(桥北分部)', 38.9342, 121.643, 1, 1);
INSERT INTO `all_public` VALUES (2623, '大连市儿童医院', 38.9181, 121.635, 1, 1);
INSERT INTO `all_public` VALUES (2624, '神谷中医院', 38.9203, 121.636, 1, 1);
INSERT INTO `all_public` VALUES (2625, '大连北医八医院', 38.9181, 121.637, 1, 1);
INSERT INTO `all_public` VALUES (2626, '大连市西岗区妇幼保健院', 38.9225, 121.623, 1, 1);
INSERT INTO `all_public` VALUES (2627, '大连市西岗区公立医院', 38.9243, 121.623, 1, 1);
INSERT INTO `all_public` VALUES (2628, '大连医科大学附属第一医院行政中心', 38.9098, 121.608, 1, 1);
INSERT INTO `all_public` VALUES (2629, '大连滨海医院', 38.8794, 121.638, 1, 1);
INSERT INTO `all_public` VALUES (2630, '公安医院', 38.9168, 121.635, 1, 1);
INSERT INTO `all_public` VALUES (2631, '中国人民解放军二一〇医院抗过敏中心', 38.9093, 121.618, 1, 1);
INSERT INTO `all_public` VALUES (2632, '大连京城皮肤病专科医院', 38.9243, 121.619, 1, 1);
INSERT INTO `all_public` VALUES (2633, '大连百佳妇产医院', 38.9076, 121.614, 1, 1);
INSERT INTO `all_public` VALUES (2634, '大连众心堂医院', 38.8915, 121.652, 1, 1);
INSERT INTO `all_public` VALUES (2635, '大连沙医生整形美容口腔专科医院', 38.9191, 121.628, 1, 1);
INSERT INTO `all_public` VALUES (2636, '大连西岗青虹中医院', 38.9191, 121.628, 1, 1);
INSERT INTO `all_public` VALUES (2637, '松山医院', 38.9162, 121.634, 1, 1);
INSERT INTO `all_public` VALUES (2638, '星妍医疗美容', 38.9179, 121.614, 1, 1);
INSERT INTO `all_public` VALUES (2639, '西岗区人民广场社区卫生服务中心预防保健部', 38.9074, 121.625, 1, 1);
INSERT INTO `all_public` VALUES (2640, '真臻医疗美容', 38.9273, 121.613, 1, 1);
INSERT INTO `all_public` VALUES (2641, '中爱眼科医院', 38.9234, 121.616, 1, 1);
INSERT INTO `all_public` VALUES (2642, '大连市儿童医院门诊住院-综合楼', 38.9181, 121.636, 1, 1);
INSERT INTO `all_public` VALUES (2643, '艾加艾整形医院', 38.9163, 121.629, 1, 1);
INSERT INTO `all_public` VALUES (2644, '大连五一血管病专科', 38.9234, 121.613, 1, 1);
INSERT INTO `all_public` VALUES (2645, '大连蓝天软伤专科医院', 38.8737, 121.625, 1, 1);
INSERT INTO `all_public` VALUES (2646, '食为天医院', 38.9181, 121.615, 1, 1);
INSERT INTO `all_public` VALUES (2647, '大连医科大学心血管病研究所', 38.9086, 121.608, 1, 1);
INSERT INTO `all_public` VALUES (2648, '蒙恩口腔', 38.9357, 121.601, 1, 1);
INSERT INTO `all_public` VALUES (2649, '牙客喜口腔种植中心', 38.9249, 121.619, 1, 1);
INSERT INTO `all_public` VALUES (2650, '大连奥拉克医疗美容', 38.9224, 121.627, 1, 1);
INSERT INTO `all_public` VALUES (2651, '海岚泉松骨', 38.9279, 121.621, 1, 1);
INSERT INTO `all_public` VALUES (2652, '爱尔光明眼科', 38.9173, 121.635, 1, 1);
INSERT INTO `all_public` VALUES (2653, '中国人民解放军二一〇医院消毒供应中心', 38.9082, 121.617, 1, 1);
INSERT INTO `all_public` VALUES (2654, '大连百佳妇产医院月子中心', 38.9076, 121.614, 1, 1);
INSERT INTO `all_public` VALUES (2655, '曹建平医疗美容', 38.9122, 121.621, 1, 1);
INSERT INTO `all_public` VALUES (2656, '恩盈媄地医疗美容', 38.9146, 121.635, 1, 1);
INSERT INTO `all_public` VALUES (2657, '大连阳光医院行政楼', 38.9128, 121.608, 1, 1);
INSERT INTO `all_public` VALUES (2658, '朗域医疗美容', 38.9108, 121.618, 1, 1);
INSERT INTO `all_public` VALUES (2659, '全军中医血液病研究所', 38.907, 121.616, 1, 1);
INSERT INTO `all_public` VALUES (2660, '联勤第二分部胸腔镜治疗中心', 38.9083, 121.618, 1, 1);
INSERT INTO `all_public` VALUES (2661, '大连市血液病中医研究所', 38.9075, 121.617, 1, 1);
INSERT INTO `all_public` VALUES (2662, '孙强医疗美容', 38.9071, 121.611, 1, 1);
INSERT INTO `all_public` VALUES (2663, '大连船舶康复医院', 38.8726, 121.625, 1, 1);
INSERT INTO `all_public` VALUES (2664, '大连康贝佳口腔诊所有限公司', 38.9218, 121.616, 1, 1);
INSERT INTO `all_public` VALUES (2665, '八一路社区卫生服务中心', 38.8922, 121.644, 1, 1);
INSERT INTO `all_public` VALUES (2666, '石道街社区卫生服务中心', 38.8995, 121.631, 1, 1);
INSERT INTO `all_public` VALUES (2667, '口腔医院(八一路门诊部)', 38.892, 121.645, 1, 1);
INSERT INTO `all_public` VALUES (2668, '莲花社区卫生服务中心', 38.9035, 121.612, 1, 1);
INSERT INTO `all_public` VALUES (2669, '大连西岗站北民乐社区服务中心', 38.9315, 121.643, 1, 1);
INSERT INTO `all_public` VALUES (2670, '玄宗经络中医', 38.9226, 121.615, 1, 1);
INSERT INTO `all_public` VALUES (2671, '站北民乐社区卫生服务中心团结社区卫生站', 38.9357, 121.641, 1, 1);
INSERT INTO `all_public` VALUES (2672, '和协眼视光眼科', 38.9204, 121.613, 1, 1);
INSERT INTO `all_public` VALUES (2673, '香炉礁社区服务中心', 38.9366, 121.602, 1, 1);
INSERT INTO `all_public` VALUES (2674, '石道街社区卫生服务中心-健康教育部', 38.8993, 121.631, 1, 1);
INSERT INTO `all_public` VALUES (2675, '鑫来美皮肤管理中心', 38.9273, 121.613, 1, 1);
INSERT INTO `all_public` VALUES (2676, '恒隆广场', 38.9127, 121.616, 1, 2);
INSERT INTO `all_public` VALUES (2677, '百年港湾奥特莱斯', 38.9364, 121.613, 1, 2);
INSERT INTO `all_public` VALUES (2678, '凯旋商城', 38.9298, 121.638, 1, 2);
INSERT INTO `all_public` VALUES (2679, '大连时尚百盛', 38.9168, 121.616, 1, 2);
INSERT INTO `all_public` VALUES (2680, '百年港湾奥特莱斯A4', 38.9364, 121.614, 1, 2);
INSERT INTO `all_public` VALUES (2681, '印象城购物中心', 38.9161, 121.615, 1, 2);
INSERT INTO `all_public` VALUES (2682, '星海商城', 38.9153, 121.617, 1, 2);
INSERT INTO `all_public` VALUES (2683, '百年港湾奥特莱斯-A2区', 38.937, 121.613, 1, 2);
INSERT INTO `all_public` VALUES (2684, '莫斯科购物广场', 38.9337, 121.642, 1, 2);
INSERT INTO `all_public` VALUES (2685, '百年港湾奥特莱斯A1(百年港湾奥特莱斯店)', 38.9377, 121.613, 1, 2);
INSERT INTO `all_public` VALUES (2686, '壹佰商场', 38.9125, 121.622, 1, 2);
INSERT INTO `all_public` VALUES (2687, '大连印象城', 38.9165, 121.615, 1, 2);
INSERT INTO `all_public` VALUES (2688, '百年港湾奥特莱斯-B区', 38.9362, 121.616, 1, 2);
INSERT INTO `all_public` VALUES (2689, '百年港湾奥特莱斯-A区', 38.9371, 121.614, 1, 2);
INSERT INTO `all_public` VALUES (2690, '大连市房地产交易登记中心', 38.9208, 121.615, 1, 3);
INSERT INTO `all_public` VALUES (2691, '大连市政府', 38.9197, 121.621, 1, 3);
INSERT INTO `all_public` VALUES (2692, '大连市不动产登记中心', 38.9208, 121.615, 1, 3);
INSERT INTO `all_public` VALUES (2693, '大连市住房公积金管理中心西岗区办事处', 38.9215, 121.614, 1, 3);
INSERT INTO `all_public` VALUES (2694, '大连市医疗保险管理中心', 38.9172, 121.629, 1, 3);
INSERT INTO `all_public` VALUES (2695, '大连市就业服务中心', 38.9039, 121.608, 1, 3);
INSERT INTO `all_public` VALUES (2696, '西岗区房屋产权交易市场', 38.9208, 121.615, 1, 3);
INSERT INTO `all_public` VALUES (2697, '大连市出租汽车管理处', 38.9417, 121.599, 1, 3);
INSERT INTO `all_public` VALUES (2698, '大连市房屋租赁登记管理中心(黄河路)', 38.9197, 121.618, 1, 3);
INSERT INTO `all_public` VALUES (2699, '大连市劳动保障监察支队', 38.8922, 121.647, 1, 3);
INSERT INTO `all_public` VALUES (2700, '五一广场房地产交易中心', 38.921, 121.615, 1, 3);
INSERT INTO `all_public` VALUES (2701, '大连仲裁委员会', 38.9222, 121.632, 1, 3);
INSERT INTO `all_public` VALUES (2702, '行政服务大厅市场监督管理局', 38.9176, 121.617, 1, 3);
INSERT INTO `all_public` VALUES (2703, '大连市房地产交易所', 38.921, 121.615, 1, 3);
INSERT INTO `all_public` VALUES (2704, '大连市审计局', 38.9192, 121.628, 1, 3);
INSERT INTO `all_public` VALUES (2705, '大连市银监会监管局', 38.9193, 121.619, 1, 3);
INSERT INTO `all_public` VALUES (2706, '大连市土地储备中心', 38.9149, 121.627, 1, 3);
INSERT INTO `all_public` VALUES (2707, '大连市信用中心', 38.9119, 121.622, 1, 3);
INSERT INTO `all_public` VALUES (2708, '国家税务总局大连市税务局纳税服务中心(税收宣传中心)', 38.9156, 121.628, 1, 3);
INSERT INTO `all_public` VALUES (2709, '中共大连市委大连市人民政府信访局', 38.9194, 121.62, 1, 3);
INSERT INTO `all_public` VALUES (2710, '大连市商务局', 38.9177, 121.636, 1, 3);
INSERT INTO `all_public` VALUES (2711, '大连市西岗区市政公用事业服务中心', 38.8993, 121.634, 1, 3);
INSERT INTO `all_public` VALUES (2712, '大连市市政管理处', 38.9376, 121.595, 1, 3);
INSERT INTO `all_public` VALUES (2713, '大连市西岗区人民政府残疾人工作委员会', 38.937, 121.603, 1, 3);
INSERT INTO `all_public` VALUES (2714, '鞍山市人民政府驻大连办事处', 38.9247, 121.622, 1, 3);
INSERT INTO `all_public` VALUES (2715, '站北街道办事处', 38.9376, 121.641, 1, 3);
INSERT INTO `all_public` VALUES (2716, '中国共产党大连市西岗区站北街道工作委员会', 38.9376, 121.641, 1, 3);
INSERT INTO `all_public` VALUES (2717, '大连市路灯管理处一所', 38.9363, 121.636, 1, 3);
INSERT INTO `all_public` VALUES (2718, '大连市市政公用事业服务中心市政基础设施部', 38.9377, 121.595, 1, 3);
INSERT INTO `all_public` VALUES (2719, '航三大楼财务共享中心', 38.9386, 121.614, 1, 3);
INSERT INTO `all_public` VALUES (2720, '共青团河南省委驻大连工作委员会', 38.9104, 121.617, 1, 3);
INSERT INTO `all_public` VALUES (2721, '大连市价格监测中心', 38.915, 121.627, 1, 3);
INSERT INTO `all_public` VALUES (2722, '人民广场街道胜利社区居民议事会', 38.9125, 121.627, 1, 3);
INSERT INTO `all_public` VALUES (2723, '中国共产党大连香洲集团委员会', 38.9137, 121.618, 1, 3);
INSERT INTO `all_public` VALUES (2724, '人民广场街道石葵社区365市民工作站', 38.8987, 121.632, 1, 3);
INSERT INTO `all_public` VALUES (2725, '中共大连市西岗区八一路街道林茂社区委员会', 38.8991, 121.639, 1, 3);
INSERT INTO `all_public` VALUES (2726, '中共大连市西岗区白云街道天池社区委员会', 38.9032, 121.615, 1, 3);
INSERT INTO `all_public` VALUES (2727, '西岗区长江社区养老服务中心', 38.9278, 121.618, 1, 3);
INSERT INTO `all_public` VALUES (2728, '西岗区人大常委会香炉礁街道工作委员会', 38.9349, 121.604, 1, 3);
INSERT INTO `all_public` VALUES (2729, '中共大连市西岗区白云街道迎春社区委员会', 38.8952, 121.63, 1, 3);
INSERT INTO `all_public` VALUES (2730, '大连斑海豹国家级自然保护区管理处', 38.9121, 121.607, 1, 3);
INSERT INTO `all_public` VALUES (2731, '业务接待室', 38.9364, 121.608, 1, 3);
INSERT INTO `all_public` VALUES (2732, '香荣社区综治中心', 38.9375, 121.599, 1, 3);
INSERT INTO `all_public` VALUES (2733, '更生社区综治中心', 38.9266, 121.619, 1, 3);
INSERT INTO `all_public` VALUES (2734, '大连市检察机关便民工作站(长春路)', 38.894, 121.639, 1, 3);
INSERT INTO `all_public` VALUES (2735, '人民广场街道办事处更生社区信访代理站', 38.9267, 121.619, 1, 3);
INSERT INTO `all_public` VALUES (2736, '大连市信息化办公室', 38.9125, 121.626, 1, 3);
INSERT INTO `all_public` VALUES (2737, '西岗区人民广场街道九三社区反邪教小组', 38.9223, 121.622, 1, 3);
INSERT INTO `all_public` VALUES (2738, '应急避难场所(大连台湾国际商贸中心西)', 38.9302, 121.638, 1, 3);
INSERT INTO `all_public` VALUES (2739, '西岗区人民广场街道志愿服务工作站', 38.9267, 121.619, 1, 3);
INSERT INTO `all_public` VALUES (2740, '大连兴业装饰材料市场管理委员会', 38.9288, 121.632, 1, 3);
INSERT INTO `all_public` VALUES (2741, '大连市审计局人事处', 38.9191, 121.628, 1, 3);
INSERT INTO `all_public` VALUES (2742, '大连市质量技术监督局西岗分局稽查队', 38.9116, 121.62, 1, 3);
INSERT INTO `all_public` VALUES (2743, '大连市第三次全国文物普查办公室', 38.8972, 121.628, 1, 3);
INSERT INTO `all_public` VALUES (2744, '法国国际验船协会大连代表处', 38.9191, 121.634, 1, 3);
INSERT INTO `all_public` VALUES (2745, '辽宁沿海城市经济联合体联络处', 38.9025, 121.631, 1, 3);
INSERT INTO `all_public` VALUES (2746, '十万伙计(胜利工作站)', 38.9102, 121.617, 1, 3);
INSERT INTO `all_public` VALUES (2747, '大连公路主枢纽信息管理中心', 38.9419, 121.599, 1, 3);
INSERT INTO `all_public` VALUES (2748, '大连市盐政稽查支队一大队', 38.9331, 121.635, 1, 3);
INSERT INTO `all_public` VALUES (2749, '白云街道迎春社区365市民工作站', 38.8953, 121.63, 1, 3);
INSERT INTO `all_public` VALUES (2750, '大连市园林绿化办公室', 38.9174, 121.629, 1, 3);
INSERT INTO `all_public` VALUES (2751, '大连市西岗区国库收付中心', 38.9233, 121.619, 1, 3);
INSERT INTO `all_public` VALUES (2752, '西岗区工人村社区养老服务中心', 38.9394, 121.601, 1, 3);
INSERT INTO `all_public` VALUES (2753, '大连市旅游发展委员', 38.9194, 121.621, 1, 3);
INSERT INTO `all_public` VALUES (2754, '大连市审计局投资一处', 38.9191, 121.628, 1, 3);
INSERT INTO `all_public` VALUES (2755, '大连市保健协会糖友关爱委员会办公室', 38.9107, 121.619, 1, 3);
INSERT INTO `all_public` VALUES (2756, '大连市农村能源工作促进中心', 38.896, 121.638, 1, 3);
INSERT INTO `all_public` VALUES (2757, '河源社区劳动保障工作站', 38.8897, 121.649, 1, 3);
INSERT INTO `all_public` VALUES (2758, '大连市总工会就业促进中心', 38.9387, 121.594, 1, 3);
INSERT INTO `all_public` VALUES (2759, '胜利社区-综治管理服务站', 38.9125, 121.627, 1, 3);
INSERT INTO `all_public` VALUES (2760, '民运社区劳动保障工作站', 38.9118, 121.61, 1, 3);
INSERT INTO `all_public` VALUES (2761, '康平社区-劳动保障工作站', 38.9101, 121.621, 1, 3);
INSERT INTO `all_public` VALUES (2762, '大连市城市管理行政执法局二分局人民广场街道执法大队', 38.9086, 121.622, 1, 3);
INSERT INTO `all_public` VALUES (2763, '香炉礁农贸市场招商办公室', 38.9379, 121.601, 1, 3);
INSERT INTO `all_public` VALUES (2764, '日新街道更新社区365市民工作站', 38.9196, 121.629, 1, 3);
INSERT INTO `all_public` VALUES (2765, '大连市职业卫生监督所', 38.9178, 121.636, 1, 3);
INSERT INTO `all_public` VALUES (2766, '西岗区八一路街道八一社区365工作站', 38.893, 121.654, 1, 3);
INSERT INTO `all_public` VALUES (2767, '香炉礁街道劳动保障事务所', 38.9348, 121.603, 1, 3);
INSERT INTO `all_public` VALUES (2768, '日新街道劳动关系调解庭', 38.9377, 121.642, 1, 3);
INSERT INTO `all_public` VALUES (2769, '大连市市政监察执法大队西岗中队', 38.9405, 121.609, 1, 3);
INSERT INTO `all_public` VALUES (2770, '大连市五四红旗团委', 38.904, 121.626, 1, 3);
INSERT INTO `all_public` VALUES (2771, '大连市卫生信息中心', 38.9031, 121.617, 1, 3);
INSERT INTO `all_public` VALUES (2772, '大连市建设信息中心(高尔基路)', 38.9162, 121.627, 1, 3);
INSERT INTO `all_public` VALUES (2773, '中华人民共和国大连金州渔港监督', 38.9072, 121.611, 1, 3);
INSERT INTO `all_public` VALUES (2774, '大连市青少年教育保护办公室', 38.9154, 121.62, 1, 3);
INSERT INTO `all_public` VALUES (2775, '中国电信监察', 38.9191, 121.63, 1, 3);
INSERT INTO `all_public` VALUES (2776, '大连市西岗区法院', 38.9037, 121.637, 1, 3);
INSERT INTO `all_public` VALUES (2777, '应急避难场所', 38.9206, 121.621, 1, 3);
INSERT INTO `all_public` VALUES (2778, '大连市公证处', 38.9201, 121.62, 1, 3);
INSERT INTO `all_public` VALUES (2779, '中共大连市委党校(滨海西路)', 38.8726, 121.624, 1, 3);
INSERT INTO `all_public` VALUES (2780, '大连市公安局西岗分局', 38.9258, 121.623, 1, 3);
INSERT INTO `all_public` VALUES (2781, '八一路派出所', 38.8922, 121.644, 1, 3);
INSERT INTO `all_public` VALUES (2782, '香工街派出所', 38.9376, 121.596, 1, 3);
INSERT INTO `all_public` VALUES (2783, '大连市公安局指挥中心', 38.918, 121.63, 1, 3);
INSERT INTO `all_public` VALUES (2784, '大连市西岗区残疾人联合会', 38.937, 121.603, 1, 3);
INSERT INTO `all_public` VALUES (2785, '西岗分局白云街派出所', 38.9015, 121.612, 1, 3);
INSERT INTO `all_public` VALUES (2786, '中国中铁九局(大连分公司)', 38.9378, 121.646, 1, 3);
INSERT INTO `all_public` VALUES (2787, '大连市公安局民乐街派出所民乐社区警务室', 38.9377, 121.642, 1, 3);
INSERT INTO `all_public` VALUES (2788, '大连市西岗区八一路街道八一社区居民委员会', 38.8931, 121.654, 1, 3);
INSERT INTO `all_public` VALUES (2789, '西岗区金海社区-居民委员会', 38.941, 121.611, 1, 3);
INSERT INTO `all_public` VALUES (2790, '中国铁路沈阳局集团有限公司大连工务段', 38.9333, 121.645, 1, 3);
INSERT INTO `all_public` VALUES (2791, '大连市建设工程质量监督站', 38.8886, 121.643, 1, 3);
INSERT INTO `all_public` VALUES (2792, '大连市西岗区八一路街道桃山社区居民委员会', 38.8939, 121.648, 1, 3);
INSERT INTO `all_public` VALUES (2793, '大连市公安局香工街派出所金海社区中心警务室', 38.9407, 121.611, 1, 3);
INSERT INTO `all_public` VALUES (2794, '香锦公园应急避难所', 38.937, 121.601, 1, 3);
INSERT INTO `all_public` VALUES (2795, '民乐街派出所大连船校校园警务室', 38.9354, 121.643, 1, 3);
INSERT INTO `all_public` VALUES (2796, '西岗分局巡特警大队直属一中队', 38.9271, 121.635, 1, 3);
INSERT INTO `all_public` VALUES (2797, '大连市公安局盐业治安管理办公室', 38.8959, 121.631, 1, 3);
INSERT INTO `all_public` VALUES (2798, '帮万家社区智慧居家养老服务中心', 38.9029, 121.615, 1, 3);
INSERT INTO `all_public` VALUES (2799, '困难职工帮扶中心西岗区总工会', 38.9258, 121.618, 1, 3);
INSERT INTO `all_public` VALUES (2800, '工人村社区警务室', 38.9405, 121.603, 1, 3);
INSERT INTO `all_public` VALUES (2801, '校园报警点', 38.895, 121.637, 1, 3);
INSERT INTO `all_public` VALUES (2802, '大连市西岗区人民广场街道北岗社区居民委员会', 38.93, 121.621, 1, 3);
INSERT INTO `all_public` VALUES (2803, '大连市西岗区人民检察院举报中心', 38.9321, 121.643, 1, 3);
INSERT INTO `all_public` VALUES (2804, '大连铁道有限责任公司特种设备安全技术检测站', 38.937, 121.645, 1, 3);
INSERT INTO `all_public` VALUES (2805, '八一路派出所桃山社区警务室', 38.8939, 121.649, 1, 3);
INSERT INTO `all_public` VALUES (2806, '英雄纪念公园-入口处应急避难所', 38.9048, 121.631, 1, 3);
INSERT INTO `all_public` VALUES (2807, '香炉礁派出所香秀社区警务室', 38.9361, 121.602, 1, 3);
INSERT INTO `all_public` VALUES (2808, '公安派出所', 38.8907, 121.644, 1, 3);
INSERT INTO `all_public` VALUES (2809, '西岗区人民法院立案一庭', 38.9037, 121.637, 1, 3);
INSERT INTO `all_public` VALUES (2810, '奥林匹克广场-人防掩蔽工程', 38.9155, 121.616, 1, 3);
INSERT INTO `all_public` VALUES (2811, '大连市第八中学', 38.9224, 121.596, 2, 0);
INSERT INTO `all_public` VALUES (2812, '大连格致中学', 38.9122, 121.581, 2, 0);
INSERT INTO `all_public` VALUES (2813, '大连市沙河口区绿波小学', 38.9402, 121.571, 2, 0);
INSERT INTO `all_public` VALUES (2814, '大连市第四十七中学', 38.9287, 121.595, 2, 0);
INSERT INTO `all_public` VALUES (2815, '大连市第四中学', 38.893, 121.565, 2, 0);
INSERT INTO `all_public` VALUES (2816, '大连市第四十五中学', 38.9334, 121.593, 2, 0);
INSERT INTO `all_public` VALUES (2817, '新建小学', 38.9278, 121.579, 2, 0);
INSERT INTO `all_public` VALUES (2818, '大连市第五十一中学', 38.939, 121.583, 2, 0);
INSERT INTO `all_public` VALUES (2819, '大连市第五十二中学', 38.9494, 121.576, 2, 0);
INSERT INTO `all_public` VALUES (2820, '玉华小学', 38.9057, 121.6, 2, 0);
INSERT INTO `all_public` VALUES (2821, '大连第四十九中学', 38.9227, 121.574, 2, 0);
INSERT INTO `all_public` VALUES (2822, '大连育明高级中学', 38.8847, 121.546, 2, 0);
INSERT INTO `all_public` VALUES (2823, '东北路小学', 38.9199, 121.61, 2, 0);
INSERT INTO `all_public` VALUES (2824, '大连市第十三中学', 38.9197, 121.587, 2, 0);
INSERT INTO `all_public` VALUES (2825, '骥才文化艺术培训学校(长兴街)', 38.92, 121.602, 2, 0);
INSERT INTO `all_public` VALUES (2826, '大连市第八十三中学', 38.9107, 121.574, 2, 0);
INSERT INTO `all_public` VALUES (2827, '沙河口区马栏小学', 38.9313, 121.563, 2, 0);
INSERT INTO `all_public` VALUES (2828, '大连市沙河口区春柳小学', 38.9441, 121.582, 2, 0);
INSERT INTO `all_public` VALUES (2829, '大连软件园双语学校', 38.8896, 121.548, 2, 0);
INSERT INTO `all_public` VALUES (2830, '新东方(黄河路教学区)', 38.9171, 121.608, 2, 0);
INSERT INTO `all_public` VALUES (2831, '李家街小学', 38.9443, 121.575, 2, 0);
INSERT INTO `all_public` VALUES (2832, '大连市知行中学', 38.941, 121.567, 2, 0);
INSERT INTO `all_public` VALUES (2833, '大连市沙河口区锦绣小学', 38.9467, 121.557, 2, 0);
INSERT INTO `all_public` VALUES (2834, '大连市烹饪学校', 38.9406, 121.577, 2, 0);
INSERT INTO `all_public` VALUES (2835, '昌平小学', 38.918, 121.59, 2, 0);
INSERT INTO `all_public` VALUES (2836, '大连市第三中学', 38.9436, 121.589, 2, 0);
INSERT INTO `all_public` VALUES (2837, '大连市沙河口区抚顺街小学', 38.9237, 121.598, 2, 0);
INSERT INTO `all_public` VALUES (2838, '大连市足球运动学校', 38.8983, 121.598, 2, 0);
INSERT INTO `all_public` VALUES (2839, '大连市信息高级中学', 38.9071, 121.597, 2, 0);
INSERT INTO `all_public` VALUES (2840, '世纪中学', 38.9321, 121.585, 2, 0);
INSERT INTO `all_public` VALUES (2841, '东北财经大学高等职业技术学院', 38.8861, 121.547, 2, 0);
INSERT INTO `all_public` VALUES (2842, '大连市第四十八中学', 38.9143, 121.595, 2, 0);
INSERT INTO `all_public` VALUES (2843, '三川古筝艺术学校', 38.9393, 121.575, 2, 0);
INSERT INTO `all_public` VALUES (2844, '大连市轻工业学校', 38.8809, 121.546, 2, 0);
INSERT INTO `all_public` VALUES (2845, '沙河口区启智学校(新址)', 38.9389, 121.567, 2, 0);
INSERT INTO `all_public` VALUES (2846, '星火教育(西安路校区)', 38.9198, 121.599, 2, 0);
INSERT INTO `all_public` VALUES (2847, '辽宁师范大学附属中学', 38.8822, 121.563, 2, 0);
INSERT INTO `all_public` VALUES (2848, '大连市金融中专', 38.9179, 121.604, 2, 0);
INSERT INTO `all_public` VALUES (2849, '大连市经济贸易学校', 38.8874, 121.556, 2, 0);
INSERT INTO `all_public` VALUES (2850, '百音文化艺术培训学校', 38.9387, 121.586, 2, 0);
INSERT INTO `all_public` VALUES (2851, '百霞艺术培训学校', 38.9159, 121.598, 2, 0);
INSERT INTO `all_public` VALUES (2852, '大连市沙河口区新梦想文化培训学校有限公司', 38.9089, 121.584, 2, 0);
INSERT INTO `all_public` VALUES (2853, '天使宝贝文化艺术培训学校', 38.9514, 121.584, 2, 0);
INSERT INTO `all_public` VALUES (2854, '博群教育培训学校', 38.9197, 121.598, 2, 0);
INSERT INTO `all_public` VALUES (2855, '大连市明师按摩职业培训学校', 38.9239, 121.606, 2, 0);
INSERT INTO `all_public` VALUES (2856, '博仁文化培训学校', 38.9423, 121.573, 2, 0);
INSERT INTO `all_public` VALUES (2857, '嘉汇教育(沙河口分校)', 38.9172, 121.602, 2, 0);
INSERT INTO `all_public` VALUES (2858, '实训楼', 38.9183, 121.604, 2, 0);
INSERT INTO `all_public` VALUES (2859, '精艺尚美培训学校', 38.9309, 121.58, 2, 0);
INSERT INTO `all_public` VALUES (2860, '亿盛学校', 38.9188, 121.593, 2, 0);
INSERT INTO `all_public` VALUES (2861, '大连交通大学辽宁省高等学校创新团队连续挤压和连续包覆技术', 38.9194, 121.576, 2, 0);
INSERT INTO `all_public` VALUES (2862, '大连工业大学附属高级中学美术专业', 38.9426, 121.586, 2, 0);
INSERT INTO `all_public` VALUES (2863, '大连交通大学成人教育学院', 38.9151, 121.567, 2, 0);
INSERT INTO `all_public` VALUES (2864, '大连交通大学-机械工程学院', 38.9169, 121.58, 2, 0);
INSERT INTO `all_public` VALUES (2865, '大连金凤凰艺术学校', 38.9255, 121.601, 2, 0);
INSERT INTO `all_public` VALUES (2866, '沙河口区中小学学习中心', 38.921, 121.591, 2, 0);
INSERT INTO `all_public` VALUES (2867, '沙河口区社会主义学校', 38.9232, 121.563, 2, 0);
INSERT INTO `all_public` VALUES (2868, '大连美通外语培训学校', 38.9159, 121.595, 2, 0);
INSERT INTO `all_public` VALUES (2869, '智学国际语言学校', 38.9163, 121.597, 2, 0);
INSERT INTO `all_public` VALUES (2870, '跆拳道舞蹈学校', 38.9416, 121.59, 2, 0);
INSERT INTO `all_public` VALUES (2871, '大连市沙河口区少年交通警察学校', 38.9406, 121.589, 2, 0);
INSERT INTO `all_public` VALUES (2872, '大连好特外国语培训学校', 38.921, 121.591, 2, 0);
INSERT INTO `all_public` VALUES (2873, '佳媚肚皮舞', 38.9214, 121.595, 2, 0);
INSERT INTO `all_public` VALUES (2874, '丽华会计西安路校区', 38.9179, 121.595, 2, 0);
INSERT INTO `all_public` VALUES (2875, '群星学校宿舍', 38.9064, 121.601, 2, 0);
INSERT INTO `all_public` VALUES (2876, '大连市中心医院', 38.9418, 121.582, 2, 1);
INSERT INTO `all_public` VALUES (2877, '大连医科大学附属第二医院(总院区)', 38.889, 121.577, 2, 1);
INSERT INTO `all_public` VALUES (2878, '大连大学附属新华医院', 38.9074, 121.607, 2, 1);
INSERT INTO `all_public` VALUES (2879, '沙河口区医院', 38.9212, 121.581, 2, 1);
INSERT INTO `all_public` VALUES (2880, '大连医科大学附属第一医院', 38.9175, 121.583, 2, 1);
INSERT INTO `all_public` VALUES (2881, '大连市皮肤病医院', 38.9233, 121.608, 2, 1);
INSERT INTO `all_public` VALUES (2882, '大连机车医院', 38.9243, 121.595, 2, 1);
INSERT INTO `all_public` VALUES (2883, '大连市第五人民医院', 38.9249, 121.563, 2, 1);
INSERT INTO `all_public` VALUES (2884, '大连市妇幼保健院-北院', 38.9411, 121.584, 2, 1);
INSERT INTO `all_public` VALUES (2885, '大连航天医院', 38.9172, 121.585, 2, 1);
INSERT INTO `all_public` VALUES (2886, '大连渤海医院', 38.9248, 121.559, 2, 1);
INSERT INTO `all_public` VALUES (2887, '中国人民解放军967医院(兴工街院区)', 38.9235, 121.599, 2, 1);
INSERT INTO `all_public` VALUES (2888, '沙区妇幼保健院', 38.9176, 121.6, 2, 1);
INSERT INTO `all_public` VALUES (2889, '大连医科大学附属大连市中心医院西区', 38.9415, 121.579, 2, 1);
INSERT INTO `all_public` VALUES (2890, '九邦医院', 38.95, 121.569, 2, 1);
INSERT INTO `all_public` VALUES (2891, '大连市口腔医院', 38.924, 121.597, 2, 1);
INSERT INTO `all_public` VALUES (2892, '大连长城医院', 38.9314, 121.6, 2, 1);
INSERT INTO `all_public` VALUES (2893, '大连美琳达妇儿医院', 38.9227, 121.599, 2, 1);
INSERT INTO `all_public` VALUES (2894, '大连医科大学附属大连市中心医院-9号楼', 38.9418, 121.578, 2, 1);
INSERT INTO `all_public` VALUES (2895, '大连奇加复健医院', 38.9098, 121.594, 2, 1);
INSERT INTO `all_public` VALUES (2896, '大连市妇产医院(沙跃街分部)', 38.9381, 121.582, 2, 1);
INSERT INTO `all_public` VALUES (2897, '大连大学附属新华医院-急诊', 38.907, 121.607, 2, 1);
INSERT INTO `all_public` VALUES (2898, '东北财经大学医院', 38.8842, 121.554, 2, 1);
INSERT INTO `all_public` VALUES (2899, '大连市妇幼保健院大连市妇产医院妇科肿瘤诊疗中心', 38.9382, 121.583, 2, 1);
INSERT INTO `all_public` VALUES (2900, '大连市中心医院-综合楼', 38.9422, 121.582, 2, 1);
INSERT INTO `all_public` VALUES (2901, '大连医科大学附属大连市中心医院-3号楼', 38.9416, 121.58, 2, 1);
INSERT INTO `all_public` VALUES (2902, '大连医科大学附属大连市妇产医院生殖保健部', 38.9172, 121.6, 2, 1);
INSERT INTO `all_public` VALUES (2903, '医科大学附属第一医院整形美容中心', 38.9175, 121.583, 2, 1);
INSERT INTO `all_public` VALUES (2904, '大连辽南骨伤医院', 38.9288, 121.561, 2, 1);
INSERT INTO `all_public` VALUES (2905, '大连大学附属新华医院-南楼', 38.9065, 121.606, 2, 1);
INSERT INTO `all_public` VALUES (2906, '维恩医疗美容', 38.9122, 121.601, 2, 1);
INSERT INTO `all_public` VALUES (2907, '瑞凯尔肾病医院', 38.8825, 121.567, 2, 1);
INSERT INTO `all_public` VALUES (2908, '沙河口区妇幼保健院儿童保健部', 38.9202, 121.592, 2, 1);
INSERT INTO `all_public` VALUES (2909, '康源堂中医医院', 38.9134, 121.593, 2, 1);
INSERT INTO `all_public` VALUES (2910, '大连医科大学附属大连市中心医院-1号楼', 38.9411, 121.579, 2, 1);
INSERT INTO `all_public` VALUES (2911, '大连市妇幼保健院(白山路分部)', 38.9172, 121.6, 2, 1);
INSERT INTO `all_public` VALUES (2912, '大连医科大学附属大连市中心医院4号楼', 38.9404, 121.579, 2, 1);
INSERT INTO `all_public` VALUES (2913, '大连医科大学附属大连市中心医院-2号楼', 38.942, 121.58, 2, 1);
INSERT INTO `all_public` VALUES (2914, '何氏眼科近视治疗医院', 38.8958, 121.566, 2, 1);
INSERT INTO `all_public` VALUES (2915, '大连华正眼科医院', 38.9132, 121.602, 2, 1);
INSERT INTO `all_public` VALUES (2916, '星范医疗美容', 38.9171, 121.59, 2, 1);
INSERT INTO `all_public` VALUES (2917, '大连市中心医院医学美容科', 38.9424, 121.582, 2, 1);
INSERT INTO `all_public` VALUES (2918, '大连市肛肠病医院', 38.9066, 121.606, 2, 1);
INSERT INTO `all_public` VALUES (2919, '大连天兴中医院', 38.9169, 121.598, 2, 1);
INSERT INTO `all_public` VALUES (2920, '大连医科大学附属大连市中心医院-7号楼', 38.9408, 121.578, 2, 1);
INSERT INTO `all_public` VALUES (2921, '晟媛医疗整形', 38.9033, 121.607, 2, 1);
INSERT INTO `all_public` VALUES (2922, '大连医科大学附属大连市中心医院-6号楼', 38.9417, 121.579, 2, 1);
INSERT INTO `all_public` VALUES (2923, '大连市第五人民医院-肛肠外科', 38.9248, 121.563, 2, 1);
INSERT INTO `all_public` VALUES (2924, '优德齿科', 38.9407, 121.587, 2, 1);
INSERT INTO `all_public` VALUES (2925, '大连瑞和医疗美容', 38.8892, 121.583, 2, 1);
INSERT INTO `all_public` VALUES (2926, '大连中医骨伤科研究所', 38.9231, 121.603, 2, 1);
INSERT INTO `all_public` VALUES (2927, '大连丽人医疗美容整形外科', 38.9107, 121.598, 2, 1);
INSERT INTO `all_public` VALUES (2928, '何氏眼科大连医院-门诊楼', 38.8958, 121.567, 2, 1);
INSERT INTO `all_public` VALUES (2929, '大连市中心医院-全身伽玛刀', 38.9421, 121.582, 2, 1);
INSERT INTO `all_public` VALUES (2930, '大连明医汇医疗美容整形医院', 38.9098, 121.601, 2, 1);
INSERT INTO `all_public` VALUES (2931, '丽宫女王医疗美容(西安路店)', 38.9165, 121.591, 2, 1);
INSERT INTO `all_public` VALUES (2932, '由家村社区卫生服务中心(五一路)', 38.891, 121.553, 2, 1);
INSERT INTO `all_public` VALUES (2933, '天俪医美', 38.8832, 121.569, 2, 1);
INSERT INTO `all_public` VALUES (2934, '许英医疗美容', 38.9029, 121.597, 2, 1);
INSERT INTO `all_public` VALUES (2935, '大连中医骨伤科研究所医院', 38.9231, 121.603, 2, 1);
INSERT INTO `all_public` VALUES (2936, '大连美琳达妇儿医院产科', 38.9226, 121.599, 2, 1);
INSERT INTO `all_public` VALUES (2937, '大连大学附属新华医院-北楼', 38.9082, 121.606, 2, 1);
INSERT INTO `all_public` VALUES (2938, '大连医科大学附属大连市中心医院-8号楼', 38.9414, 121.579, 2, 1);
INSERT INTO `all_public` VALUES (2939, '铂溪医疗美容', 38.904, 121.603, 2, 1);
INSERT INTO `all_public` VALUES (2940, '大连美琳达妇儿医院-月子中心', 38.9227, 121.599, 2, 1);
INSERT INTO `all_public` VALUES (2941, '肿瘤康复养生中心', 38.9367, 121.585, 2, 1);
INSERT INTO `all_public` VALUES (2942, '大连医科大学附属大连市中心医院-5号楼', 38.9423, 121.579, 2, 1);
INSERT INTO `all_public` VALUES (2943, '大连大学职业技术学院教学医院', 38.9244, 121.595, 2, 1);
INSERT INTO `all_public` VALUES (2944, '辽宁医学院教学医院', 38.9238, 121.597, 2, 1);
INSERT INTO `all_public` VALUES (2945, '大连魏金兰医疗美容', 38.9397, 121.591, 2, 1);
INSERT INTO `all_public` VALUES (2946, '大连沙河口黑石礁白云社区卫生服务中心', 38.8791, 121.564, 2, 1);
INSERT INTO `all_public` VALUES (2947, '联合路社区卫生服务中心', 38.9166, 121.605, 2, 1);
INSERT INTO `all_public` VALUES (2948, '大连中医药研究院长兴医院', 38.9202, 121.604, 2, 1);
INSERT INTO `all_public` VALUES (2949, '大连东尼口腔医院', 38.9037, 121.599, 2, 1);
INSERT INTO `all_public` VALUES (2950, '岳红中医', 38.9409, 121.589, 2, 1);
INSERT INTO `all_public` VALUES (2951, '李家锦绣社区卫生服务中心', 38.9487, 121.562, 2, 1);
INSERT INTO `all_public` VALUES (2952, '大连爱德丽格整形美容医院', 38.9225, 121.612, 2, 1);
INSERT INTO `all_public` VALUES (2953, '黄河路社区卫生服务中心', 38.9247, 121.576, 2, 1);
INSERT INTO `all_public` VALUES (2954, '大连沙河口兴工泉涌社区卫生服务中心(广平街)', 38.9192, 121.591, 2, 1);
INSERT INTO `all_public` VALUES (2955, '红旗路社区卫生服务站', 38.9286, 121.555, 2, 1);
INSERT INTO `all_public` VALUES (2956, '李家绿波社区卫生服务站', 38.9382, 121.574, 2, 1);
INSERT INTO `all_public` VALUES (2957, '白山路社区卫生服务中心', 38.9063, 121.604, 2, 1);
INSERT INTO `all_public` VALUES (2958, '长兴社区卫生服务中心', 38.916, 121.597, 2, 1);
INSERT INTO `all_public` VALUES (2959, '锦绣社区卫生服务中心', 38.9478, 121.553, 2, 1);
INSERT INTO `all_public` VALUES (2960, '大连沙河口南沙社区卫生服务中心', 38.9078, 121.577, 2, 1);
INSERT INTO `all_public` VALUES (2961, '南沙社区卫生服务中心幸福社区卫生站', 38.9063, 121.583, 2, 1);
INSERT INTO `all_public` VALUES (2962, '武欢医疗美容', 38.9143, 121.6, 2, 1);
INSERT INTO `all_public` VALUES (2963, '恒玖康泰', 38.8929, 121.597, 2, 1);
INSERT INTO `all_public` VALUES (2964, '大连大学附属新华医院外科楼-4号楼', 38.9079, 121.606, 2, 1);
INSERT INTO `all_public` VALUES (2965, '大连美琳达妇儿医院-保胎中心', 38.9227, 121.599, 2, 1);
INSERT INTO `all_public` VALUES (2966, '大连大学附属新华医院内科楼-2号楼', 38.9072, 121.608, 2, 1);
INSERT INTO `all_public` VALUES (2967, '大连大学附属新华医院外科楼-3号楼', 38.9076, 121.606, 2, 1);
INSERT INTO `all_public` VALUES (2968, '大连罗斯福广场', 38.9187, 121.593, 2, 2);
INSERT INTO `all_public` VALUES (2969, '凯德和平广场', 38.9029, 121.594, 2, 2);
INSERT INTO `all_public` VALUES (2970, '鲸MALL', 38.8858, 121.579, 2, 2);
INSERT INTO `all_public` VALUES (2971, '福佳新天地广场', 38.9231, 121.594, 2, 2);
INSERT INTO `all_public` VALUES (2972, '富丽庭购物广场', 38.8824, 121.564, 2, 2);
INSERT INTO `all_public` VALUES (2973, '锦辉商城(书香园店)', 38.884, 121.553, 2, 2);
INSERT INTO `all_public` VALUES (2974, '锦辉购物广场(黄河路店)', 38.917, 121.595, 2, 2);
INSERT INTO `all_public` VALUES (2975, '逸彩城购物中心', 38.9258, 121.563, 2, 2);
INSERT INTO `all_public` VALUES (2976, '麦凯乐超市(西安路店)', 38.9172, 121.593, 2, 2);
INSERT INTO `all_public` VALUES (2977, '辰熙广场购物中心', 38.8812, 121.565, 2, 2);
INSERT INTO `all_public` VALUES (2978, '大商新玛特(黑石礁店)', 38.8804, 121.564, 2, 2);
INSERT INTO `all_public` VALUES (2979, '大连中山公园购物广场', 38.9192, 121.605, 2, 2);
INSERT INTO `all_public` VALUES (2980, '大潮乐园(西安路店)', 38.9213, 121.595, 2, 2);
INSERT INTO `all_public` VALUES (2981, '新鑫三业商场', 38.9266, 121.56, 2, 2);
INSERT INTO `all_public` VALUES (2982, '开来商城', 38.8831, 121.563, 2, 2);
INSERT INTO `all_public` VALUES (2983, '福佳新天地广场E座(福佳新天地广场店)', 38.9232, 121.594, 2, 2);
INSERT INTO `all_public` VALUES (2984, '千盛百货(凯德和平广场店)', 38.903, 121.593, 2, 2);
INSERT INTO `all_public` VALUES (2985, '商业中心', 38.9523, 121.558, 2, 2);
INSERT INTO `all_public` VALUES (2986, '海岛优鲜', 38.9507, 121.558, 2, 2);
INSERT INTO `all_public` VALUES (2987, '中央大道购物广场', 38.9218, 121.594, 2, 2);
INSERT INTO `all_public` VALUES (2988, '机车商厦', 38.9225, 121.596, 2, 2);
INSERT INTO `all_public` VALUES (2989, '大良商厦', 38.9128, 121.596, 2, 2);
INSERT INTO `all_public` VALUES (2990, '大连市沙河口区政府行政服务中心', 38.9182, 121.605, 2, 3);
INSERT INTO `all_public` VALUES (2991, '大连市住房公积金管理中心沙河口办事处', 38.9199, 121.601, 2, 3);
INSERT INTO `all_public` VALUES (2992, '大连市人力资源和社会保障局', 38.9156, 121.606, 2, 3);
INSERT INTO `all_public` VALUES (2993, '大连市沙河口区教育局', 38.9289, 121.593, 2, 3);
INSERT INTO `all_public` VALUES (2994, '春柳街道办', 38.9446, 121.581, 2, 3);
INSERT INTO `all_public` VALUES (2995, '铁路十三局', 38.9387, 121.582, 2, 3);
INSERT INTO `all_public` VALUES (2996, '沙河口区李家街道锦绣社区', 38.9474, 121.557, 2, 3);
INSERT INTO `all_public` VALUES (2997, '大连市沙河口区黑石礁街道办事处', 38.8877, 121.562, 2, 3);
INSERT INTO `all_public` VALUES (2998, '辽宁省数字证书认证中心大连注册中心', 38.9122, 121.595, 2, 3);
INSERT INTO `all_public` VALUES (2999, '大连市交通局', 38.9095, 121.599, 2, 3);
INSERT INTO `all_public` VALUES (3000, '大连市沙河口区市场监督管理局', 38.9198, 121.6, 2, 3);
INSERT INTO `all_public` VALUES (3001, '国家税务总局大连市沙河口区税务局', 38.9103, 121.6, 2, 3);
INSERT INTO `all_public` VALUES (3002, '中共大连市纪律检查委员会', 38.9055, 121.607, 2, 3);
INSERT INTO `all_public` VALUES (3003, '大连市建筑工程质量检测中心', 38.9168, 121.583, 2, 3);
INSERT INTO `all_public` VALUES (3004, '沙河口区行政服务大厅', 38.9183, 121.605, 2, 3);
INSERT INTO `all_public` VALUES (3005, '兴工工商所', 38.9183, 121.585, 2, 3);
INSERT INTO `all_public` VALUES (3006, '锦绣消防队', 38.9486, 121.557, 2, 3);
INSERT INTO `all_public` VALUES (3007, '国家税务总局大连市沙河口区税务局中山公园税务所', 38.9244, 121.602, 2, 3);
INSERT INTO `all_public` VALUES (3008, '大连市沙河口区劳动人事争议仲裁院', 38.9151, 121.595, 2, 3);
INSERT INTO `all_public` VALUES (3009, '国家税务总局大连市沙河口区税务局春柳税务所', 38.9462, 121.585, 2, 3);
INSERT INTO `all_public` VALUES (3010, '国家税务总局大连市沙河口区税务局白山路税务所', 38.9101, 121.6, 2, 3);
INSERT INTO `all_public` VALUES (3011, '消费者协会投诉站12315申诉举报联络站', 38.9444, 121.578, 2, 3);
INSERT INTO `all_public` VALUES (3012, '李家地区安全社区促进中心', 38.9427, 121.578, 2, 3);
INSERT INTO `all_public` VALUES (3013, '办税服务厅', 38.9462, 121.585, 2, 3);
INSERT INTO `all_public` VALUES (3014, '中共大连市委高等学校工作委员会', 38.9172, 121.605, 2, 3);
INSERT INTO `all_public` VALUES (3015, '大连市沙河口区李家街道总工会', 38.9494, 121.564, 2, 3);
INSERT INTO `all_public` VALUES (3016, '大连东沙河口区锦虹园住宅小区业主委员会', 38.9493, 121.556, 2, 3);
INSERT INTO `all_public` VALUES (3017, '宁波千义液压东北办事处', 38.9484, 121.583, 2, 3);
INSERT INTO `all_public` VALUES (3018, '李家街道锦霞社区委员会', 38.9475, 121.553, 2, 3);
INSERT INTO `all_public` VALUES (3019, '大连市沙河口区人大常委会中山公园街道工作委员会', 38.9206, 121.605, 2, 3);
INSERT INTO `all_public` VALUES (3020, '大连市沙河口区诉调对接中心', 38.9375, 121.576, 2, 3);
INSERT INTO `all_public` VALUES (3021, '中国共产党大连市沙河口区春柳街道工作委员会', 38.9447, 121.581, 2, 3);
INSERT INTO `all_public` VALUES (3022, '泰安社区警务区矛盾纠纷调解室', 38.9454, 121.586, 2, 3);
INSERT INTO `all_public` VALUES (3023, '中海·天赋山管理处', 38.9399, 121.566, 2, 3);
INSERT INTO `all_public` VALUES (3024, '大连华润燃气有限公司稽查大队', 38.9367, 121.591, 2, 3);
INSERT INTO `all_public` VALUES (3025, '中山公园派出所外国人服务工作站', 38.9167, 121.609, 2, 3);
INSERT INTO `all_public` VALUES (3026, '大连市沙河口区人民法院', 38.9375, 121.576, 2, 3);
INSERT INTO `all_public` VALUES (3027, '医保科办公室', 38.9422, 121.582, 2, 3);
INSERT INTO `all_public` VALUES (3028, '综合治理管理服务站', 38.9434, 121.572, 2, 3);
INSERT INTO `all_public` VALUES (3029, '护林防火', 38.9428, 121.563, 2, 3);
INSERT INTO `all_public` VALUES (3030, '大连市示范项目领导小组节能与新能源汽车办公室', 38.9209, 121.606, 2, 3);
INSERT INTO `all_public` VALUES (3031, '大连市青少年才艺指导委员会', 38.9203, 121.605, 2, 3);
INSERT INTO `all_public` VALUES (3032, '李家街道综治中心', 38.9474, 121.553, 2, 3);
INSERT INTO `all_public` VALUES (3033, '沙河口区公安局闪电报警中心建兴花园小区二级接警站', 38.9064, 121.603, 2, 3);
INSERT INTO `all_public` VALUES (3034, '大连市市场监督管理局消保中心', 38.9116, 121.603, 2, 3);
INSERT INTO `all_public` VALUES (3035, '辽宁工业大学汽车维修与检测专业大连助学工作站', 38.9189, 121.604, 2, 3);
INSERT INTO `all_public` VALUES (3036, '大连市西安路开发建设管理办公室', 38.9075, 121.602, 2, 3);
INSERT INTO `all_public` VALUES (3037, '五一广场派出所流动人口管理服务站', 38.9239, 121.607, 2, 3);
INSERT INTO `all_public` VALUES (3038, '白山路派出所中山路社区中心警务室矛盾纠纷调解室', 38.9049, 121.604, 2, 3);
INSERT INTO `all_public` VALUES (3039, '李家街道综治信访维稳中心', 38.9428, 121.572, 2, 3);
INSERT INTO `all_public` VALUES (3040, '李家街道应急宣教中心暨应急体验馆', 38.9427, 121.578, 2, 3);
INSERT INTO `all_public` VALUES (3041, '大连市慈善会义务工作者分会儿童保护驿站', 38.9387, 121.59, 2, 3);
INSERT INTO `all_public` VALUES (3042, '文园社区流动人口管理服务站', 38.9443, 121.579, 2, 3);
INSERT INTO `all_public` VALUES (3043, '锦霞社区流动人口管理服务站', 38.9475, 121.553, 2, 3);
INSERT INTO `all_public` VALUES (3044, '大连市保险消费者权益保护分中心(白山路)', 38.9123, 121.6, 2, 3);
INSERT INTO `all_public` VALUES (3045, '心连心民情联络站', 38.9499, 121.579, 2, 3);
INSERT INTO `all_public` VALUES (3046, '沙园警务区矛盾纠纷调解室', 38.942, 121.586, 2, 3);
INSERT INTO `all_public` VALUES (3047, '大连市路灯管理处第二路灯管理所', 38.9391, 121.579, 2, 3);
INSERT INTO `all_public` VALUES (3048, '李家街道绿波社区流动人口出租房屋管理服务站', 38.9434, 121.572, 2, 3);
INSERT INTO `all_public` VALUES (3049, '大连市沙河口区中山公园街道总工会', 38.9206, 121.605, 2, 3);
INSERT INTO `all_public` VALUES (3050, '大连市沙河口区李家街道社会组织服务中心', 38.9474, 121.553, 2, 3);
INSERT INTO `all_public` VALUES (3051, '工商行政管理', 38.9476, 121.561, 2, 3);
INSERT INTO `all_public` VALUES (3052, '沙园社区劳动保障工作站', 38.9421, 121.586, 2, 3);
INSERT INTO `all_public` VALUES (3053, '春柳街道刘家桥社区托老所', 38.9518, 121.583, 2, 3);
INSERT INTO `all_public` VALUES (3054, '牡丹江市人民政府驻大连办事处乡友会馆', 38.924, 121.609, 2, 3);
INSERT INTO `all_public` VALUES (3055, '白山路街道劳动保障事务所(白山路街道办事处东)', 38.9053, 121.602, 2, 3);
INSERT INTO `all_public` VALUES (3056, '李家街道锦苑社区流动人口出租房屋管理服务站', 38.9449, 121.568, 2, 3);
INSERT INTO `all_public` VALUES (3057, '新智联招商办公室', 38.949, 121.579, 2, 3);
INSERT INTO `all_public` VALUES (3058, '春柳街道外来流动人口和出租房屋管理服务中心', 38.9406, 121.587, 2, 3);
INSERT INTO `all_public` VALUES (3059, '市场招商办公室', 38.9425, 121.575, 2, 3);
INSERT INTO `all_public` VALUES (3060, '锦苑社区劳动保障工作站', 38.945, 121.568, 2, 3);
INSERT INTO `all_public` VALUES (3061, '大连市沙河口区春柳街道办事处大学生见习基地', 38.9412, 121.587, 2, 3);
INSERT INTO `all_public` VALUES (3062, '泰安社区劳动保障工作站(华北路)', 38.946, 121.585, 2, 3);
INSERT INTO `all_public` VALUES (3063, '李家街派出所', 38.9427, 121.579, 2, 3);
INSERT INTO `all_public` VALUES (3064, '春柳街道人民调解委员会', 38.9421, 121.586, 2, 3);
INSERT INTO `all_public` VALUES (3065, '刘家桥社区劳动保障工作站(香周路)', 38.9518, 121.582, 2, 3);
INSERT INTO `all_public` VALUES (3066, '大连市沙河口区南松路垃圾移动压缩站沙河口区环境卫生管理处', 38.9527, 121.552, 2, 3);
INSERT INTO `all_public` VALUES (3067, '中山公园街道创业发展服务中心', 38.9162, 121.606, 2, 3);
INSERT INTO `all_public` VALUES (3068, '沙区巿场监督管理局', 38.9198, 121.6, 2, 3);
INSERT INTO `all_public` VALUES (3069, '大连市沙河口区交警大队', 38.9261, 121.554, 2, 3);
INSERT INTO `all_public` VALUES (3070, '锦绣派出所', 38.9468, 121.561, 2, 3);
INSERT INTO `all_public` VALUES (3071, '沙河口工商分局红盾维权进社区联系点', 38.9433, 121.563, 2, 3);
INSERT INTO `all_public` VALUES (3072, '大连市沙河口区人民政府李家街道', 38.9494, 121.564, 2, 3);
INSERT INTO `all_public` VALUES (3073, '大连市公安局沙河口分局', 38.9084, 121.568, 2, 3);
INSERT INTO `all_public` VALUES (3074, '大连市白山路派出所', 38.9125, 121.599, 2, 3);
INSERT INTO `all_public` VALUES (3075, '春柳街派出所', 38.951, 121.585, 2, 3);
INSERT INTO `all_public` VALUES (3076, '大连市机电设备招标中心', 38.9209, 121.606, 2, 3);
INSERT INTO `all_public` VALUES (3077, '中共大连市沙河口区委党校', 38.9231, 121.563, 2, 3);
INSERT INTO `all_public` VALUES (3078, '电业逸彩园', 38.9272, 121.563, 2, 3);
INSERT INTO `all_public` VALUES (3079, '幸福派出所', 38.9134, 121.584, 2, 3);
INSERT INTO `all_public` VALUES (3080, '大连市公安局巡警支队', 38.916, 121.603, 2, 3);
INSERT INTO `all_public` VALUES (3081, '沙河口分局侯家派出所', 38.9391, 121.582, 2, 3);
INSERT INTO `all_public` VALUES (3082, '春柳街道沙园社区', 38.9421, 121.586, 2, 3);
INSERT INTO `all_public` VALUES (3083, '大连市沙河口区春柳街道敦煌社区居民委员会', 38.939, 121.59, 2, 3);
INSERT INTO `all_public` VALUES (3084, '福园社区居委会', 38.9468, 121.577, 2, 3);
INSERT INTO `all_public` VALUES (3085, '锦华社区居民委员会', 38.9482, 121.546, 2, 3);
INSERT INTO `all_public` VALUES (3086, '李家街派出所二代身份证办理', 38.9427, 121.579, 2, 3);
INSERT INTO `all_public` VALUES (3087, '大连市沙河口区春柳街道沙龙社区居民委员会', 38.936, 121.591, 2, 3);
INSERT INTO `all_public` VALUES (3088, '侯家派出所新型社区警务室', 38.9375, 121.585, 2, 3);
INSERT INTO `all_public` VALUES (3089, '沙河口分局巡逻警大队直属十一中队', 38.9446, 121.58, 2, 3);
INSERT INTO `all_public` VALUES (3090, '春柳街派出所大连市第三中学校园警务室', 38.9434, 121.588, 2, 3);
INSERT INTO `all_public` VALUES (3091, '辽宁省电子商务产品质量监督检验中心', 38.9188, 121.601, 2, 3);
INSERT INTO `all_public` VALUES (3092, '沙河口区捐助物资调剂中心', 38.9204, 121.601, 2, 3);
INSERT INTO `all_public` VALUES (3093, '中山公园应急避难所', 38.9189, 121.606, 2, 3);
INSERT INTO `all_public` VALUES (3094, '公安警务室', 38.9274, 121.608, 2, 3);
INSERT INTO `all_public` VALUES (3095, '莲花山社区', 38.9012, 121.602, 2, 3);
INSERT INTO `all_public` VALUES (3096, '大连市西岗区居家养老服务综合示范中心', 38.9042, 121.607, 2, 3);
INSERT INTO `all_public` VALUES (3097, '亿光年旅居养老', 38.8935, 121.599, 2, 3);
INSERT INTO `all_public` VALUES (3098, '大连市弱视儿童救助中心', 38.9421, 121.571, 2, 3);
INSERT INTO `all_public` VALUES (3099, '福寿之家(锦绣店)', 38.9502, 121.554, 2, 3);
INSERT INTO `all_public` VALUES (3100, '沙河口区司法局春柳司法所', 38.9409, 121.587, 2, 3);
INSERT INTO `all_public` VALUES (3101, '李家地区社会治安综合治理委员会办公室', 38.9429, 121.572, 2, 3);
INSERT INTO `all_public` VALUES (3102, '锦绣派出所锦华北社区警务工作站', 38.9498, 121.55, 2, 3);
INSERT INTO `all_public` VALUES (3103, '春柳派出所刘家桥社区警务室', 38.9519, 121.582, 2, 3);
INSERT INTO `all_public` VALUES (3104, '富泰旅居养老服务中心', 38.9467, 121.579, 2, 3);
INSERT INTO `all_public` VALUES (3105, '凯瑟王国酒庄办事处', 38.9253, 121.603, 2, 3);
INSERT INTO `all_public` VALUES (3106, '大连市总工会职工服务之家', 38.939, 121.594, 2, 3);
INSERT INTO `all_public` VALUES (3107, '大连市公安局西岗分局涉众型案件工作室', 38.9205, 121.612, 2, 3);
INSERT INTO `all_public` VALUES (3108, '白山路派出所流动人口管理服务站', 38.9013, 121.602, 2, 3);
INSERT INTO `all_public` VALUES (3109, '李家街派出所绿苑社区警务室', 38.9377, 121.576, 2, 3);
INSERT INTO `all_public` VALUES (3110, '锦绣派出所锦霞社区警务室', 38.9519, 121.552, 2, 3);
INSERT INTO `all_public` VALUES (3111, '春柳街派出所泰安社区中心警务室', 38.946, 121.585, 2, 3);
INSERT INTO `all_public` VALUES (3112, '大连市第二十高级中学', 38.9993, 121.626, 3, 0);
INSERT INTO `all_public` VALUES (3113, '大连职业技术学院', 39.0276, 121.497, 3, 0);
INSERT INTO `all_public` VALUES (3114, '大连医科大学中山学院', 38.8595, 121.519, 3, 0);
INSERT INTO `all_public` VALUES (3115, '大连市第二十五中学', 39.0327, 121.646, 3, 0);
INSERT INTO `all_public` VALUES (3116, '高新区中心小学', 38.8349, 121.506, 3, 0);
INSERT INTO `all_public` VALUES (3117, '辽宁警察学院', 38.9707, 121.336, 3, 0);
INSERT INTO `all_public` VALUES (3118, '大连市第十一中学', 38.9863, 121.636, 3, 0);
INSERT INTO `all_public` VALUES (3119, '大连市第七十七中学', 38.9844, 121.637, 3, 0);
INSERT INTO `all_public` VALUES (3120, '大连育文中学(第五郡校区)', 38.9551, 121.528, 3, 0);
INSERT INTO `all_public` VALUES (3121, '大连博思中学', 39.019, 121.64, 3, 0);
INSERT INTO `all_public` VALUES (3122, '大连博伦中学', 39.0069, 121.628, 3, 0);
INSERT INTO `all_public` VALUES (3123, '大连理工大学', 38.8881, 121.531, 3, 0);
INSERT INTO `all_public` VALUES (3124, '大连东软信息学院', 38.8993, 121.543, 3, 0);
INSERT INTO `all_public` VALUES (3125, '甘井子区奥林小学', 39.0045, 121.605, 3, 0);
INSERT INTO `all_public` VALUES (3126, '大连高新园区第一中学', 38.8436, 121.518, 3, 0);
INSERT INTO `all_public` VALUES (3127, '大连市甘井子区泉水小学', 39.017, 121.614, 3, 0);
INSERT INTO `all_public` VALUES (3128, '大连市第七十六中学', 38.9766, 121.604, 3, 0);
INSERT INTO `all_public` VALUES (3129, '大连市甘井子区周水子第二小学', 38.9548, 121.583, 3, 0);
INSERT INTO `all_public` VALUES (3130, '大连市鉴开中学', 38.9869, 121.648, 3, 0);
INSERT INTO `all_public` VALUES (3131, '大连市第十八中学', 38.9641, 121.535, 3, 0);
INSERT INTO `all_public` VALUES (3132, '大连市甘井子区教师进修学校', 38.9667, 121.594, 3, 0);
INSERT INTO `all_public` VALUES (3133, '大连市第八十中学(亿达校区)', 38.9567, 121.589, 3, 0);
INSERT INTO `all_public` VALUES (3134, '大连金桥高级中学', 38.9669, 121.506, 3, 0);
INSERT INTO `all_public` VALUES (3135, '大连商业学校', 38.9534, 121.576, 3, 0);
INSERT INTO `all_public` VALUES (3136, '大连枫叶职业技术学院', 38.9669, 121.314, 3, 0);
INSERT INTO `all_public` VALUES (3137, '宋家小学', 39.0311, 121.69, 3, 0);
INSERT INTO `all_public` VALUES (3138, '大连华南中学', 38.9922, 121.594, 3, 0);
INSERT INTO `all_public` VALUES (3139, '龙泉小学', 39.0013, 121.631, 3, 0);
INSERT INTO `all_public` VALUES (3140, '大连湾小学', 39.0182, 121.728, 3, 0);
INSERT INTO `all_public` VALUES (3141, '中国大连高级经理学院', 38.8911, 121.531, 3, 0);
INSERT INTO `all_public` VALUES (3142, '椒房小学', 38.9769, 121.617, 3, 0);
INSERT INTO `all_public` VALUES (3143, '大连理工大学附属学校(圣克拉校区)', 38.9013, 121.536, 3, 0);
INSERT INTO `all_public` VALUES (3144, '海燕第二小学', 38.9781, 121.649, 3, 0);
INSERT INTO `all_public` VALUES (3145, '大连市第八十中学(大纺校区)', 38.9636, 121.596, 3, 0);
INSERT INTO `all_public` VALUES (3146, '大连市甘井子区锦泉小学', 39.0121, 121.619, 3, 0);
INSERT INTO `all_public` VALUES (3147, '大房身小学', 39.0591, 121.703, 3, 0);
INSERT INTO `all_public` VALUES (3148, '魅力小学', 38.9962, 121.518, 3, 0);
INSERT INTO `all_public` VALUES (3149, '大连东软信息学院-三期', 38.9031, 121.541, 3, 0);
INSERT INTO `all_public` VALUES (3150, '嘉汇三中', 38.9734, 121.588, 3, 0);
INSERT INTO `all_public` VALUES (3151, '大连市保安职业培训学校', 39.055, 121.706, 3, 0);
INSERT INTO `all_public` VALUES (3152, '龙鸣学校', 38.9988, 121.598, 3, 0);
INSERT INTO `all_public` VALUES (3153, '骥才文化艺术培训学校(泉水校区)', 39.0106, 121.617, 3, 0);
INSERT INTO `all_public` VALUES (3154, '大连海事大学-附属学校', 38.8796, 121.536, 3, 0);
INSERT INTO `all_public` VALUES (3155, '大连市甘井子区夏家河子小学', 39.0292, 121.516, 3, 0);
INSERT INTO `all_public` VALUES (3156, '恒嘉小学', 39.0369, 121.711, 3, 0);
INSERT INTO `all_public` VALUES (3157, '76中分校(西苑分校)', 38.9761, 121.6, 3, 0);
INSERT INTO `all_public` VALUES (3158, '大连市第八十中学(钻石湾校区)', 38.9623, 121.618, 3, 0);
INSERT INTO `all_public` VALUES (3159, '大连理工大学附属高级中学', 38.9001, 121.537, 3, 0);
INSERT INTO `all_public` VALUES (3160, '千山路小学', 38.982, 121.592, 3, 0);
INSERT INTO `all_public` VALUES (3161, '大连甘井子育红文化培训学校', 39.0254, 121.607, 3, 0);
INSERT INTO `all_public` VALUES (3162, '新起点环球服装学校(大连学区)', 39.0869, 121.689, 3, 0);
INSERT INTO `all_public` VALUES (3163, '义方培训学校', 38.9868, 121.589, 3, 0);
INSERT INTO `all_public` VALUES (3164, '大风车学校', 38.9895, 121.582, 3, 0);
INSERT INTO `all_public` VALUES (3165, '维顿学校', 39.0009, 121.616, 3, 0);
INSERT INTO `all_public` VALUES (3166, '大连芭黎优宠教育培训学校', 39.01, 121.634, 3, 0);
INSERT INTO `all_public` VALUES (3167, '骏腾艺术培训学校', 39.0009, 121.61, 3, 0);
INSERT INTO `all_public` VALUES (3168, '大连风华培训学校', 38.9897, 121.585, 3, 0);
INSERT INTO `all_public` VALUES (3169, '艺昇文化艺术培训学校', 39.005, 121.595, 3, 0);
INSERT INTO `all_public` VALUES (3170, '舞之韵舞蹈培训学校', 39.0119, 121.612, 3, 0);
INSERT INTO `all_public` VALUES (3171, '格瑞特教育(华南分校)', 39.0025, 121.595, 3, 0);
INSERT INTO `all_public` VALUES (3172, '科苑学校(山东路校区)', 38.9994, 121.593, 3, 0);
INSERT INTO `all_public` VALUES (3173, '宏泽学校', 38.9798, 121.635, 3, 0);
INSERT INTO `all_public` VALUES (3174, '向阳花文化艺术培训学校', 38.9882, 121.607, 3, 0);
INSERT INTO `all_public` VALUES (3175, '博而思培训学校', 38.9944, 121.597, 3, 0);
INSERT INTO `all_public` VALUES (3176, '通达驾校', 39.0442, 121.612, 3, 0);
INSERT INTO `all_public` VALUES (3177, '大连宇辰培训学校', 39.0244, 121.726, 3, 0);
INSERT INTO `all_public` VALUES (3178, '维顿学校(檀境校区)', 39.0409, 121.663, 3, 0);
INSERT INTO `all_public` VALUES (3179, '阳光宝贝培训学校', 38.9832, 121.56, 3, 0);
INSERT INTO `all_public` VALUES (3180, '博山英文学校', 38.992, 121.59, 3, 0);
INSERT INTO `all_public` VALUES (3181, '盐岛小学', 39.0279, 121.648, 3, 0);
INSERT INTO `all_public` VALUES (3182, '天鹅艺术学校', 39.0252, 121.722, 3, 0);
INSERT INTO `all_public` VALUES (3183, '泰伦特少儿英语', 39.0119, 121.612, 3, 0);
INSERT INTO `all_public` VALUES (3184, '快乐满天星文化艺术培训学校', 39.0036, 121.605, 3, 0);
INSERT INTO `all_public` VALUES (3185, '大连金色少年文化艺术培训学校(华南学校)', 38.9949, 121.594, 3, 0);
INSERT INTO `all_public` VALUES (3186, '大连良师文化艺术培训学校', 38.985, 121.586, 3, 0);
INSERT INTO `all_public` VALUES (3187, '尚学堂文化艺术培训学校', 39.0124, 121.616, 3, 0);
INSERT INTO `all_public` VALUES (3188, '大连外事服务职业中等专业学校', 38.9936, 121.663, 3, 0);
INSERT INTO `all_public` VALUES (3189, '博亚培训学校', 39.0131, 121.619, 3, 0);
INSERT INTO `all_public` VALUES (3190, '兰州拉面汽车学院', 39.0224, 121.631, 3, 0);
INSERT INTO `all_public` VALUES (3191, '恒嘉小学-育智楼', 39.0382, 121.71, 3, 0);
INSERT INTO `all_public` VALUES (3192, '大连职业技术学院-第三教学楼', 39.03, 121.61, 3, 0);
INSERT INTO `all_public` VALUES (3193, '星之彩舞蹈艺术(福佳校区)', 39.0379, 121.676, 3, 0);
INSERT INTO `all_public` VALUES (3194, '通达驾校(天河路训练场)', 38.9884, 121.603, 3, 0);
INSERT INTO `all_public` VALUES (3195, '百科教育培训中心(珍珠泉路)', 39.0042, 121.61, 3, 0);
INSERT INTO `all_public` VALUES (3196, '大连市甘井子区六艺文化艺术培训学校有限公司', 39.0441, 121.668, 3, 0);
INSERT INTO `all_public` VALUES (3197, '大连政府补贴免费培训机构', 38.9938, 121.601, 3, 0);
INSERT INTO `all_public` VALUES (3198, '大连市劳动和社会保障局技师学院', 38.9932, 121.668, 3, 0);
INSERT INTO `all_public` VALUES (3199, '大连职业技术学院学生公寓-1号楼', 39.0276, 121.609, 3, 0);
INSERT INTO `all_public` VALUES (3200, '大连职业技术学院学生公寓', 39.0294, 121.609, 3, 0);
INSERT INTO `all_public` VALUES (3201, '大连职业技术学院学生公寓-5号楼', 39.0296, 121.61, 3, 0);
INSERT INTO `all_public` VALUES (3202, '博雅中学操场应急避难所', 38.9955, 121.585, 3, 0);
INSERT INTO `all_public` VALUES (3203, '大连市第七人民医院', 38.882, 121.529, 3, 1);
INSERT INTO `all_public` VALUES (3204, '大连市第三人民医院', 38.9861, 121.585, 3, 1);
INSERT INTO `all_public` VALUES (3205, '大连市第六人民医院', 39.0571, 121.629, 3, 1);
INSERT INTO `all_public` VALUES (3206, '大连医科大学附属第二医院(钻石湾院区)', 38.9839, 121.649, 3, 1);
INSERT INTO `all_public` VALUES (3207, '大连市甘井子区南关岭地区医院', 39.0255, 121.61, 3, 1);
INSERT INTO `all_public` VALUES (3208, '凌水地区医院', 38.8833, 121.53, 3, 1);
INSERT INTO `all_public` VALUES (3209, '大连市第四人民医院', 38.9757, 121.614, 3, 1);
INSERT INTO `all_public` VALUES (3210, '大连辽渔医院', 39.0311, 121.716, 3, 1);
INSERT INTO `all_public` VALUES (3211, '大连市第二人民医院分院', 38.9768, 121.565, 3, 1);
INSERT INTO `all_public` VALUES (3212, '大连市妇女儿童医疗中心', 39.0187, 121.565, 3, 1);
INSERT INTO `all_public` VALUES (3213, '大连海事大学医院', 38.8792, 121.538, 3, 1);
INSERT INTO `all_public` VALUES (3214, '大连市甘井子区革镇堡地区医院', 39.0177, 121.536, 3, 1);
INSERT INTO `all_public` VALUES (3215, '大连湾地区医院', 39.0594, 121.7, 3, 1);
INSERT INTO `all_public` VALUES (3216, '大连医科大学附属一院', 38.9622, 121.586, 3, 1);
INSERT INTO `all_public` VALUES (3217, '甘井子区妇幼保健院', 38.9751, 121.589, 3, 1);
INSERT INTO `all_public` VALUES (3218, '大化集团医院', 38.9832, 121.622, 3, 1);
INSERT INTO `all_public` VALUES (3219, '大连德澜医院', 38.936, 121.535, 3, 1);
INSERT INTO `all_public` VALUES (3220, '大化医院', 38.9829, 121.632, 3, 1);
INSERT INTO `all_public` VALUES (3221, '牟接骨', 38.9616, 121.597, 3, 1);
INSERT INTO `all_public` VALUES (3222, '辽宁中医药大学附属二院医联体医院', 38.9992, 121.59, 3, 1);
INSERT INTO `all_public` VALUES (3223, '大连国礼医院', 38.9723, 121.332, 3, 1);
INSERT INTO `all_public` VALUES (3224, '大连爱尔眼科医院', 38.9878, 121.589, 3, 1);
INSERT INTO `all_public` VALUES (3225, '大连北市集团公司医院', 39.0242, 121.604, 3, 1);
INSERT INTO `all_public` VALUES (3226, '大连理工大学医院', 38.8862, 121.531, 3, 1);
INSERT INTO `all_public` VALUES (3227, '大连森智中医医院', 38.9993, 121.591, 3, 1);
INSERT INTO `all_public` VALUES (3228, '大连市结核病医院(南院区)', 39.0588, 121.628, 3, 1);
INSERT INTO `all_public` VALUES (3229, '大连医科大学附属口腔医院', 38.878, 121.545, 3, 1);
INSERT INTO `all_public` VALUES (3230, '大连市老年病医院', 38.9867, 121.619, 3, 1);
INSERT INTO `all_public` VALUES (3231, '辛寨子地区医院', 38.9842, 121.496, 3, 1);
INSERT INTO `all_public` VALUES (3232, '大连盛合肾脏病专科医院', 38.8673, 121.521, 3, 1);
INSERT INTO `all_public` VALUES (3233, '大连金家街东方医院', 38.973, 121.603, 3, 1);
INSERT INTO `all_public` VALUES (3234, '大连辛寨子中西医结合医院-门诊大楼', 38.9721, 121.519, 3, 1);
INSERT INTO `all_public` VALUES (3235, '大连六院', 39.0562, 121.629, 3, 1);
INSERT INTO `all_public` VALUES (3236, '大连华联善古堂中医医院', 38.9724, 121.6, 3, 1);
INSERT INTO `all_public` VALUES (3237, '辛寨子地区医院', 38.9633, 121.521, 3, 1);
INSERT INTO `all_public` VALUES (3238, '大连首佳儿童医院泉水儿科', 39.0162, 121.615, 3, 1);
INSERT INTO `all_public` VALUES (3239, '社区医院', 38.9926, 121.583, 3, 1);
INSERT INTO `all_public` VALUES (3240, '牟氏医院', 38.9617, 121.597, 3, 1);
INSERT INTO `all_public` VALUES (3241, '营城子地区医院', 38.9875, 121.385, 3, 1);
INSERT INTO `all_public` VALUES (3242, '大连市心理医院门诊楼', 38.8823, 121.529, 3, 1);
INSERT INTO `all_public` VALUES (3243, '大连首佳儿童医院', 38.9578, 121.586, 3, 1);
INSERT INTO `all_public` VALUES (3244, '七贤岭社区卫生服务中心', 38.8679, 121.532, 3, 1);
INSERT INTO `all_public` VALUES (3245, '大连儿童医院(山东路分部)', 38.9639, 121.585, 3, 1);
INSERT INTO `all_public` VALUES (3246, '何氏眼科', 38.9971, 121.598, 3, 1);
INSERT INTO `all_public` VALUES (3247, '山东路仁爱医院', 38.9864, 121.588, 3, 1);
INSERT INTO `all_public` VALUES (3248, '经适房社区卫生服务站预防保健部', 39.0219, 121.645, 3, 1);
INSERT INTO `all_public` VALUES (3249, '大化医院职业病区', 38.9836, 121.623, 3, 1);
INSERT INTO `all_public` VALUES (3250, '佳丽雅口腔', 38.9807, 121.523, 3, 1);
INSERT INTO `all_public` VALUES (3251, '大连市第四人民医院-4号楼', 38.9755, 121.614, 3, 1);
INSERT INTO `all_public` VALUES (3252, '明远口腔', 38.9664, 121.523, 3, 1);
INSERT INTO `all_public` VALUES (3253, '河口社区卫生服务站', 38.854, 121.524, 3, 1);
INSERT INTO `all_public` VALUES (3254, '大连市第七人民医院-1号楼', 38.8822, 121.529, 3, 1);
INSERT INTO `all_public` VALUES (3255, '龙畔金泉社区卫生服务中心', 39.0108, 121.631, 3, 1);
INSERT INTO `all_public` VALUES (3256, '英达口腔', 38.9794, 121.563, 3, 1);
INSERT INTO `all_public` VALUES (3257, '烨琳医疗美容', 38.9513, 121.531, 3, 1);
INSERT INTO `all_public` VALUES (3258, '艺仁医疗美容', 39.004, 121.594, 3, 1);
INSERT INTO `all_public` VALUES (3259, '大连市第三人民医院-职工礼堂', 38.9864, 121.583, 3, 1);
INSERT INTO `all_public` VALUES (3260, '大连市第四人民医院-5号楼', 38.9758, 121.614, 3, 1);
INSERT INTO `all_public` VALUES (3261, '大连市第四人民医院-6号楼', 38.9759, 121.613, 3, 1);
INSERT INTO `all_public` VALUES (3262, '大连市第七人民医院-2号楼', 38.8821, 121.53, 3, 1);
INSERT INTO `all_public` VALUES (3263, '大连甘井子逸森医院', 38.978, 121.609, 3, 1);
INSERT INTO `all_public` VALUES (3264, '多美达医疗美容', 39.0083, 121.597, 3, 1);
INSERT INTO `all_public` VALUES (3265, '晟祥口腔(大连市甘井子前革二部)', 38.9958, 121.524, 3, 1);
INSERT INTO `all_public` VALUES (3266, '雅致口腔', 38.9601, 121.606, 3, 1);
INSERT INTO `all_public` VALUES (3267, '大连甘井子泉水社区卫生服务中心', 39.0109, 121.607, 3, 1);
INSERT INTO `all_public` VALUES (3268, '大连市第七人民医院-4号楼', 38.8817, 121.529, 3, 1);
INSERT INTO `all_public` VALUES (3269, '大连香佳琪尔医疗美容', 38.9657, 121.531, 3, 1);
INSERT INTO `all_public` VALUES (3270, '大连市第四人民医院-1号楼', 38.9756, 121.613, 3, 1);
INSERT INTO `all_public` VALUES (3271, '大连市第四人民医院-3号楼', 38.9753, 121.613, 3, 1);
INSERT INTO `all_public` VALUES (3272, '大连国际机场医院', 38.967, 121.556, 3, 1);
INSERT INTO `all_public` VALUES (3273, '膏药陆骨科', 38.9305, 121.552, 3, 1);
INSERT INTO `all_public` VALUES (3274, '膏药章骨科', 38.9863, 121.552, 3, 1);
INSERT INTO `all_public` VALUES (3275, '甘井子区大东沟社区卫生服务站', 38.9815, 121.469, 3, 1);
INSERT INTO `all_public` VALUES (3276, '美林园社区卫生服务站', 38.9802, 121.529, 3, 1);
INSERT INTO `all_public` VALUES (3277, '南山社区卫生服务站(南华街)', 38.9558, 121.545, 3, 1);
INSERT INTO `all_public` VALUES (3278, '周水子社区卫生服务中心(香周路)', 38.9532, 121.58, 3, 1);
INSERT INTO `all_public` VALUES (3279, '大连市口腔医院(山东路店)', 38.9868, 121.589, 3, 1);
INSERT INTO `all_public` VALUES (3280, '井西社区卫生服务站', 39.0268, 121.604, 3, 1);
INSERT INTO `all_public` VALUES (3281, '椒金山椒房社区卫生服务中心', 38.9771, 121.62, 3, 1);
INSERT INTO `all_public` VALUES (3282, '泡崖北区社区卫生服务中心', 38.9853, 121.552, 3, 1);
INSERT INTO `all_public` VALUES (3283, '甘中社区卫生服务中心', 38.9784, 121.634, 3, 1);
INSERT INTO `all_public` VALUES (3284, '红旗社区卫生服务中心', 38.935, 121.539, 3, 1);
INSERT INTO `all_public` VALUES (3285, '辽宁省甘井子区华西社区卫生服务中心', 38.988, 121.583, 3, 1);
INSERT INTO `all_public` VALUES (3286, '大连湾街道前盐社区服务中心', 39.0247, 121.657, 3, 1);
INSERT INTO `all_public` VALUES (3287, '甘井子兴华千山路社区卫生服务中心', 38.9826, 121.59, 3, 1);
INSERT INTO `all_public` VALUES (3288, '前革社区卫生服务站', 38.9931, 121.525, 3, 1);
INSERT INTO `all_public` VALUES (3289, '山东路社区卫生服务中心', 38.9798, 121.584, 3, 1);
INSERT INTO `all_public` VALUES (3290, '机场社区卫生服务中心', 38.9615, 121.565, 3, 1);
INSERT INTO `all_public` VALUES (3291, '山中社区卫生服务中心', 38.9833, 121.649, 3, 1);
INSERT INTO `all_public` VALUES (3292, '中革社区卫生服务站', 39.014, 121.537, 3, 1);
INSERT INTO `all_public` VALUES (3293, '泡崖北区社区卫生服务中心', 38.9835, 121.562, 3, 1);
INSERT INTO `all_public` VALUES (3294, '玉乐社区卫生服务站', 38.9835, 121.562, 3, 1);
INSERT INTO `all_public` VALUES (3295, '周水子社区卫生服务中心', 38.9601, 121.605, 3, 1);
INSERT INTO `all_public` VALUES (3296, '游崖门社区卫生服务站', 38.9859, 121.56, 3, 1);
INSERT INTO `all_public` VALUES (3297, '大黑石社区卫生服务站', 38.9687, 121.315, 3, 1);
INSERT INTO `all_public` VALUES (3298, '毛茔子社区卫生服务站', 39.0776, 121.677, 3, 1);
INSERT INTO `all_public` VALUES (3299, '万达广场(大连甘井子店)', 38.9549, 121.546, 3, 2);
INSERT INTO `all_public` VALUES (3300, '万达广场(大连高新店)', 38.8683, 121.54, 3, 2);
INSERT INTO `all_public` VALUES (3301, '万盛购物广场', 39.0237, 121.603, 3, 2);
INSERT INTO `all_public` VALUES (3302, '大连张前乐都汇购物中心(张前路店)', 38.9655, 121.528, 3, 2);
INSERT INTO `all_public` VALUES (3303, '东特购物广场', 38.9525, 121.575, 3, 2);
INSERT INTO `all_public` VALUES (3304, '安盛购物广场(华南店)', 38.995, 121.595, 3, 2);
INSERT INTO `all_public` VALUES (3305, '锦辉购物广场(奥莱店)', 38.8716, 121.539, 3, 2);
INSERT INTO `all_public` VALUES (3306, '亿合城购物中心', 38.9969, 121.594, 3, 2);
INSERT INTO `all_public` VALUES (3307, '瑞沃广场', 39.0116, 121.635, 3, 2);
INSERT INTO `all_public` VALUES (3308, '营城子商场', 38.9907, 121.392, 3, 2);
INSERT INTO `all_public` VALUES (3309, '百斯德·绿天地', 38.9979, 121.604, 3, 2);
INSERT INTO `all_public` VALUES (3310, '安盛·沃特时尚广场', 38.9963, 121.597, 3, 2);
INSERT INTO `all_public` VALUES (3311, '哈佛商场', 38.882, 121.525, 3, 2);
INSERT INTO `all_public` VALUES (3312, '阳光大地购物广场', 38.9844, 121.586, 3, 2);
INSERT INTO `all_public` VALUES (3313, '兴达商场', 38.9818, 121.632, 3, 2);
INSERT INTO `all_public` VALUES (3314, '欧尚广场-B2区', 39.0155, 121.637, 3, 2);
INSERT INTO `all_public` VALUES (3315, '商城花园购物中心B座(商城花园购物中心店)', 38.9752, 121.593, 3, 2);
INSERT INTO `all_public` VALUES (3316, '泡崖街道国际商贸城', 38.9749, 121.559, 3, 2);
INSERT INTO `all_public` VALUES (3317, '龙海商城', 38.8521, 121.525, 3, 2);
INSERT INTO `all_public` VALUES (3318, '泡崖商城', 38.9797, 121.558, 3, 2);
INSERT INTO `all_public` VALUES (3319, '孚林商贸购物广场', 38.9844, 121.586, 3, 2);
INSERT INTO `all_public` VALUES (3320, '高新万达锦辉商城', 38.8684, 121.54, 3, 2);
INSERT INTO `all_public` VALUES (3321, '商业中心', 39.0344, 121.708, 3, 2);
INSERT INTO `all_public` VALUES (3322, '欧尚广场-B3区', 39.0144, 121.637, 3, 2);
INSERT INTO `all_public` VALUES (3323, '伊德利·健康广场', 38.9618, 121.565, 3, 2);
INSERT INTO `all_public` VALUES (3324, '商城花园购物中心-C座', 38.9759, 121.592, 3, 2);
INSERT INTO `all_public` VALUES (3325, '软景中心-3号楼', 38.8934, 121.547, 3, 2);
INSERT INTO `all_public` VALUES (3326, '华南国际商城', 38.995, 121.6, 3, 2);
INSERT INTO `all_public` VALUES (3327, '润泰商场', 38.9912, 121.394, 3, 2);
INSERT INTO `all_public` VALUES (3328, '乐都汇4号楼', 38.965, 121.527, 3, 2);
INSERT INTO `all_public` VALUES (3329, '海创商业广场', 38.8657, 121.537, 3, 2);
INSERT INTO `all_public` VALUES (3330, '大连市甘井子区人民政府', 38.9585, 121.532, 3, 3);
INSERT INTO `all_public` VALUES (3331, '大连湾街道办事处', 39.0405, 121.714, 3, 3);
INSERT INTO `all_public` VALUES (3332, '大连市甘井子区教育局', 38.9656, 121.589, 3, 3);
INSERT INTO `all_public` VALUES (3333, '国家税务总局大连市甘井子区税务局山东路办公区', 38.9902, 121.59, 3, 3);
INSERT INTO `all_public` VALUES (3334, '甘井子区泡崖街道办事处', 38.9864, 121.561, 3, 3);
INSERT INTO `all_public` VALUES (3335, '大连市甘井子区椒金山街道办事处', 38.9746, 121.598, 3, 3);
INSERT INTO `all_public` VALUES (3336, '甘井子区大连湾街道办事处', 39.0405, 121.714, 3, 3);
INSERT INTO `all_public` VALUES (3337, '毛茔子村委会', 39.0776, 121.677, 3, 3);
INSERT INTO `all_public` VALUES (3338, '大连甘井子海事处', 38.9723, 121.648, 3, 3);
INSERT INTO `all_public` VALUES (3339, '大连市甘井子区南关岭街道办事处', 39.0228, 121.606, 3, 3);
INSERT INTO `all_public` VALUES (3340, '国家税务总局大连市甘井子区税务局大连湾税务所', 39.0398, 121.714, 3, 3);
INSERT INTO `all_public` VALUES (3341, '大连市行政服务中心办税服务厅', 38.9591, 121.61, 3, 3);
INSERT INTO `all_public` VALUES (3342, '大连市消防大队周水子中队', 38.9563, 121.575, 3, 3);
INSERT INTO `all_public` VALUES (3343, '大连市高新园区市场监督管理局', 38.8553, 121.524, 3, 3);
INSERT INTO `all_public` VALUES (3344, '大连湾派出所新大楼', 39.0438, 121.672, 3, 3);
INSERT INTO `all_public` VALUES (3345, '甘井子区税务局第一税务所(办税服务厅)', 38.9872, 121.589, 3, 3);
INSERT INTO `all_public` VALUES (3346, '大连湾工商所', 39.0402, 121.714, 3, 3);
INSERT INTO `all_public` VALUES (3347, '大连甘井子大连湾街道苏家社区人民调解委员会', 39.0878, 121.69, 3, 3);
INSERT INTO `all_public` VALUES (3348, '甘井子街道办', 38.9833, 121.648, 3, 3);
INSERT INTO `all_public` VALUES (3349, '姚宏社区人防工作站', 39.0272, 121.62, 3, 3);
INSERT INTO `all_public` VALUES (3350, '大连市甘井子区大连湾街道养老服务中心', 39.042, 121.716, 3, 3);
INSERT INTO `all_public` VALUES (3351, '大连市甘井子区革镇堡街道棋盘子村村务监督委员会', 39.0502, 121.576, 3, 3);
INSERT INTO `all_public` VALUES (3352, '物业中心', 39.0218, 121.645, 3, 3);
INSERT INTO `all_public` VALUES (3353, '中国边检', 39.0302, 121.717, 3, 3);
INSERT INTO `all_public` VALUES (3354, '前关村工会工作委员会', 39.044, 121.664, 3, 3);
INSERT INTO `all_public` VALUES (3355, '湾富广场管理办公室', 39.0211, 121.727, 3, 3);
INSERT INTO `all_public` VALUES (3356, '大连甘井子区市场和质量监督管理局大连湾市场监督管理所', 39.0402, 121.714, 3, 3);
INSERT INTO `all_public` VALUES (3357, '媒体看台区', 39.0274, 121.572, 3, 3);
INSERT INTO `all_public` VALUES (3358, '大连市甘井子区体育运动委员会', 38.9802, 121.63, 3, 3);
INSERT INTO `all_public` VALUES (3359, '中国共产党大连市甘井子区泉水街道工作委员会', 39.0112, 121.608, 3, 3);
INSERT INTO `all_public` VALUES (3360, '中共甘井子区泉水街道幸福社区党支部委员会', 39.005, 121.619, 3, 3);
INSERT INTO `all_public` VALUES (3361, '人民消防', 38.9815, 121.63, 3, 3);
INSERT INTO `all_public` VALUES (3362, '大连市道路客运管理处', 39.0428, 121.634, 3, 3);
INSERT INTO `all_public` VALUES (3363, '后盐高速收费口蓝鲨机动队', 39.0374, 121.642, 3, 3);
INSERT INTO `all_public` VALUES (3364, '中国共产党大连湾临海装备制造业聚集区工作委员会', 39.0407, 121.714, 3, 3);
INSERT INTO `all_public` VALUES (3365, '宋爱基地宋家村党总支', 39.0336, 121.688, 3, 3);
INSERT INTO `all_public` VALUES (3366, 'B1B4B5区业主委员会', 39.0131, 121.611, 3, 3);
INSERT INTO `all_public` VALUES (3367, '环卫绿化办花房班', 38.9922, 121.645, 3, 3);
INSERT INTO `all_public` VALUES (3368, '后盐村工会工作委员会', 39.0286, 121.647, 3, 3);
INSERT INTO `all_public` VALUES (3369, '去往市场大厅方向', 38.9929, 121.606, 3, 3);
INSERT INTO `all_public` VALUES (3370, '大连市公安局交通警察支队车辆管理所(中华路)', 38.9994, 121.643, 3, 3);
INSERT INTO `all_public` VALUES (3371, '大连甘井子大连湾街道宋家社区人民调解委员会', 39.0336, 121.688, 3, 3);
INSERT INTO `all_public` VALUES (3372, '临海装备制造业聚集区管理委员会', 39.0405, 121.714, 3, 3);
INSERT INTO `all_public` VALUES (3373, '大连市道路运输管理处稽查大队', 39.025, 121.631, 3, 3);
INSERT INTO `all_public` VALUES (3374, '太原市甘子井区国家税务局第八税务所', 39.0275, 121.601, 3, 3);
INSERT INTO `all_public` VALUES (3375, '刘金毓调解室', 39.0436, 121.713, 3, 3);
INSERT INTO `all_public` VALUES (3376, '出入库管理部', 39.0362, 121.636, 3, 3);
INSERT INTO `all_public` VALUES (3377, '大连金城物业管理有限公司光明山西街管理处', 38.9833, 121.637, 3, 3);
INSERT INTO `all_public` VALUES (3378, '泉水街道龙河社区人民调解委员会', 39.0164, 121.619, 3, 3);
INSERT INTO `all_public` VALUES (3379, '泉水街道创建安全社区办公室', 39.0113, 121.608, 3, 3);
INSERT INTO `all_public` VALUES (3380, '大化松江住宅小区管理委员会', 38.9856, 121.636, 3, 3);
INSERT INTO `all_public` VALUES (3381, '奥林社区-劳动保障工作站', 39.0065, 121.604, 3, 3);
INSERT INTO `all_public` VALUES (3382, '行政执法', 39.021, 121.615, 3, 3);
INSERT INTO `all_public` VALUES (3383, '绿园社区劳动保障工作站', 39.0225, 121.6, 3, 3);
INSERT INTO `all_public` VALUES (3384, '道路运政', 38.987, 121.62, 3, 3);
INSERT INTO `all_public` VALUES (3385, '今都小区微型消防站', 38.9869, 121.616, 3, 3);
INSERT INTO `all_public` VALUES (3386, '大连湾警务区矛盾纠纷调解室', 39.0267, 121.722, 3, 3);
INSERT INTO `all_public` VALUES (3387, '盐岛湖保安中队部', 39.0241, 121.658, 3, 3);
INSERT INTO `all_public` VALUES (3388, '大连市点金理财规划师协会(社区金融服务站)', 38.9816, 121.649, 3, 3);
INSERT INTO `all_public` VALUES (3389, '中共甘井子街道党委社会治安综合治理办公室甘峰社区工作站', 38.9789, 121.645, 3, 3);
INSERT INTO `all_public` VALUES (3390, '公路路政', 39.0441, 121.637, 3, 3);
INSERT INTO `all_public` VALUES (3391, '大连市兽药饲料监察所', 39.04, 121.631, 3, 3);
INSERT INTO `all_public` VALUES (3392, '卫生监管', 39.0399, 121.714, 3, 3);
INSERT INTO `all_public` VALUES (3393, '大连湾街道李家村人民调解委员会', 39.0371, 121.714, 3, 3);
INSERT INTO `all_public` VALUES (3394, '大连湾街道后关村反邪教协会工作小组', 39.0593, 121.649, 3, 3);
INSERT INTO `all_public` VALUES (3395, '甘井子城市保障服务中心', 38.983, 121.648, 3, 3);
INSERT INTO `all_public` VALUES (3396, '市场监督管理', 39.0172, 121.605, 3, 3);
INSERT INTO `all_public` VALUES (3397, '甘井子区大连湾街道宋家村劳动监察工作站', 39.0336, 121.688, 3, 3);
INSERT INTO `all_public` VALUES (3398, '市场办公室', 38.9928, 121.607, 3, 3);
INSERT INTO `all_public` VALUES (3399, '大连汽车客运总站泉水检查站', 39.0251, 121.632, 3, 3);
INSERT INTO `all_public` VALUES (3400, '大连市甘井子区大连湾街道劳动争议调解中心', 39.0403, 121.714, 3, 3);
INSERT INTO `all_public` VALUES (3401, '应急避难场所', 38.9938, 121.659, 3, 3);
INSERT INTO `all_public` VALUES (3402, '大连甘井子大连湾街道大房身社区人民调解委员会', 39.0564, 121.701, 3, 3);
INSERT INTO `all_public` VALUES (3403, '李家村旧城区改造项目筹备办公室', 39.0374, 121.705, 3, 3);
INSERT INTO `all_public` VALUES (3404, '大连湾南山生态园管理办公室', 39.0153, 121.732, 3, 3);
INSERT INTO `all_public` VALUES (3405, '南关岭街道爱心援助就业基地', 39.0235, 121.609, 3, 3);
INSERT INTO `all_public` VALUES (3406, '中交一公局', 39.077, 121.672, 3, 3);
INSERT INTO `all_public` VALUES (3407, '夏家河子房管所', 39.028, 121.501, 3, 3);
INSERT INTO `all_public` VALUES (3408, '甘井子区交警大队', 39.0153, 121.606, 3, 3);
INSERT INTO `all_public` VALUES (3409, '大连市公安局交警支队车管所', 39.0526, 121.618, 3, 3);
INSERT INTO `all_public` VALUES (3410, '大连市甘井子区人民法院', 38.9591, 121.533, 3, 3);
INSERT INTO `all_public` VALUES (3411, '中华路公安派出所', 38.9907, 121.586, 3, 3);
INSERT INTO `all_public` VALUES (3412, '大连市公安局高新园区分局', 38.8382, 121.513, 3, 3);
INSERT INTO `all_public` VALUES (3413, '凌水派出所', 38.8781, 121.532, 3, 3);
INSERT INTO `all_public` VALUES (3414, '大连市公安局甘井子分局', 38.9596, 121.531, 3, 3);
INSERT INTO `all_public` VALUES (3415, '大连市公安局甘井子分局辛寨子派出所', 38.9836, 121.496, 3, 3);
INSERT INTO `all_public` VALUES (3416, '大连市公安局治安支队', 38.982, 121.604, 3, 3);
INSERT INTO `all_public` VALUES (3417, '大连高新技术产业园区人民法院', 38.8554, 121.524, 3, 3);
INSERT INTO `all_public` VALUES (3418, '高新区出入境办事大厅', 38.863, 121.532, 3, 3);
INSERT INTO `all_public` VALUES (3419, '大连市公安消防局', 38.9555, 121.605, 3, 3);
INSERT INTO `all_public` VALUES (3420, '大连湾法庭', 39.0401, 121.714, 3, 3);
INSERT INTO `all_public` VALUES (3421, '大连湾派出所', 39.0438, 121.672, 3, 3);
INSERT INTO `all_public` VALUES (3422, '大连市甘井子区公证处', 38.9683, 121.595, 3, 3);
INSERT INTO `all_public` VALUES (3423, '甘井子分局海茂街派出所', 38.9829, 121.648, 3, 3);
INSERT INTO `all_public` VALUES (3424, '大连市农产品质量监测中心', 39.04, 121.631, 3, 3);
INSERT INTO `all_public` VALUES (3425, '交通警察支队高速公路第一大队大连工作站', 39.0373, 121.642, 3, 3);
INSERT INTO `all_public` VALUES (3426, '辽宁省大连市城郊地区人民检察院', 39.0453, 121.626, 3, 3);
INSERT INTO `all_public` VALUES (3427, '大连市甘井子分局治安大队', 38.9837, 121.598, 3, 3);
INSERT INTO `all_public` VALUES (3428, '椒金山派出所', 38.9749, 121.614, 3, 3);
INSERT INTO `all_public` VALUES (3429, '甘井子区南关岭街道井西社区居民委员会', 39.0276, 121.6, 3, 3);
INSERT INTO `all_public` VALUES (3430, '大连市公安局交通警察支队电子处罚中心', 38.9996, 121.644, 3, 3);
INSERT INTO `all_public` VALUES (3431, '大连市公安局交通警察支队大连湾公路巡逻中队', 39.0547, 121.688, 3, 3);
INSERT INTO `all_public` VALUES (3432, '大连市公安局内保支队', 38.999, 121.642, 3, 3);
INSERT INTO `all_public` VALUES (3433, '大连市公安局特警支队警务工作站管理大队', 39.0416, 121.633, 3, 3);
INSERT INTO `all_public` VALUES (3434, '大连湾派出所', 39.026, 121.747, 3, 3);
INSERT INTO `all_public` VALUES (3435, '大连市公安局交通警察支队特勤大队', 38.9998, 121.644, 3, 3);
INSERT INTO `all_public` VALUES (3436, '大连市公安局养犬管理稽查大队', 39.0396, 121.632, 3, 3);
INSERT INTO `all_public` VALUES (3437, '特有工种职业技能鉴定站', 38.9856, 121.647, 3, 3);
INSERT INTO `all_public` VALUES (3438, '大连湾边防派出所北山社区警务室', 39.038, 121.713, 3, 3);
INSERT INTO `all_public` VALUES (3439, '幸福老年之家', 39.004, 121.62, 3, 3);
INSERT INTO `all_public` VALUES (3440, '棋盘磨边防派出所棋盘警务室', 39.0515, 121.577, 3, 3);
INSERT INTO `all_public` VALUES (3441, '大连湾派出所前盐社区中心警务区', 39.0243, 121.655, 3, 3);
INSERT INTO `all_public` VALUES (3442, '大莲湾派出所后关社区中心警务室', 39.0592, 121.649, 3, 3);
INSERT INTO `all_public` VALUES (3443, '幸福老年之家', 38.991, 121.661, 3, 3);
INSERT INTO `all_public` VALUES (3444, '甘井子区椒金山街道金荣社区居民委员会', 38.9879, 121.604, 3, 3);
INSERT INTO `all_public` VALUES (3445, '大连市甘井子区人民检察院南关岭街道检察室', 39.0227, 121.606, 3, 3);
INSERT INTO `all_public` VALUES (3446, '桃花源生活方式构建者新锐智慧社区居家养老示范点', 38.9856, 121.63, 3, 3);
INSERT INTO `all_public` VALUES (3447, '万福山庄业主委员会', 38.9802, 121.62, 3, 3);
INSERT INTO `all_public` VALUES (3448, '大连市甘井子区大连湾镇土城子社区警务工作站', 39.0772, 121.65, 3, 3);
INSERT INTO `all_public` VALUES (3449, '南关岭派出所姚盛社区警务室', 39.0298, 121.622, 3, 3);
INSERT INTO `all_public` VALUES (3450, '甘井子公安分局大连湾派出所六院警务室', 39.0561, 121.628, 3, 3);
INSERT INTO `all_public` VALUES (3451, '水产品检测中心', 39.0371, 121.635, 3, 3);
INSERT INTO `all_public` VALUES (3452, '祥和养老中心', 39.0288, 121.622, 3, 3);
INSERT INTO `all_public` VALUES (3453, '老年之家', 38.9936, 121.667, 3, 3);
INSERT INTO `all_public` VALUES (3454, '苏家社区幸福老年之家', 39.0877, 121.69, 3, 3);
INSERT INTO `all_public` VALUES (3455, '亿海警务工作站', 39.0854, 121.68, 3, 3);
INSERT INTO `all_public` VALUES (3456, '大连湾派出所行知小学警务室', 39.024, 121.656, 3, 3);
INSERT INTO `all_public` VALUES (3457, '大连湾派出所欣家园社区警务室', 39.0382, 121.659, 3, 3);
INSERT INTO `all_public` VALUES (3458, '如家养老院', 39.0277, 121.502, 3, 3);

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `group_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(0) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (10, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (11, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (12, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can add dalian_house_price', 6, 'add_dalian_house_price');
INSERT INTO `auth_permission` VALUES (17, 'Can change dalian_house_price', 6, 'change_dalian_house_price');
INSERT INTO `auth_permission` VALUES (18, 'Can delete dalian_house_price', 6, 'delete_dalian_house_price');
INSERT INTO `auth_permission` VALUES (19, 'Can add region_city_price', 7, 'add_region_city_price');
INSERT INTO `auth_permission` VALUES (20, 'Can change region_city_price', 7, 'change_region_city_price');
INSERT INTO `auth_permission` VALUES (21, 'Can delete region_city_price', 7, 'delete_region_city_price');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(0) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$120000$nVtFUVGd75yQ$97Vhv3JFpklYKVL0kyFNIWiwQwcyesDaXLr3f5OsgYU=', '2023-06-06 13:21:19', 1, 'admins', '', '', '12345678@qq.com', 1, 1, '2023-06-06 07:28:59');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `group_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for buy_house_condition
-- ----------------------------
DROP TABLE IF EXISTS `buy_house_condition`;
CREATE TABLE `buy_house_condition`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `is_diceng` int(0) NOT NULL,
  `is_duoceng` int(0) NOT NULL,
  `is_xiaogaoceng` int(0) NOT NULL,
  `is_gaoceng` int(0) NOT NULL,
  `is_chaogaoceng` int(0) NOT NULL,
  `lvhua_20_30` int(0) NOT NULL,
  `lvhua_30_40` int(0) NOT NULL,
  `lvhua_40_45` int(0) NOT NULL,
  `lvhua_45_50` int(0) NOT NULL,
  `is_pingceng` int(0) NOT NULL,
  `is_cuoceng` int(0) NOT NULL,
  `is_yueshi` int(0) NOT NULL,
  `is_fushi` int(0) NOT NULL,
  `is_jinzhuangxiu` int(0) NOT NULL,
  `is_youeryuan` int(0) NOT NULL,
  `is_xiaoxue` int(0) NOT NULL,
  `is_zhongxue` int(0) NOT NULL,
  `is_daxue` int(0) NOT NULL,
  `jiaoyu_rate` int(0) NOT NULL,
  `is_sanjia_yiyuan` int(0) NOT NULL,
  `is_yiji` int(0) NOT NULL,
  `is_erji` int(0) NOT NULL,
  `yiliao_rate` int(0) NOT NULL,
  `is_huochezhan` int(0) NOT NULL,
  `is_qichezhan` int(0) NOT NULL,
  `is_gaoqiezhan` int(0) NOT NULL,
  `is_gongjiaozhan` int(0) NOT NULL,
  `jiaotong_rate` int(0) NOT NULL,
  `is_shichang` int(0) NOT NULL,
  `is_shangchangchaoshi` int(0) NOT NULL,
  `is_canyin` int(0) NOT NULL,
  `is_gongyuan` int(0) NOT NULL,
  `yule_rate` int(0) NOT NULL,
  `user_id_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id_id`(`user_id_id`) USING BTREE,
  CONSTRAINT `buy_house_condition_user_id_id_0ce252c7_fk_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户购房选址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of buy_house_condition
-- ----------------------------

-- ----------------------------
-- Table structure for collections
-- ----------------------------
DROP TABLE IF EXISTS `collections`;
CREATE TABLE `collections`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `collect_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `loupan_id_id` int(0) NOT NULL,
  `user_id_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `collections_loupan_id_id_92419f4a_fk_loupan_id`(`loupan_id_id`) USING BTREE,
  INDEX `collections_user_id_id_9875864c_fk_user_id`(`user_id_id`) USING BTREE,
  CONSTRAINT `collections_loupan_id_id_92419f4a_fk_loupan_id` FOREIGN KEY (`loupan_id_id`) REFERENCES `loupan` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `collections_user_id_id_9875864c_fk_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户收藏' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collections
-- ----------------------------
INSERT INTO `collections` VALUES (5, '2021-01-24', 243435, 2);
INSERT INTO `collections` VALUES (6, '2021-01-25', 243444, 2);
INSERT INTO `collections` VALUES (7, '2021-01-25', 417503, 2);
INSERT INTO `collections` VALUES (8, '2021-01-25', 243435, 4);
INSERT INTO `collections` VALUES (9, '2021-01-25', 243608, 4);
INSERT INTO `collections` VALUES (10, '2021-01-25', 243611, 4);
INSERT INTO `collections` VALUES (11, '2021-01-25', 243437, 2);
INSERT INTO `collections` VALUES (12, '2021-01-25', 243442, 2);
INSERT INTO `collections` VALUES (13, '2021-01-25', 243615, 2);
INSERT INTO `collections` VALUES (15, '2021-01-25', 243442, 7);
INSERT INTO `collections` VALUES (17, '2021-01-25', 243493, 7);
INSERT INTO `collections` VALUES (18, '2021-01-26', 243441, 6);
INSERT INTO `collections` VALUES (19, '2021-01-26', 243444, 6);
INSERT INTO `collections` VALUES (20, '2021-01-26', 243435, 6);
INSERT INTO `collections` VALUES (21, '2023-06-06', 243446, 2);
INSERT INTO `collections` VALUES (22, '2023-06-06', 243435, 8);
INSERT INTO `collections` VALUES (23, '2023-06-06', 243444, 8);
INSERT INTO `collections` VALUES (24, '2023-06-06', 243437, 8);
INSERT INTO `collections` VALUES (25, '2023-06-06', 243526, 2);
INSERT INTO `collections` VALUES (26, '2023-06-06', 243516, 2);

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `comment_text` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` int(0) NOT NULL,
  `comment_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `loupan_id_id` int(0) NOT NULL,
  `user_id_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `comments_loupan_id_id_55a590c8_fk_loupan_id`(`loupan_id_id`) USING BTREE,
  INDEX `comments_user_id_id_059ba06b_fk_user_id`(`user_id_id`) USING BTREE,
  CONSTRAINT `comments_loupan_id_id_55a590c8_fk_loupan_id` FOREIGN KEY (`loupan_id_id`) REFERENCES `loupan` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `comments_user_id_id_059ba06b_fk_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (8, '没来过', 4, '2021/1/24 下午9:17:32', 243435, 2);
INSERT INTO `comments` VALUES (9, 'ssfsdfsdf', 4, '2021/1/25 下午2:37:22', 243435, 2);
INSERT INTO `comments` VALUES (10, '11111111', 5, '2021/1/25 下午3:30:31', 243435, 4);
INSERT INTO `comments` VALUES (11, '很好', 4, '2021/1/25 下午9:14:30', 243535, 2);
INSERT INTO `comments` VALUES (12, '很棒', 4, '2021/1/25 下午9:14:56', 243535, 2);
INSERT INTO `comments` VALUES (14, '是大飒飒', 3, '2021/1/25 下午10:00:47', 243447, 7);
INSERT INTO `comments` VALUES (15, 'ssssss', 2, '2021/1/25 下午10:07:18', 243442, 7);

-- ----------------------------
-- Table structure for dalian_house_price
-- ----------------------------
DROP TABLE IF EXISTS `dalian_house_price`;
CREATE TABLE `dalian_house_price`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `y1` int(0) NULL DEFAULT NULL,
  `y2` int(0) NULL DEFAULT NULL,
  `y3` int(0) NULL DEFAULT NULL,
  `y4` int(0) NULL DEFAULT NULL,
  `y5` int(0) NULL DEFAULT NULL,
  `y6` int(0) NULL DEFAULT NULL,
  `y7` int(0) NULL DEFAULT NULL,
  `y8` int(0) NULL DEFAULT NULL,
  `y9` int(0) NULL DEFAULT NULL,
  `y10` int(0) NULL DEFAULT NULL,
  `y11` int(0) NULL DEFAULT NULL,
  `y12` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房价表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dalian_house_price
-- ----------------------------
INSERT INTO `dalian_house_price` VALUES (1, '大连', 13956, 14113, 14588, 14650, 14678, 14863, 14972, 15028, 15043, 14995, 14978, 15128);

-- ----------------------------
-- Table structure for data_count_user_actions
-- ----------------------------
DROP TABLE IF EXISTS `data_count_user_actions`;
CREATE TABLE `data_count_user_actions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `click_num` int(0) NOT NULL,
  `search_num` int(0) NOT NULL,
  `collection_num` int(0) NOT NULL,
  `loupan_id_id` int(0) NOT NULL,
  `user_id_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_count_user_actions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(0) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(0) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (15, 'data_count', 'buy_house_condition');
INSERT INTO `django_content_type` VALUES (9, 'data_count', 'collections');
INSERT INTO `django_content_type` VALUES (6, 'data_count', 'dalian_house_price');
INSERT INTO `django_content_type` VALUES (8, 'data_count', 'loupan');
INSERT INTO `django_content_type` VALUES (13, 'data_count', 'loupan_house_type');
INSERT INTO `django_content_type` VALUES (10, 'data_count', 'loupan_public_num');
INSERT INTO `django_content_type` VALUES (7, 'data_count', 'region_city_price');
INSERT INTO `django_content_type` VALUES (11, 'data_count', 'region_public');
INSERT INTO `django_content_type` VALUES (14, 'data_count', 'user');
INSERT INTO `django_content_type` VALUES (12, 'data_count', 'user_actions');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2021-01-16 09:09:26');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2021-01-16 09:09:26');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2021-01-16 09:09:26');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-01-16 09:09:26');
INSERT INTO `django_migrations` VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2021-01-16 09:09:27');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2021-01-16 09:09:27');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0003_alter_user_email_max_length', '2021-01-16 09:09:27');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0004_alter_user_username_opts', '2021-01-16 09:09:27');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0005_alter_user_last_login_null', '2021-01-16 09:09:27');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0006_require_contenttypes_0002', '2021-01-16 09:09:27');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2021-01-16 09:09:27');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0008_alter_user_username_max_length', '2021-01-16 09:09:27');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0009_alter_user_last_name_max_length', '2021-01-16 09:09:27');
INSERT INTO `django_migrations` VALUES (14, 'data_count', '0001_initial', '2021-01-23 08:17:16');
INSERT INTO `django_migrations` VALUES (15, 'data_count', '0002_auto_20210125_1351', '2021-01-25 05:52:20');
INSERT INTO `django_migrations` VALUES (16, 'data_count', '0003_auto_20210125_1406', '2021-01-25 06:06:50');
INSERT INTO `django_migrations` VALUES (17, 'data_count', '0004_auto_20210125_1811', '2021-01-25 10:12:35');
INSERT INTO `django_migrations` VALUES (18, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-06 07:29:58');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(0) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('eoc0gybvcnst7kd0t0xclgffru3jfqzn', 'NzdiOTMzZTAxNzdjOWJkMDdmOTJjYzgyMTdhNjRmYTU1ZDI1MzRiMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwOTc3OTQwYjQ0ZGEwNjNhNWZhNGUwMTU3OWZjNGIxN2ZlMjJmZTA5In0=', '2023-06-20 07:38:02');
INSERT INTO `django_session` VALUES ('k7yrwpvy7c0renrq3di2vf4eitzuzgxg', 'NzdiOTMzZTAxNzdjOWJkMDdmOTJjYzgyMTdhNjRmYTU1ZDI1MzRiMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwOTc3OTQwYjQ0ZGEwNjNhNWZhNGUwMTU3OWZjNGIxN2ZlMjJmZTA5In0=', '2023-06-20 13:21:19');
INSERT INTO `django_session` VALUES ('ude8tpwsit9wzxbwa62xighe702hmf5z', 'NzdiOTMzZTAxNzdjOWJkMDdmOTJjYzgyMTdhNjRmYTU1ZDI1MzRiMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwOTc3OTQwYjQ0ZGEwNjNhNWZhNGUwMTU3OWZjNGIxN2ZlMjJmZTA5In0=', '2023-06-20 11:27:48');
INSERT INTO `django_session` VALUES ('yb1dum0pvjaec785ak6ip8id9ryaleit', 'NzdiOTMzZTAxNzdjOWJkMDdmOTJjYzgyMTdhNjRmYTU1ZDI1MzRiMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwOTc3OTQwYjQ0ZGEwNjNhNWZhNGUwMTU3OWZjNGIxN2ZlMjJmZTA5In0=', '2023-06-20 10:46:28');

-- ----------------------------
-- Table structure for history_recommend
-- ----------------------------
DROP TABLE IF EXISTS `history_recommend`;
CREATE TABLE `history_recommend`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `loupan_id_id` int(0) NOT NULL,
  `user_id_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `history_recommend_loupan_id_id_e1a3133f_fk_loupan_id`(`loupan_id_id`) USING BTREE,
  INDEX `history_recommend_user_id_id_732ba217_fk_user_id`(`user_id_id`) USING BTREE,
  CONSTRAINT `history_recommend_loupan_id_id_e1a3133f_fk_loupan_id` FOREIGN KEY (`loupan_id_id`) REFERENCES `loupan` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `history_recommend_user_id_id_732ba217_fk_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户历史推荐表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of history_recommend
-- ----------------------------
INSERT INTO `history_recommend` VALUES (3, 245562, 2);
INSERT INTO `history_recommend` VALUES (4, 250384, 2);
INSERT INTO `history_recommend` VALUES (6, 452894, 2);
INSERT INTO `history_recommend` VALUES (7, 463507, 2);
INSERT INTO `history_recommend` VALUES (8, 243435, 2);
INSERT INTO `history_recommend` VALUES (9, 243446, 2);
INSERT INTO `history_recommend` VALUES (10, 243447, 2);
INSERT INTO `history_recommend` VALUES (11, 243460, 2);
INSERT INTO `history_recommend` VALUES (12, 243466, 2);
INSERT INTO `history_recommend` VALUES (13, 243493, 2);
INSERT INTO `history_recommend` VALUES (14, 243521, 2);
INSERT INTO `history_recommend` VALUES (15, 243551, 2);
INSERT INTO `history_recommend` VALUES (16, 243567, 2);
INSERT INTO `history_recommend` VALUES (17, 243572, 2);
INSERT INTO `history_recommend` VALUES (18, 243576, 2);
INSERT INTO `history_recommend` VALUES (19, 243580, 2);
INSERT INTO `history_recommend` VALUES (20, 243584, 2);
INSERT INTO `history_recommend` VALUES (21, 243608, 2);
INSERT INTO `history_recommend` VALUES (22, 243611, 2);
INSERT INTO `history_recommend` VALUES (23, 243615, 2);
INSERT INTO `history_recommend` VALUES (24, 243650, 2);
INSERT INTO `history_recommend` VALUES (25, 243679, 2);
INSERT INTO `history_recommend` VALUES (26, 243690, 2);
INSERT INTO `history_recommend` VALUES (27, 243691, 2);
INSERT INTO `history_recommend` VALUES (28, 243750, 2);
INSERT INTO `history_recommend` VALUES (29, 243751, 2);
INSERT INTO `history_recommend` VALUES (30, 244666, 2);
INSERT INTO `history_recommend` VALUES (31, 246358, 2);
INSERT INTO `history_recommend` VALUES (32, 248142, 2);
INSERT INTO `history_recommend` VALUES (33, 249845, 2);
INSERT INTO `history_recommend` VALUES (34, 249846, 2);
INSERT INTO `history_recommend` VALUES (35, 249959, 2);
INSERT INTO `history_recommend` VALUES (36, 250907, 2);
INSERT INTO `history_recommend` VALUES (37, 251726, 2);
INSERT INTO `history_recommend` VALUES (38, 251926, 2);
INSERT INTO `history_recommend` VALUES (39, 252556, 2);
INSERT INTO `history_recommend` VALUES (40, 263923, 2);
INSERT INTO `history_recommend` VALUES (41, 417503, 2);
INSERT INTO `history_recommend` VALUES (42, 435991, 2);
INSERT INTO `history_recommend` VALUES (43, 444683, 2);
INSERT INTO `history_recommend` VALUES (44, 449339, 2);
INSERT INTO `history_recommend` VALUES (45, 450530, 2);
INSERT INTO `history_recommend` VALUES (46, 453345, 2);
INSERT INTO `history_recommend` VALUES (47, 462626, 2);
INSERT INTO `history_recommend` VALUES (48, 465257, 2);
INSERT INTO `history_recommend` VALUES (49, 467456, 2);
INSERT INTO `history_recommend` VALUES (50, 468505, 2);
INSERT INTO `history_recommend` VALUES (51, 243437, 2);
INSERT INTO `history_recommend` VALUES (52, 243442, 2);
INSERT INTO `history_recommend` VALUES (53, 243622, 2);
INSERT INTO `history_recommend` VALUES (54, 243535, 2);
INSERT INTO `history_recommend` VALUES (55, 243665, 2);
INSERT INTO `history_recommend` VALUES (57, 243466, 7);
INSERT INTO `history_recommend` VALUES (58, 243567, 7);
INSERT INTO `history_recommend` VALUES (59, 243622, 7);
INSERT INTO `history_recommend` VALUES (60, 243691, 7);
INSERT INTO `history_recommend` VALUES (61, 243736, 7);
INSERT INTO `history_recommend` VALUES (62, 243751, 7);
INSERT INTO `history_recommend` VALUES (63, 245562, 7);
INSERT INTO `history_recommend` VALUES (64, 246358, 7);
INSERT INTO `history_recommend` VALUES (65, 248142, 7);
INSERT INTO `history_recommend` VALUES (66, 250384, 7);
INSERT INTO `history_recommend` VALUES (67, 250896, 7);
INSERT INTO `history_recommend` VALUES (68, 251925, 7);
INSERT INTO `history_recommend` VALUES (69, 263923, 7);
INSERT INTO `history_recommend` VALUES (70, 444683, 7);
INSERT INTO `history_recommend` VALUES (71, 452894, 7);
INSERT INTO `history_recommend` VALUES (72, 462626, 7);
INSERT INTO `history_recommend` VALUES (73, 463507, 7);
INSERT INTO `history_recommend` VALUES (74, 468505, 7);
INSERT INTO `history_recommend` VALUES (75, 243435, 7);
INSERT INTO `history_recommend` VALUES (76, 243437, 7);
INSERT INTO `history_recommend` VALUES (77, 243444, 7);
INSERT INTO `history_recommend` VALUES (78, 243446, 7);
INSERT INTO `history_recommend` VALUES (79, 243447, 7);
INSERT INTO `history_recommend` VALUES (80, 243453, 7);
INSERT INTO `history_recommend` VALUES (81, 243460, 7);
INSERT INTO `history_recommend` VALUES (82, 243493, 7);
INSERT INTO `history_recommend` VALUES (83, 243521, 7);
INSERT INTO `history_recommend` VALUES (84, 243535, 7);
INSERT INTO `history_recommend` VALUES (85, 243551, 7);
INSERT INTO `history_recommend` VALUES (86, 243572, 7);
INSERT INTO `history_recommend` VALUES (87, 243576, 7);
INSERT INTO `history_recommend` VALUES (88, 243580, 7);
INSERT INTO `history_recommend` VALUES (89, 243584, 7);
INSERT INTO `history_recommend` VALUES (90, 243608, 7);
INSERT INTO `history_recommend` VALUES (91, 243611, 7);
INSERT INTO `history_recommend` VALUES (92, 243615, 7);
INSERT INTO `history_recommend` VALUES (93, 243650, 7);
INSERT INTO `history_recommend` VALUES (94, 243665, 7);
INSERT INTO `history_recommend` VALUES (95, 243679, 7);
INSERT INTO `history_recommend` VALUES (96, 243690, 7);
INSERT INTO `history_recommend` VALUES (97, 243750, 7);
INSERT INTO `history_recommend` VALUES (98, 244666, 7);
INSERT INTO `history_recommend` VALUES (99, 249845, 7);
INSERT INTO `history_recommend` VALUES (100, 249846, 7);
INSERT INTO `history_recommend` VALUES (101, 249959, 7);
INSERT INTO `history_recommend` VALUES (102, 250907, 7);
INSERT INTO `history_recommend` VALUES (103, 251726, 7);
INSERT INTO `history_recommend` VALUES (104, 251926, 7);
INSERT INTO `history_recommend` VALUES (105, 252556, 7);
INSERT INTO `history_recommend` VALUES (106, 417503, 7);
INSERT INTO `history_recommend` VALUES (107, 435991, 7);
INSERT INTO `history_recommend` VALUES (108, 449339, 7);
INSERT INTO `history_recommend` VALUES (109, 450530, 7);
INSERT INTO `history_recommend` VALUES (110, 453345, 7);
INSERT INTO `history_recommend` VALUES (111, 465257, 7);
INSERT INTO `history_recommend` VALUES (112, 467456, 7);
INSERT INTO `history_recommend` VALUES (113, 243441, 2);
INSERT INTO `history_recommend` VALUES (114, 243444, 2);
INSERT INTO `history_recommend` VALUES (115, 243453, 2);
INSERT INTO `history_recommend` VALUES (116, 243473, 2);
INSERT INTO `history_recommend` VALUES (117, 243736, 2);
INSERT INTO `history_recommend` VALUES (118, 250896, 2);
INSERT INTO `history_recommend` VALUES (119, 243539, 2);
INSERT INTO `history_recommend` VALUES (120, 243706, 2);
INSERT INTO `history_recommend` VALUES (121, 243516, 2);
INSERT INTO `history_recommend` VALUES (122, 243526, 2);
INSERT INTO `history_recommend` VALUES (123, 243536, 2);

-- ----------------------------
-- Table structure for loupan
-- ----------------------------
DROP TABLE IF EXISTS `loupan`;
CREATE TABLE `loupan`  (
  `id` int(0) NOT NULL DEFAULT 0,
  `loupan_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `property_type` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `building_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sub_region_id` int(0) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `lvhua_rate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhandi_area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jianzhu_area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `car_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cankao_price` int(0) NULL DEFAULT NULL,
  `default_image_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `housetype_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2/3室',
  `baidu_lat` float NULL DEFAULT NULL,
  `baidu_lng` float NULL DEFAULT 0,
  `sale_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '在售',
  `housetype_text_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price_2020` int(0) NULL DEFAULT NULL,
  `price_2019` int(0) NULL DEFAULT NULL,
  `price_2018` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '楼盘表，所有楼盘信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of loupan
-- ----------------------------
INSERT INTO `loupan` VALUES (243435, '观山蝶恋花', '住宅', '高层', 1, '沙河口马栏北街1号', '30', '13000', '117071', '477', 19000, '2810ded4e5ecd440a188bc00eb6562fd', '2室2厅1卫', 38.9297, 121.562, '售罄', 'b317ae2e9e9b779f5a74fd150d325c27', 19000, 18726, 19078);
INSERT INTO `loupan` VALUES (243437, '一方公馆', '住宅', '高层,独栋别墅,联排别墅', 1, '星海广场C2区1号', '18', '33900', '52000', '300', 19000, 'b6848a1a9774611e8c59e42f8931a533', '2室1厅1卫', 38.8848, 121.583, '售罄', '25f8f0192c676107ff3b976369c2ad06', 19000, 18851, 19086);
INSERT INTO `loupan` VALUES (243441, '美辰香醒十里春风', '住宅', '多层,小高层,高层', 2, '华东路', '30', '87600', '170000', '1364', 20000, '8d037e722e34920090021e0657dc9751', '3室2厅1卫', 38.9905, 121.606, '售罄', 'd2f076626d09bb363075c73a9e36a0aa', 20000, 19856, 20094);
INSERT INTO `loupan` VALUES (243442, '鼎新悦府', '住宅', '多层,小高层', 2, '甘井子南松路25号', '18', '42000', '28000', '280', 19000, 'bbbcbcf2f6643324c9e196cd08358bf8', '0室0厅0卫', 38.9525, 121.555, '售罄', 'f373dfe1f16384ec7ca17071c8a18ab0', 19000, 18775, 19042);
INSERT INTO `loupan` VALUES (243444, '西郊闲庭', '住宅', '多层,小高层,高层', 2, '甘井子头道沟金柳路', '10', '16000', '30000', '172', 19000, '517718e0a060a175b9b5e43bfbfe5438', '0室0厅0卫', 38.9229, 121.521, '售罄', 'f91f5f5a0d4adc026921bbce2cb2bcb3', 19000, 18548, 19073);
INSERT INTO `loupan` VALUES (243446, '绿城大连深蓝中心', '住宅', '高层', 1, '沙河口和平广场对面高尔基路南侧', '23', '10800', '120000', '358', 19000, 'bc39e1b6c53242f710b6f082046b6350', '4室2厅3卫', 38.9115, 121.587, '售罄', '1767af4532ca6fd00f1ca0dfdf60aade', 19000, 18783, 19006);
INSERT INTO `loupan` VALUES (243447, '上方港景', '住宅', '高层', 0, '中山港湾广场航运交易市场南侧五五路4号', '10', '12794', '136598', '500', 19000, 'e9a5dbd0fd6a25533e2b172cb807f970', '1室1厅1卫', 38.9327, 121.667, '售罄', 'b508b0a85f45f6be5cba60780fa4a186', 19000, 18567, 19023);
INSERT INTO `loupan` VALUES (243448, '峰尚中南', '住宅', '小高层,高层', 0, '中南路209号(新玛特北侧)', '25', '2900', '22000', '300', 19000, 'ca95e4407577dee58188c3a3e8a631e2', '2室2厅1卫', 38.9018, 121.682, '售罄', 'de2b03ddcb019757dfea183d4f1d6621', 19000, 18684, 19020);
INSERT INTO `loupan` VALUES (243453, '易和岭秀滨城', '住宅', '多层,小高层', 2, '辛寨子街道虹城路503-6号', '25', '238000', '346000', '3405', 11000, '24a069f2ebcf890d253c7d64122972aa', '2室2厅1卫', 38.98, 121.501, '售罄', 'd900099b9953743c6c52519d99592cf7', 11000, 10859, 11058);
INSERT INTO `loupan` VALUES (243460, '嘉和广场', '商住', '高层', 0, '三八广场家乐福西侧', '15', '8700', '120000', '780', 18000, '81a9eb590c9b8cd7f1788ed916f27633', '商住', 38.9257, 121.66, '售罄', '5ae2af5240af51f99ea8788b6ab16a70', 18000, 17627, 18050);
INSERT INTO `loupan` VALUES (243466, '尚品天城', '住宅', '高层', 1, '沙河口区原长兴市场北侧中长东四街51号', '24', '99300', '614798', '2600', 18000, '2c82bd43a5778e40d504766fa49e951a', '3室2厅1卫', 38.9247, 121.593, '售罄', 'cabd0e3063e083e1a0f8be6d1016e30a', 18000, 17556, 18039);
INSERT INTO `loupan` VALUES (243473, '惠君庭', '住宅', '联排别墅,双拼别墅', 3, '西岗付家庄华泰街66号（付家庄三环酒店上行400米）', '30', '10464', '6630', '300', 19000, 'a27b7351e8569ef1627f40c5a5472d2a', '2室1厅1卫', 38.8765, 121.633, '售罄', '2e5af0e664eae749a8787a68239696c8', 19000, 18635, 19025);
INSERT INTO `loupan` VALUES (243487, '君悦晟景乐家', '住宅', '小高层,高层', 2, '西郊国家森林公园内', '15', '16898', '33000', '180', 19000, '42ca259aa0f0d02746bb5d06f0598bae', '2室3厅1卫', 38.9233, 121.546, '售罄', 'e36476ee3d1ccf03b7d2af0be8849c7e', 19000, 18818, 19040);
INSERT INTO `loupan` VALUES (243488, '连海金源', '住宅', '小高层,高层', 2, '金柳路', '16', '40900', '109000', '580', 13700, '360353acb0f721ee3dd1656a4eabdfd6', '4室2厅2卫', 38.9169, 121.527, '售罄', '88959ee7ec32d54c2fb7f035092ccb22', 13700, 13456, 13776);
INSERT INTO `loupan` VALUES (243493, '汇邦中心', '住宅', '高层', 0, '中山广场南侧约200米，解放街与一德街交汇处', '22', '4650', '62553', '30', 19000, '467d9155e5e74f54c0db17a7ede7fa95', '1室1厅1卫', 38.9231, 121.653, '售罄', '803fc271af00f29f02e4260745e807b6', 19000, 18732, 19011);
INSERT INTO `loupan` VALUES (243497, '华业玫瑰东方II期住宅', '住宅', '小高层,高层', 1, '沙河口马栏河东侧，五一路南侧，西安路西侧', '11', '50000', '160000', '1044', 18500, '046daad541126b91faedd6f53073ab4c', '1室1厅1卫', 38.9122, 121.594, '售罄', '7a5d6059f93a56fa2edd8ffe1ae35a5d', 18500, 18417, 18585);
INSERT INTO `loupan` VALUES (243500, '枣园万象', '住宅', '高层', 2, '华东路60号（金三角北京华联北行800米华东人家马路对面）', '20', '16300', '57000', '480', 19000, '90f539f63f541dac04e5749378210912', '4室3厅2卫', 38.9877, 121.597, '售罄', '077acccb7d4bab87179474ec71d66253', 19000, 18748, 19098);
INSERT INTO `loupan` VALUES (243502, '中央复兴里', '住宅', '高层', 3, '西岗长江路与长春路交汇处', '12', '10424', '38510', '300', 19000, '70647717ce6cc9fd6d0a4c208228dbd4', '1室1厅1卫', 38.9245, 121.625, '售罄', '2ef6e878825f866b71f307e09a642e09', 19000, 18897, 19098);
INSERT INTO `loupan` VALUES (243512, '颐和银座', '商住', '高层', 1, '中山路465号', '15', '150000', '500000', '1500', 19000, 'a51be73521b31f373bc0d7ba8a639bb0', '商住', 38.8914, 121.577, '售罄', '3ed422b7ac3f2ff9362dd7bb1d8f561c', 19000, 18525, 19035);
INSERT INTO `loupan` VALUES (243516, '万科天麓', '住宅', '小高层,高层,独栋别墅', 2, '甘井子西山水库西侧南行三公里；红岭路转金柳路直达', '18', '370000', '400000', '3300', 19000, 'e2b9b38b0f03263d4c9cd6301b2aee18', '5室2厅2卫', 41.0963, 122.984, '售罄', 'f0cd92e0ec95e0e5539901cde9f688e8', 19000, 18558, 19019);
INSERT INTO `loupan` VALUES (243519, '钰桥中央庭院', '住宅', '多层,小高层,高层', 2, '中华路', '20', '66400', '162927', '1309', 16000, 'cd5d1b6e0a8e85485efbd419ea525ffa', '3室2厅2卫', 38.9994, 121.617, '售罄', '52a476b1da77ce6a33885b16603e5879', 16000, 15887, 16032);
INSERT INTO `loupan` VALUES (243521, '骊高新世界', '住宅', '高层', 0, '中山人民路41号', '29', '16600', '219000', '360', 19000, '07dd3bd2eb4c4eb6f1677f237d52cb66', '2室2厅1卫', 38.9296, 121.659, '售罄', 'eb3e1ef8592a05f4c8999c9b4bebdf89', 19000, 18655, 19060);
INSERT INTO `loupan` VALUES (243526, '鑫汇茗苑', '住宅', '多层,小高层', 2, '甘井子华东路30中旁', '29', '29000', '53000', '566', 19000, 'f975c01108ed80d1221834fa762b3e30', '1室2厅1卫', 38.9865, 121.597, '售罄', '32c9c6924d5aebb801177246d2988db1', 19000, 18967, 19046);
INSERT INTO `loupan` VALUES (243528, '开成领地', '住宅', '多层', 2, '红旗中路与张前路交汇处西侧', '13', '15000', '18000', '162', 19000, 'b279a993950ecd5710b3902b35cbd6a1', '2室2厅1卫', 38.9317, 121.545, '售罄', '218df24203e165dd6cc0935f0fdbc27c', 19000, 18754, 19020);
INSERT INTO `loupan` VALUES (243529, '春田晴湾山湖一号', '住宅', '多层,小高层,高层', 2, '区政府新址西行5公里', '11', '1350000', '1350000', '5322', 13000, 'd1c80a00c74f4c224211d1b44d12ab7a', '4室2厅2卫', 38.9753, 121.472, '售罄', 'cf2de24d6f719d230da98c3b5931d3e1', 13000, 12736, 13017);
INSERT INTO `loupan` VALUES (243531, '中冶蓝城', '住宅', '小高层', 2, '辛寨子街道701终点站西行50米', '18', '69000', '100000', '772', 10500, '414dbc104ed722c0fcf2e1cf8a3f1e67', '1室2厅1卫', 38.982, 121.496, '售罄', 'fefdef6f1b82bc9a1218f5d404e62c00', 10500, 10381, 10570);
INSERT INTO `loupan` VALUES (243533, '远洋广场', '住宅', '高层', 2, '甘井子华南广场以西 中华西路沿线', '30', '71000', '400000', '2700', 19000, 'a7a4f70e60b432a6d8673f0805a56a53', '2室1厅1卫', 38.9965, 121.591, '售罄', 'baaf933e906d4c2463f22e3b81e9f9ed', 19000, 18753, 19087);
INSERT INTO `loupan` VALUES (243534, '华亿明城', '住宅', '多层', 0, '中山中南路219号', '17', '8422', '30000', '200', 19000, '1200db122c0c250dadab57008b503a7f', '1室1厅1卫', 38.9, 121.683, '售罄', 'f31e7a243066ea7a0e39d7380597b4c7', 19000, 18541, 19051);
INSERT INTO `loupan` VALUES (243535, '半岛泉水欣座', '住宅', '小高层,高层', 2, '振兴路以南光明路以西', '26', '52450', '79650', '555', 19000, '6cd40e7a3686d37fc5f879b8d89b25df', '3室2厅2卫', 39.0371, 121.693, '售罄', 'a074e479f9115a3ee0d35bd60a01e654', 19000, 18639, 19003);
INSERT INTO `loupan` VALUES (243536, '西山湖语', '住宅', '多层,高层', 2, '张前路', '17', '48955', '53851', '330', 12800, 'f877385670168c3d02feaefdec45de03', '3室2厅2卫', 38.9398, 121.512, '售罄', '82d1c5acbfeacad9c8b67bfce37f68ab', 12800, 12487, 12829);
INSERT INTO `loupan` VALUES (243537, '和合美家', '住宅', '小高层', 2, '甘井子泡崖街道玉浓街', '13', '20000', '40000', '365', 19000, '647b507f1a66f1dd6214e3be775c2c3b', '2室2厅1卫', 38.9581, 121.532, '售罄', 'f02bffcf3240c220d4a2710dc201fe41', 19000, 18772, 19005);
INSERT INTO `loupan` VALUES (243539, '东港第', '住宅', '高层', 0, '长江东路', '30', '56000', '132100', '630', 23000, 'e76ced836eba6b7b8fabbd4675fdc667', '4室2厅1卫', 38.9241, 121.69, '售罄', 'b4c2c44614305db9c95092a227302a0d', 23000, 22647, 23045);
INSERT INTO `loupan` VALUES (243551, '香周首府', '住宅', '小高层,高层', 3, '香周路120号', '29', '60000', '130000', '1314', 16000, '00e57a37d9e709867bd117f0bd651333', '2室2厅1卫', 38.9436, 121.6, '售罄', '1b0bf620aa540cac95e383e1b12161bf', 16000, 15592, 16050);
INSERT INTO `loupan` VALUES (243558, '长鹭悦湖', '住宅', '多层', 2, '红旗西路', '27', '76346', '85979', '477', 17800, 'b48ed54c53f0e151023b27e8959df6fb', '3室2厅2卫', 38.9382, 121.512, '售罄', '786d2c584dec85de9c95be00285553f1', 17800, 17730, 17860);
INSERT INTO `loupan` VALUES (243560, '万达公馆', '住宅', '高层', 0, '港湾广场（原港务局）', '11', '65200', '480000', '1000', 19000, '01290e7d5c998d4f59a7627576c3a7e0', '3室2厅4卫', 38.9346, 121.675, '售罄', '02fc351ef5e89e688fc05b54ffa6d567', 19000, 18646, 19078);
INSERT INTO `loupan` VALUES (243567, '锦绣燕居', '住宅', '多层,小高层', 1, '锦绣居住区锦城园东', '13', '12200', '24300', '80', 19000, '8fd425501204d556b55aa282ea9b7bd1', '2室1厅1卫', 38.9566, 121.564, '售罄', 'f1aa81fec8571ec477d2cf0f55b2f598', 19000, 18565, 19044);
INSERT INTO `loupan` VALUES (243572, '南山1910', '住宅', '独栋别墅', 0, '七七街与南山路交汇处', '25', '31000', '24000', '234', 19000, '49f6684d437e6128a4de7129b14a73dc', '独栋别墅', 38.9196, 121.651, '售罄', 'ab1ed4ef084f6cecabbc036222715bc5', 19000, 18694, 19014);
INSERT INTO `loupan` VALUES (243576, '金色年华公馆', '商住', '高层', 1, '白山路28号', '22', '3263', '57800', '708', 16500, 'e9afe283fcc87751538e518c957d1a1a', '商住', 38.9165, 121.6, '售罄', 'ef36d405e42c223afcd498973d713b22', 16500, 16049, 16514);
INSERT INTO `loupan` VALUES (243580, '香洲心城三期', '住宅', '小高层,高层', 1, '华北路、香洲路、春光街交汇处', '14', '70000', '130000', '360', 19000, '38318e2774a5f7e1370fe912cb21b292', '2室1厅1卫', 38.9446, 121.592, '售罄', 'e66c3a3a24ab8adfe33eb8a10a9e82b1', 19000, 18950, 19026);
INSERT INTO `loupan` VALUES (243583, '新星艾维尼小城', '住宅', '多层,小高层', 2, '砬子山701终点站', '21', '120000', '200000', '1435', 19000, '21566c10bd4e953536684f58dd32090e', '1室2厅1卫', 38.9803, 121.499, '售罄', '32f39804328bee5bd7e3639d59860b0b', 19000, 18852, 19009);
INSERT INTO `loupan` VALUES (243584, '大商嘉华 青泥8号', '商住', '高层', 0, '解放路8号（青泥洼2路车站对面）', '16', '4060', '64108', '140', 14500, '14a6ce6d74c767bb24004d4df8284908', '商住', 38.9236, 121.643, '售罄', '899c5ae2ffb7b80c04c17d552cd345fa', 14500, 14302, 14543);
INSERT INTO `loupan` VALUES (243587, '富丽庭', '住宅', '高层', 1, '沙河口黑石礁中山路北侧、尖山街东侧', '29', '13510', '57000', '594', 19000, '43485730d63a486834324368d4d12518', '3室2厅2卫', 38.8816, 121.563, '售罄', 'ddfa9b6e152bae4c5f6bf58504d31b9f', 19000, 18964, 19010);
INSERT INTO `loupan` VALUES (243588, '港湾国际', '商住', '高层', 2, '金湾路与振连路交汇处', '30', '80000', '130000', '420', 19000, 'b4c46f86d5b6afe57c2a959e35eb8848', '2室2厅1卫', 39.0913, 121.719, '售罄', 'f51a9e4b37dcbdb6cf780ab4b1011a3c', 19000, 18587, 19045);
INSERT INTO `loupan` VALUES (243595, '亿盛风情西海岸', '住宅', '多层', 2, '大黑石度假区', '30', '13682', '4514', '62', 19000, 'b1c85f98d52173e5c03beeded1a0b73a', '1室0厅1卫', 38.9719, 121.322, '售罄', 'a62e8ee5beb2740e95d39f3ce48474b6', 19000, 18733, 19058);
INSERT INTO `loupan` VALUES (243599, '运达诺维溪谷', '住宅', '多层,小高层,高层', 2, '虹城路', '18', '240000', '320000', '2580', 11000, '5c7b6aae34b110d273472c640d2b9dd4', '4室2厅1卫', 38.9905, 121.482, '售罄', '8b420fad9431f97f4ed911c79d564605', 11000, 10850, 11072);
INSERT INTO `loupan` VALUES (243600, '城市旋律', '商住', '高层', 1, '高尔基路', '18', '5800', '55000', '465', 22000, '1a822bb9b4fcea7a819597481e71a624', '商住', 38.9021, 121.597, '售罄', '7d48c82e21b8bbe6f349585812f315ab', 22000, 21740, 22027);
INSERT INTO `loupan` VALUES (243608, '千汇城', '住宅', '高层', 0, '中山世纪街18号（时代广场北侧）', '21', '874', '16400', '253', 19000, 'c78654185f547cfe84ea43717d7f8da9', '1室1厅1卫', 38.9295, 121.652, '售罄', '0513eaab188507412fc9ea829aca2824', 19000, 18939, 19092);
INSERT INTO `loupan` VALUES (243611, '琥珀湾', '住宅', '独栋别墅,多层', 0, '滨海东路', '23', '92500', '74000', '700', 33000, '3414ca8417488896a2079a540d012633', '9室4厅7卫', 38.8746, 121.705, '售罄', '62146cbc455270a210828edff383bcf2', 33000, 32570, 33013);
INSERT INTO `loupan` VALUES (243612, '依云溪谷二期', '住宅', '多层,小高层', 2, '柳树南街', '10', '72000', '130000', '500', 10900, '68132bb54a0bc949f669e0cf962ff7b2', '2室2厅1卫', 38.9214, 121.481, '售罄', 'c847d6b412dc475e42d9fdaa777af209', 10900, 10594, 10993);
INSERT INTO `loupan` VALUES (243614, '金紫荆公馆', '住宅', '高层', 1, '中山路582号（星海湾管委会后身）', '16', '17754', '84624', '122', 19000, '0ccf55d4d91dbdc64015cdc4420f0530', '1室1厅1卫', 38.8899, 121.591, '售罄', '8ce30d5965fb935b20d5d70d093acf06', 19000, 18950, 19012);
INSERT INTO `loupan` VALUES (243615, '良运四季汇', '住宅', '高层', 0, '中山鲁迅路88号', '23', '11000', '70650', '609', 19000, 'a872a1d3939698ea24b5cf819ffd35d5', '1室1厅1卫', 38.9263, 121.668, '售罄', 'e50f5158b9c699ad60141a971d87bd60', 19000, 18897, 19094);
INSERT INTO `loupan` VALUES (243622, '北京公园', '住宅', '多层,小高层,高层', 3, '西岗新开路610号', '22', '60000', '128000', '570', 19000, '0694bd8dd3c2a9de852d83a21c7b78fe', '4室2厅2卫', 38.9222, 121.625, '售罄', '071c79520d9fffcfe8d743ab614a98a7', 19000, 18694, 19074);
INSERT INTO `loupan` VALUES (243632, '百年港湾', '住宅', '高层', 3, '香炉礁物流园区内（宜家家居东北侧）', '13', '100400', '327000', '1720', 14000, 'a76f2cc064650603568c22e60d64444d', '3室2厅2卫', 38.9368, 121.614, '售罄', '8b778f7371b03ecda5871a13ad1e714f', 14000, 13652, 14081);
INSERT INTO `loupan` VALUES (243638, '亿达天琴山', '住宅', '高层', 3, '长春路南段', '15', '24600', '64000', '612', 19000, '88c62b8efc74947713134575e0c4707f', '2室2厅1卫', 38.9047, 121.626, '售罄', 'd05fa289ed435fdf925a39e614b8753b', 19000, 18536, 19032);
INSERT INTO `loupan` VALUES (243639, '天源秀景', '住宅', '多层,小高层,高层', 3, '威华街南石道街附近', '21', '14800', '22200', '220', 14000, '9849fe31145a65fb44697e38829814de', '3室2厅1卫', 38.8944, 121.632, '售罄', 'fbd54c714d7cab3ed150f06215b9468d', 14000, 13835, 14067);
INSERT INTO `loupan` VALUES (243644, '明秀山庄', '住宅', '多层,小高层,高层', 0, '中山解放路秀月街15中学对面', '15', '150000', '280000', '250', 19000, '978702a474136b8b82010a966fd2cb65', '3室2厅2卫', 38.905, 121.652, '售罄', '926cb9ed6049bc1db17b0f8270b20548', 19000, 18834, 19065);
INSERT INTO `loupan` VALUES (243647, '万科魅力之城', '住宅', '小高层,高层', 2, '张前路BRT终点（地铁2号线前革站）', '10', '220000', '440000', '3800', 19000, '56db2cc4869bb67544d2af97184a2014', '3室2厅2卫', 38.99, 121.523, '售罄', '17a742b51b08af93aa6def69c8662ad0', 19000, 18974, 19057);
INSERT INTO `loupan` VALUES (243650, '山居笔记', '住宅', '多层,小高层,高层', 2, '红旗镇湾家村（亲亲家园附近）', '30', '50000', '55000', '102', 19000, '12ef8c33d6a13b6bb0f06cb5db86ce0e', '3室3厅2卫', 38.9197, 121.621, '售罄', 'e77b94f032fc24cb7d9bf32603ec8016', 19000, 18759, 19028);
INSERT INTO `loupan` VALUES (243665, '东海岸天际', '住宅', '高层', 0, '华乐街', '15', '117000', '300000', '1576', 19000, '6a9c52e380b18a7ff825685b15a8047b', '4室2厅3卫', 38.9245, 121.652, '售罄', '1e94e851ba939daa89cfa86d5b17e98c', 19000, 18736, 19024);
INSERT INTO `loupan` VALUES (243677, '绿地·达沃斯公馆', '商住', '高层', 0, '东港商务区港隆路22号', '18', '37800', '220000', '1373', 14300, 'f7c840b0748f7f49528ff04201283796', '商住', 38.9324, 121.678, '在售', '0c1653efd20d52cb5f2ad3aafff67245', 14300, 14191, 14331);
INSERT INTO `loupan` VALUES (243679, '汇景天地', '商住', '高层', 3, '五惠路32号', '18', '9800', '107784', '352', 18000, '9751cc15fbbf7d8c1a460c8b1e43ab81', '商住', 38.9187, 121.638, '售罄', '188ded6f0bdad1f9be554a178079735a', 18000, 17981, 18043);
INSERT INTO `loupan` VALUES (243680, '泰达悦城', '住宅', '小高层', 2, '营升路', '28', '530000', '710000', '1505', 11600, 'f037b6d799b1b8767312351e57551fd6', '3室2厅1卫', 38.972, 121.378, '售罄', 'fdeca6f5f5c54d7101ba51a00697fbf0', 11600, 11128, 11666);
INSERT INTO `loupan` VALUES (243681, '益嘉广场', '住宅', '小高层,高层', 1, '沙河口马栏南街52号', '24', '26000', '210000', '1400', 19000, '20a3395401515ce005d841de604d6871', '1室1厅1卫', 38.9231, 121.559, '售罄', '1e425ffb9946f3f0832a36d8614442b3', 19000, 18510, 19053);
INSERT INTO `loupan` VALUES (243686, '福佳荣郡', '住宅', '多层,小高层,高层', 2, '振兴路', '11', '3670000', '2000000', '1662', 11800, 'd6a4d020990598f18be774eb85dda72e', '3室2厅1卫', 39.0393, 121.668, '售罄', '2f2348980911098af1d945eba80b7799', 11800, 11762, 11874);
INSERT INTO `loupan` VALUES (243690, '普照假日广场', '住宅', '多层,小高层', 0, '中山区大连火车站东侧100米', '29', '5600', '35180', '300', 19000, '38b31f01ad3fb15b1917e32a1f468336', '1室1厅1卫', 38.9287, 121.638, '售罄', '1313c490a84b601acc34458f6c1cc813', 19000, 18568, 19035);
INSERT INTO `loupan` VALUES (243691, '大连中心裕景', '住宅', '多层,小高层,高层', 0, '中山区大公街23号（友好街与中山路交汇处，渤海饭店斜对面）', '29', '62300', '800000', '4500', 19000, '2b98a48f932b8437d3fb1205fb381ba5', '3室2厅1卫', 38.9232, 121.635, '售罄', '0a15bdd1cba33449a42580cbe6683908', 19000, 18632, 19037);
INSERT INTO `loupan` VALUES (243699, '宇圣明珠', '住宅', '多层,小高层,高层', 2, '金湾路', '10', '300000', '1000000', '3000', 11900, 'e2c9e03cd21a754a58c3c82e1d30ea31', '2室2厅1卫', 39.0264, 121.723, '售罄', '1ed6267f20a9b71cbdd6652b39e21dff', 11900, 11432, 11920);
INSERT INTO `loupan` VALUES (243700, '缇香漫城', '住宅', '多层,小高层', 2, '虹港路', '29', '60741', '118444', '1068', 25000, 'f067926ec3432101dee974a223678048', '3室2厅2卫', 38.9663, 121.529, '售罄', 'c510f91cbbf5a83cd8adaeb4fc7a2c45', 25000, 24644, 25088);
INSERT INTO `loupan` VALUES (243701, '鑫境界', '住宅', '小高层', 2, '甘井子虹港路中段，郭家街和南林路交汇处', '24', '30881', '96116', '486', 19000, '90bbd36a84c91f437df2b0aa88d19342', '1室1厅1卫', 38.9642, 121.55, '售罄', 'fec3eef0dcd5fb72d0f8c8d919dc3d40', 19000, 18725, 19086);
INSERT INTO `loupan` VALUES (243702, '捷山观海', '住宅', '小高层,高层', 0, '中山捷山街大富彩印厂原址（42中学南侧)', '27', '31720', '46550', '402', 19000, 'c80fc18860b39545ed75e3798f25cf0a', '3室2厅2卫', 38.8982, 121.653, '售罄', '81e66fe8d4556ca4341da86ec73515f0', 19000, 18554, 19028);
INSERT INTO `loupan` VALUES (243705, '锦绣暖山', '住宅', '多层,小高层,高层', 2, '甘井子西部大通道与红凌路交汇处红凌桥西侧100米', '27', '73000', '176000', '1800', 19000, 'a9a2007b951c3e5d3222a77bf2ecf5fa', '2室2厅1卫', 38.9254, 121.551, '售罄', 'cd0c30d75d8761899de7749862170699', 19000, 18634, 19092);
INSERT INTO `loupan` VALUES (243706, '润德广场', '住宅', '高层', 3, '西岗新开路金广大厦旁', '25', '3284', '54057', '102', 19000, '5978ef8fba7fe5e33f2bb9992ee94547', '2室2厅1卫', 38.9222, 121.622, '售罄', 'fab1c8ee46cb5de6a6cc3ba27fc1fc17', 19000, 18558, 19035);
INSERT INTO `loupan` VALUES (243707, '第五郡', '住宅', '多层,高层', 2, '张前路以东，西部大通道以西', '27', '460000', '600000', '1132', 19000, 'da652c1c8e6d860ca47b6b7be38a4c89', '2室1厅1卫', 38.9566, 121.53, '售罄', '4ca7bcbc208d3bfa69f7d42cbdce8709', 19000, 18669, 19038);
INSERT INTO `loupan` VALUES (243710, '卡纳意乡', '住宅', '联排别墅,多层,高层', 0, '中山区景山西园3号', '25', '150000', '220000', '1100', 17000, 'd8b4d5ce882e1b8304d84eb276e3c610', '4室2厅2卫', 38.9017, 121.669, '售罄', '6ceec72142b09426fb8149c03b12d392', 17000, 16715, 17099);
INSERT INTO `loupan` VALUES (243715, '星海大观', '住宅', '高层', 1, '沙河口星河街与会展路交汇处，星海会展中心二期北侧', '26', '34000', '300000', '1500', 19000, '7bdfaf3d03858066a0e7334d910891c8', '3室2厅2卫', 38.8931, 121.598, '售罄', '82ae873e6d82ba90e189c7e1407c169b', 19000, 18968, 19070);
INSERT INTO `loupan` VALUES (243722, '美树日记', '住宅', '多层,小高层', 2, '锦绣西侧西部大通道旁/710、711路始发站对面', '12', '167000', '180000', '1600', 12500, 'a31c5e6919a3eae802ee695e5bbf5be4', '2室2厅1卫', 38.9514, 121.545, '售罄', '71504342d7172f76f66fd78f708a45a8', 12500, 12204, 12528);
INSERT INTO `loupan` VALUES (243736, '悦泰福里', '住宅', '多层', 3, '北岗街，通海街与双兴街的三街交汇处', '26', '150000', '300000', '750', 32000, 'bf1a9841a1b7ed8eb6dc7e76987097d1', '3室2厅2卫', 38.929, 121.628, '售罄', 'a807af7c998cb382e3f7123d59f1b3e8', 32000, 31800, 32030);
INSERT INTO `loupan` VALUES (243739, '泉水润泽园', '住宅', '小高层,高层', 2, '华东路与中华路交汇处', '30', '140000', '310000', '3000', 11000, 'c7a228a87fff7ba928d83526ea85365d', '3室2厅1卫', 39.0011, 121.607, '售罄', 'de26963f4f7affcf3f0fd92df8c887ba', 11000, 10977, 11059);
INSERT INTO `loupan` VALUES (243740, '西郊高尔夫庄园', '别墅', '独栋别墅,联排别墅,双拼别墅', 2, '旅顺中路', '11', '78487', '150000', '135', 35000, 'fb7bec1b674c919fc5eb0df34241f63d', '8室2厅4卫', 38.9197, 121.4, '售罄', 'bef3dd6174409b86d34fece1e45d5fab', 35000, 34744, 35066);
INSERT INTO `loupan` VALUES (243741, '宏都筑景朗园', '住宅', '多层,高层', 1, '沙河口连山街西侧、西南路东侧(伯顿电机厂和第二电机厂原址)', '24', '100000', '187000', '140', 19000, '4db8ba880b3a1c3b672b2110c3d9f435', '2室2厅1卫', 38.89, 121.573, '售罄', 'c630f255c6e7f1965f9494d16815ed6d', 19000, 18645, 19003);
INSERT INTO `loupan` VALUES (243742, '星海湾壹号', '住宅', '独栋别墅,联排别墅,多层', 1, '星海湾广场西南侧，百年城雕旁', '18', '120000', '240000', '1200', 40000, '537a0ccd2803c8b82e12f3b9bb3b1250', '4室2厅3卫', 38.8855, 121.59, '售罄', '006f1920724b9f8ca96f8356000ec3c9', 40000, 39686, 40027);
INSERT INTO `loupan` VALUES (243743, '第九频道', '住宅', '高层', 1, '五一广场广电中心对面（民权街与东北路交汇处）', '30', '4684', '45630', '538', 19000, '543147f38f24ed257bb1a5dfcf9163d7', '1室2厅1卫', 38.9211, 121.611, '售罄', '1f6b9565feed5daebbf9173f71bcbd8d', 19000, 18507, 19014);
INSERT INTO `loupan` VALUES (243744, '国泰港汇中心', '住宅', '高层', 0, '普照路50号', '26', '8000', '95000', '350', 26000, '5f4821e428541477ac4bce97e15c38c0', '商住', 38.9269, 121.645, '售罄', '77f5d223a5a5d4b88bd8932ddd1dfd0e', 26000, 25688, 26061);
INSERT INTO `loupan` VALUES (243748, '悦泰湾里', '住宅', '高层', 1, '胜利路与太原街交汇处', '20', '8800', '31680', '300', 19000, '3a4c3cf51d5b75dc79710d2b1a81c423', '1室1厅1卫', 38.9055, 121.606, '售罄', 'e220b1596414cf0e4abf57c8af6de07d', 19000, 18533, 19064);
INSERT INTO `loupan` VALUES (243750, '悦泰街里', '住宅', '小高层', 0, '天津街与民生街交汇口', '27', '13000', '50000', '500', 19000, '0a41f54061263a6a752b87a74c097fc4', '1室1厅1卫', 38.9301, 121.651, '售罄', '40ddd51241aff7d0071656eb7dfcaa3c', 19000, 18626, 19058);
INSERT INTO `loupan` VALUES (243751, '华都文郡', '住宅', '高层', 1, '五一路与白山路交汇处', '25', '10765', '100000', '1300', 19000, 'd07814d4298600b14b3a6594be177d2e', '2室2厅1卫', 38.9133, 121.599, '售罄', '5fb3f5945d59969e31e55c94fc36f87a', 19000, 18682, 19082);
INSERT INTO `loupan` VALUES (244653, '秀月佳苑', '住宅', '小高层,高层', 0, '桃源街红旗巷110-5号', '17', '15000', '30000', '210', 19000, '6c845f4eaa77a5395676793ea725ce55', '3室2厅2卫', 38.8901, 121.667, '售罄', '00fc4c1f13416765386e0e97cca0c8b8', 19000, 18888, 19058);
INSERT INTO `loupan` VALUES (244664, '安邦阳光尚城', '住宅', '小高层,高层', 2, '红凌路东段', '14', '22657', '74191', '800', 19000, '185ed697bf110e058f3828e14ab1ec7f', '2室2厅1卫', 38.9187, 121.543, '售罄', '95fc304284b280bfc33b703d96710af0', 19000, 18946, 19008);
INSERT INTO `loupan` VALUES (244665, '华润置地广场', '商住', '多层,高层', 2, '山东路与中华路交汇处以北', '25', '168000', '700000', '4000', 30000, '0f98e70e67a06e0cc84184f459b7267b', '3室2厅1卫', 38.9997, 121.595, '售罄', '206c21379f3be11b791217be1ca35619', 30000, 29825, 30053);
INSERT INTO `loupan` VALUES (244666, '外滩七号', '商住', '高层', 3, '长江路489号', '28', '7500', '74390', '848', 15500, '416595ba82d8a3dc8cf9245494ee0b73', '商住', 38.9264, 121.626, '售罄', '42912153523875e8e65081bc1176a17a', 15500, 15300, 15524);
INSERT INTO `loupan` VALUES (245479, '泊林映山云景', '住宅', '小高层', 2, '红凌路', '27', '12000', '60000', '215', 19000, 'dae1c31d57f728d1759b5ec3b7fb9d8a', '1室1厅1卫', 38.9152, 121.536, '售罄', 'fec2b50683501bec6de70485e677c5f5', 19000, 18826, 19005);
INSERT INTO `loupan` VALUES (245562, '长江杰座', '住宅', '高层', 3, '黄河路越秀大厦对面', '25', '20619', '30102', '188', 19000, '777f76aeb4f98395d1be19409deaa657', '2室2厅1卫', 38.9275, 121.613, '售罄', 'c4cc792e15fcf4aadb9631b6f040fd9f', 19000, 18934, 19018);
INSERT INTO `loupan` VALUES (245582, '鹏德西湖', '住宅', '高层', 2, '红旗西路与张前路交汇处西侧', '15', '6400', '18900', '154', 19000, 'a66346a3763e586ab9c8296aff1c6917', '3室2厅2卫', 38.938, 121.517, '售罄', '3c9113bf3deb117679b14b1ff853fa5d', 19000, 18606, 19052);
INSERT INTO `loupan` VALUES (246281, '枫丹丽城', '住宅', '多层,小高层', 2, '风华路', '27', '270000', '470000', '2856', 14000, 'c518a8351490cc7d6e28b67f0ebf88be', '3室2厅2卫', 39.0086, 121.619, '售罄', '2d95bc90e6821fead508f5866d8a4724', 14000, 13737, 14002);
INSERT INTO `loupan` VALUES (246358, '一方国际', '住宅', '高层', 0, '安乐街9号', '13', '9000', '110000', '300', 19000, '841c7191bc812a35ce87f4016de254ed', '1室2厅1卫', 38.9274, 121.654, '售罄', '85629678b33b20bef36c38fed25cbd23', 19000, 18977, 19041);
INSERT INTO `loupan` VALUES (246457, '泉水锦泉源五期', '住宅', '多层,小高层', 2, '华东路213号', '18', '120000', '150000', '1900', 19000, '34ed6f332c5d361881a8c4b81479b5f6', '1室1厅1卫', 38.9956, 121.593, '售罄', 'e770cfb491070d82c82feed44944eee6', 19000, 18621, 19019);
INSERT INTO `loupan` VALUES (246463, '中海海港城Ⅱ期峯汇', '商住', '高层', 0, '人民路港湾广场北侧', '15', '1000000', '1600000', '1639', 20000, 'a456cf8d289c784ab088f66addd5271b', '商住', 38.9356, 121.663, '售罄', 'd1bdf550bebeba60c8884afab34b7c4e', 20000, 19841, 20005);
INSERT INTO `loupan` VALUES (246569, '星光域', '住宅', '高层', 0, '港盛路61号', '10', '33600', '110000', '431', 23000, '89b99f5477bc359255bdad09e69a123f', '3室3厅5卫', 38.9228, 121.699, '售罄', '886b646ac4e79b9c350bb7e31893db41', 23000, 22537, 23068);
INSERT INTO `loupan` VALUES (246783, '温莎小镇', '住宅', '多层,高层', 2, '东方路', '26', '68000', '93000', '456', 20000, '22e83dc45605438307df5cb1bc652aae', '3室2厅2卫', 38.9692, 121.605, '售罄', '1ea509691fa3d8580132288c5cdcb381', 20000, 19911, 20027);
INSERT INTO `loupan` VALUES (246788, '山屏美境', '住宅', '小高层', 0, '中山山屏街703路终点站', '15', '2000', '8900', '40', 19000, '69f78736c36910ba556f2d25c8936b09', '0室0厅0卫', 38.9043, 121.69, '售罄', '57c78e51fe0167d21e7677ad56b9cd23', 19000, 18901, 19009);
INSERT INTO `loupan` VALUES (247762, '华远新都汇广场', '住宅', '高层', 2, '华北路496号', '19', '4546', '30337', '52', 19000, '791e73c2436b2274ffd5b37294ea9cd2', '2室1厅1卫', 39.0155, 121.6, '售罄', '9655a03f3c2103bcecd7a280738c353a', 19000, 18505, 19000);
INSERT INTO `loupan` VALUES (247858, '亿合城', '住宅', '高层', 2, '中华西路和山东路交汇处', '21', '33000', '230000', '1408', 10000, '5841f08354bebd3c27c0c0cba11fa7e3', '1室1厅1卫', 38.9978, 121.595, '售罄', 'dfba1c5c278ff731bc052528411950d3', 10000, 9762, 10059);
INSERT INTO `loupan` VALUES (248142, '新世界名泷', '商住', '高层', 0, '人民路41号', '30', '16600', '219324', '1158', 18000, '18483d056a33576487c20b120e594e8d', '商住', 38.9297, 121.659, '售罄', '8b93af8d703b97319354cf6ebc6cc7c1', 18000, 18000, 18095);
INSERT INTO `loupan` VALUES (248210, '星海融汇', '住宅', '高层', 1, '胜利路168', '24', '150000', '800000', '3500', 18500, '1900cc355d27fbfc63456b65c72011a4', '5室2厅3卫', 38.9037, 121.603, '售罄', '3fdc2cf55c902ab5c80bb40cdf5e5202', 18500, 18151, 18510);
INSERT INTO `loupan` VALUES (248217, '中裕金街广场', '住宅', '小高层', 2, '松江路妇幼保健院对面', '20', '21400', '69581', '417', 19000, '78ae99509cd5578be10dabb9bb9235a6', '2室2厅1卫', 38.9745, 121.589, '售罄', '84f33baba478607d3c8ebc78c51c3709', 19000, 18653, 19021);
INSERT INTO `loupan` VALUES (248218, '大连国际商务城', '住宅', '独栋别墅', 2, '虹城路660号', '12', '90000', '88000', '600', 19000, '274f038f257d9375ad494372a45799fe', '1室1厅1卫', 38.9838, 121.496, '售罄', 'dd106f081493d153ed59b2b4b24f5c21', 19000, 18670, 19100);
INSERT INTO `loupan` VALUES (248239, '金广君悦山', '住宅', '高层', 0, '中山区华乐街东侧', '28', '11000', '51000', '176', 19000, '09e7b881ad576fdc48a2c998ed94f6a0', '4室2厅2卫', 38.9186, 121.702, '售罄', '4d01de9fec3de7af8a24275b324de8f0', 19000, 18626, 19021);
INSERT INTO `loupan` VALUES (248386, '西山湖1号', '商住', '多层,小高层', 2, '旅顺中路与柳树街交汇处（西山湖西侧）', '16', '27900', '54400', '111', 11600, 'c47c7a469e639e60d1feebfa40602a51', '2室2厅2卫', 38.9437, 121.483, '售罄', '60602697eb9326665a9ef9b337a0c777', 11600, 11418, 11634);
INSERT INTO `loupan` VALUES (248529, '中航国际广场', '住宅', '多层,小高层,高层', 1, '集贤街', '22', '46800', '420000', '400', 19000, '6f6c114f6b7f87a503c30f1144990e8c', '4室2厅3卫', 38.9096, 121.603, '售罄', 'd95a0c172b7bcd38d1a89cbc203cabf6', 19000, 18871, 19060);
INSERT INTO `loupan` VALUES (248671, '军悦湾', '住宅', '小高层,高层', 2, '宋家街道127号', '17', '120000', '140000', '1200', 19000, 'e32025b4e06c8ffceecb61225d84b176', '1室1厅1卫', 38.9963, 121.591, '售罄', 'ac276daf6e2c6b566a6b24cc881bc8a9', 19000, 18646, 19080);
INSERT INTO `loupan` VALUES (249034, '万成御园', '住宅', '高层', 2, '甘井子路与甘北路交汇处，七十七中学对面', '26', '15834', '72893', '577', 13500, '92684f9eed55ee936334f1182d36aab8', '3室2厅1卫', 38.9854, 121.637, '售罄', '0521a10c9cf5bba4c6f1de34b2791852', 13500, 13352, 13530);
INSERT INTO `loupan` VALUES (249035, '桑尼小镇', '住宅', '小高层', 2, '华南广场西行1100米', '24', '16500', '41186', '500', 13000, 'd489160145afb87f87c7360eb3fa7f38', '2室2厅1卫', 38.9968, 121.579, '售罄', 'c447adac88190beb147df4cebb5379d6', 13000, 12677, 13048);
INSERT INTO `loupan` VALUES (249250, '亿达春田III期蝶园', '住宅', '多层,小高层,高层,联排别墅,双拼别墅', 2, '区政府新址西行5公里', '21', '3000000', '1350000', '5322', 19000, 'd3e0656d70d61c06165bc262e2326e40', '3室2厅1卫', 38.9588, 121.528, '售罄', 'b84d95ef33b78a3d6d1bcb1f4781624d', 19000, 18995, 19082);
INSERT INTO `loupan` VALUES (249400, '益丰乾城', '住宅', '小高层,高层', 2, '罕关北路,近馨艺街', '29', '160000', '420000', '3806', 13000, 'b34b5ccc5f98f2808188224abe5261eb', '2室2厅1卫', 39.0474, 121.662, '售罄', '04f6537f4453c7a62ecd21d9d26f8611', 13000, 12701, 13061);
INSERT INTO `loupan` VALUES (249530, '星光耀广场', '商住', '高层', 0, '长江东路138号', '13', '224800', '584500', '1173', 17000, '10bf369a020b7313fdd0fdbde7f32788', '商住', 38.9315, 121.676, '在售', 'f1b383e6b79519e3cf951246034446af', 17000, 16956, 17078);
INSERT INTO `loupan` VALUES (249602, '欧尚广场', '商住', '高层', 2, '汇泉路东侧', '29', '83300', '191442', '957', 13000, '6229f1d451a6319c631d29106cea7132', '商住', 39.0132, 121.635, '售罄', '4328f86f7fbd3fdeec52f03b2f8fbe5e', 13000, 12601, 13003);
INSERT INTO `loupan` VALUES (249807, '星海CEO公馆', '住宅', '高层', 1, '星海广场最核心的中轴线西侧', '13', '15000', '110000', '318', 27000, '4fd475c989760fa204d5b43e89411108', '5室3厅5卫', 38.9478, 121.592, '售罄', 'e77dd5775adbcb6e4e22f923180d325d', 27000, 26863, 27028);
INSERT INTO `loupan` VALUES (249813, '万科蓝山', '住宅', '小高层', 2, '周水子小学北，鼎山公园旁', '29', '120000', '210000', '1600', 16500, '4ba9a6c9c51a24964275b53faf424a09', '3室2厅1卫', 38.9609, 121.576, '售罄', 'e69f95b83a88810d3c86c473c7226c84', 16500, 16344, 16510);
INSERT INTO `loupan` VALUES (249845, '南山首府', '住宅', '多层,小高层', 0, '麒麟园1', '25', '52000', '82000', '700', 38000, '268e0808893cb77f1c1cbff7b0282dc6', '4室2厅4卫', 38.9175, 121.652, '售罄', '4c79dd67712e32cdafcfbc22e538b9a7', 38000, 37623, 38072);
INSERT INTO `loupan` VALUES (249846, '万棵树', '住宅', '多层,小高层,高层', 1, '富民路', '25', '63000', '170000', '1234', 19000, '9a173331814ba229b1ff315f4ec7e57c', '2室2厅1卫', 38.9326, 121.575, '售罄', 'ba8cd234e87172be53e32d7be973fe78', 19000, 18722, 19023);
INSERT INTO `loupan` VALUES (249852, '中海御湖熙谷', '住宅', '高层', 2, '红旗街道柳树村辽宁师范大学西山校区南侧', '14', '99000', '175230', '1280', 11500, '4ea13bec45ad197b2446fcace7b62301', '4室2厅2卫', 38.9282, 121.491, '售罄', '173a8a23577c498a2896222b7fa68873', 11500, 11036, 11567);
INSERT INTO `loupan` VALUES (249855, '中庚当代艺术', '住宅', '高层', 0, '港东五街,近港兴路', '16', '134700', '493024', '2536', 24000, 'db87c341da07e44d5319e1680c9f4d57', '4室2厅3卫', 38.9252, 121.701, '售罄', '335e9f662abc534a9278fd32934c3882', 24000, 23887, 24093);
INSERT INTO `loupan` VALUES (249856, '佳兆业中心', '商住', '高层', 0, '港兴路,近珠锦街', '21', '26600', '160000', '950', 20000, '0ade704cb320b220daf7c57b89e27e11', '商住', 38.9318, 121.681, '售罄', '2b6ba36bb96e83a9a87bebb4a51a298b', 20000, 19852, 20008);
INSERT INTO `loupan` VALUES (249861, '书香门第', '住宅', '多层', 2, '金家街金荣路62号（金二小学后身北行300米左右）', '18', '5100', '5610', '48', 19000, '75bcba8c7bbb1e4b840bd1cb96e6b14f', '2室2厅1卫', 38.9773, 121.598, '售罄', '6a616d51a69c56d22a90fdec2f4929a5', 19000, 18918, 19057);
INSERT INTO `loupan` VALUES (249863, '鹏德同心园', '住宅', '高层', 2, '张家村，张前路西侧', '25', '2', '34500', '136', 11000, 'bfc11ed643fb96cc0464b1c1fa1ff361', '3室2厅1卫', 38.9384, 121.517, '售罄', '2394911c2a4810813ad213e63df63c49', 11000, 10556, 11031);
INSERT INTO `loupan` VALUES (249869, '东港林苑', '住宅', '小高层', 0, '长江东路65号', '10', '2886', '29060', '436', 19500, '2417473700ca59c6213dc84077fbf0d2', '1室1厅1卫', 38.9305, 121.672, '售罄', 'cb5aacc57698499c8754209223fa761a', 19500, 19418, 19565);
INSERT INTO `loupan` VALUES (249959, '远洋荣域', '住宅', '小高层,高层', 2, '汇通街79号', '23', '228800', '936000', '321', 16000, '811af02ea0677a3c70264b35099cdcf2', '3室2厅1卫', 39.006, 121.597, '售罄', 'f3358fcee51f507a1e56405eec810eee', 16000, 15867, 16005);
INSERT INTO `loupan` VALUES (250006, '福佳机场前院', '住宅', '多层,小高层', 2, '虹港路', '11', '30000', '44000', '396', 21000, 'ecd6f7afb617ba460dd1dd80c79ccc69', '4室2厅2卫', 38.9634, 121.542, '售罄', '42039af0f9ac5bd5e091253ed88453c6', 21000, 20665, 21072);
INSERT INTO `loupan` VALUES (250007, '三鼎春天', '住宅', '多层,小高层', 2, '明珠路', '10', '240000', '430000', '1064', 24000, 'a4d0df4f88d604e3ef1050f8b9422ab4', '3室2厅2卫', 38.9541, 121.525, '售罄', '0b52af9bf62fbb364b6f05f7239a9a1e', 24000, 23703, 24100);
INSERT INTO `loupan` VALUES (250334, '中国铁建海语城', '住宅', '多层,小高层,高层', 2, '东方路', '17', '155000', '262500', '2414', 23500, '9865be9484ed5b771e0afeb30ef0e8e5', '4室2厅2卫', 38.9701, 121.62, '售罄', 'f48d6d776b8875e26a22716d4c245987', 23500, 23465, 23506);
INSERT INTO `loupan` VALUES (250360, '御园', '住宅', '小高层,高层', 1, '富民路', '12', '70050', '259998', '675', 19000, '486765cc9560d3ae37bf09b40b5cfa28', '3室2厅2卫', 38.9339, 121.569, '售罄', 'ad15b773b9ba3d951514cb51f7c8a509', 19000, 18948, 19080);
INSERT INTO `loupan` VALUES (250382, '紫御东方东港东·17度', '住宅', '高层', 0, '港兴路,近东旭街', '13', '96000', '280000', '1200', 24000, 'b90e648106c5b3658e94bd73fdaf5610', '3室2厅3卫', 38.92, 121.718, '售罄', '566919baf70f39daa000db51fe70c81d', 24000, 23787, 24095);
INSERT INTO `loupan` VALUES (250384, '富丽华国际', '商住', '高层', 0, '长江路28号', '15', '12700', '150900', '900', 19000, 'c5266f4c193c38346692e085564e78ac', '商住', 38.932, 121.658, '售罄', '41f06155830d97b21d8917835446bcd6', 19000, 18514, 19098);
INSERT INTO `loupan` VALUES (250386, '翰林苑', '住宅', '多层,小高层,高层', 2, '东方路2号', '14', '42500', '80000', '269', 19000, '2090e0d13e9aa5acc756978fa9999771', '2室2厅1卫', 38.973, 121.599, '售罄', '3dfc68ce3a1510911ebca294f3a8d099', 19000, 18913, 19074);
INSERT INTO `loupan` VALUES (250389, '圆梦园', '住宅', '小高层,高层', 2, '虹霞路（橄榄季北侧）', '20', '13800', '33000', '187', 13500, '56452c9c10afc517e32b3473b3cb253c', '3室2厅1卫', 38.9635, 121.54, '售罄', 'bafb79f9b157e28e3056d98efb058da1', 13500, 13211, 13503);
INSERT INTO `loupan` VALUES (250481, '星海凯泰铭座', '商住', '高层', 1, '体坛路', '14', '9900', '160000', '630', 26000, '79f38590aa3cb1fa00e8173c003ce147', '商住', 38.8986, 121.593, '售罄', '1f56020e7e669446d0947606b87eb98f', 26000, 25671, 26059);
INSERT INTO `loupan` VALUES (250892, '绿城九龙仓桃源里', '住宅', '多层,小高层,高层', 0, '解放路', '15', '85700', '321760', '1462', 25000, '419977f1071054fa05f44c820c3f8f87', '4室2厅2卫', 38.8987, 121.661, '在售', '988100e234c17bb7c56cc11aa633ed55', 25000, 24839, 25034);
INSERT INTO `loupan` VALUES (250896, '国运壹号', '住宅', '多层,小高层,高层', 1, '沙河口区联合路东侧、鞍山路南侧、三春街北侧、工华街西侧', '16', '30200', '172460', '900', 16000, '8b4655e3a0540774eeeb3df21379f21c', '2室2厅1卫', 38.9254, 121.605, '售罄', '024ebdb29cbd0a00da9d97a553520b86', 16000, 15840, 16053);
INSERT INTO `loupan` VALUES (250901, '青云天下', '住宅', '多层,小高层,高层,花园洋房', 0, '解放路425号', '26', '96000', '370000', '2750', 26000, '82024fd9b554f814960e3c4e55036afc', '3室2厅2卫', 38.9019, 121.65, '在售', 'dfb129adc948a713c28143ac0fbc712c', 26000, 25802, 26038);
INSERT INTO `loupan` VALUES (250907, '港湾隽景', '住宅', '小高层,高层', 0, '发达街2号', '25', '82000', '285000', '3146', 17000, 'd8276c6cdaa7c155f71a36f8eaba2b3e', '3室2厅2卫', 38.9327, 121.66, '售罄', 'ab9a105801a2e2dc3334f574f1f15f2b', 17000, 16566, 17094);
INSERT INTO `loupan` VALUES (250911, '保利天禧', '住宅', '小高层,高层', 0, '港浦路与港东八街交汇处', '17', '343400', '1200000', '1300', 13000, '762fab92f0a90b4df7f9922fb0487fae', '4室2厅2卫', 38.9241, 121.711, '在售', '33feefa75d4ba60ca3fdaa842860994d', 13000, 12757, 13066);
INSERT INTO `loupan` VALUES (250916, '宏都熙景', '住宅', '多层,小高层,高层', 2, '华东路,近汇畅街', '19', '70000', '140000', '1166', 24000, 'a5ecbc32d89aa82e2f32ec2ae885d9f6', '3室2厅1卫', 39.0047, 121.6, '售罄', 'dddf6e334b884a5a8d997f87a8b5e84d', 24000, 23985, 24093);
INSERT INTO `loupan` VALUES (251341, '鹿港小镇', '住宅', '高层', 2, '金湾路', '14', '35000', '120000', '1476', 10800, '040c7de3b2562ab88d3353caad3ac83a', '2室2厅1卫', 39.0286, 121.727, '售罄', 'ee264261ca9dfc8a38a257e55b89480a', 10800, 10698, 10851);
INSERT INTO `loupan` VALUES (251343, '米兰宫', '住宅', '多层,高层', 2, '东快路中华路交叉口东行一公里', '18', '152600', '292803', '1600', 15500, 'c0861c4150a157746b99c3a565076a9d', '4室2厅2卫', 38.9956, 121.593, '售罄', 'c666beec1370592d66deabd9dc9fc1eb', 15500, 15023, 15513);
INSERT INTO `loupan` VALUES (251549, '维多利亚公馆', '住宅', '高层', 0, '港浦路', '24', '43000', '550000', '2753', 38000, 'b5933315d7dec69a462431d4a2dac27a', '4室3厅4卫', 38.9306, 121.695, '在售', 'b062170e8f8764634cf010a187d89437', 38000, 37723, 38064);
INSERT INTO `loupan` VALUES (251620, '同泰公馆', '住宅', '高层', 1, '同泰街95-4号(沙河口区人民政府西北方0.07公里处)', '20', '8400', '65000', '248', 19000, '993314c65d34e74f30f0687415116866', '6室3厅3卫', 38.9113, 121.6, '售罄', '4f9eac006efe854d37f4c34b56ecf78c', 19000, 18607, 19050);
INSERT INTO `loupan` VALUES (251726, '锦里', '住宅', '高层', 1, '华联商超东侧', '18', '2690', '27955', '248', 19000, 'd9e66a3811fc62db1d69f6da2ec861be', '1室1厅1卫', 38.9224, 121.61, '售罄', '0ab34efcc944d765de068d089384e019', 19000, 18945, 19036);
INSERT INTO `loupan` VALUES (251812, '星海壹景', '住宅', '高层', 1, '西南路55号', '16', '4200', '46821', '310', 19000, '6193c9749fc5644a0f99dfd216962e9d', '2室2厅1卫', 38.8875, 121.568, '售罄', 'c61f9e640a04c8ba2428cd987cbd654a', 19000, 18718, 19070);
INSERT INTO `loupan` VALUES (251925, '润德中心', '住宅', '高层', 3, '新开路与长江路交汇处', '12', '2450', '58864', '180', 19000, '041ca1546ea872771c3a29a55661252f', '1室2厅1卫', 38.9259, 121.624, '售罄', '65c63ec096f45d883783c1d23caf1494', 19000, 18787, 19073);
INSERT INTO `loupan` VALUES (251926, '春柳公园', '住宅', '多层,小高层,高层', 1, '西南路889号', '26', '70000', '230000', '1508', 17500, '4d960a2de2e11158d455c64bd209f4be', '3室2厅1卫', 38.9468, 121.586, '售罄', 'd39380d164f77c405e337337fe29d88c', 17500, 17428, 17504);
INSERT INTO `loupan` VALUES (251956, '中海天赋山二期', '住宅', '多层,小高层', 1, '新生路中海英伦官邸南行100米', '15', '100000', '188000', '1176', 19500, 'fe23c6e3c0982f26a6b24ad4b3c35397', '3室2厅2卫', 38.9407, 121.566, '售罄', 'cc7414c16c224472edca46c62aff66a6', 19500, 19228, 19504);
INSERT INTO `loupan` VALUES (252122, '中国铁建·国滨苑', '商住', '高层', 0, '港隆路', '16', '43500', '2280000', '2227', 21000, 'e6a693a13d909fd95460d55d37e7d21f', '商住', 38.9211, 121.707, '在售', 'd563767ffc6db65a5307a86879da9ad5', 21000, 20721, 21018);
INSERT INTO `loupan` VALUES (252138, '保华旺苑', '商住', '多层,高层', 0, '三八广场4号', '20', '7400', '58157', '181', 15500, 'aa6b051f79a01beb02040974852c0ddf', '商住', 38.9245, 121.664, '售罄', 'a542f31af0986c870ccf1a0f865ebf71', 15500, 15444, 15573);
INSERT INTO `loupan` VALUES (252514, '中海凤凰熙岸', '住宅', '小高层,高层', 2, '虹城路', '18', '95600', '165100', '988', 13000, '7375688d8b3831e5f2505e504a25cce0', '2室2厅1卫', 38.9989, 121.446, '售罄', 'f7a9734c61034bc7a290444a1d21cfb5', 13000, 12660, 13094);
INSERT INTO `loupan` VALUES (252556, '恒大帝景', '住宅', '多层,小高层,花园洋房', 1, '南松路', '12', '153000', '310000', '1366', 18000, 'b96cfacde6b83777fd3479761996733b', '3室2厅2卫', 38.9517, 121.559, '售罄', '71e2deb42964965017149154c43876d1', 18000, 17527, 18067);
INSERT INTO `loupan` VALUES (252583, '新星星海中心', '商住', '高层', 1, '太原街,近胜利路', '30', '225000', '260000', '1860', 21000, '1b57ba1268791b150b8e8eb789480e1e', '商住', 38.9021, 121.6, '售罄', 'bfd8b7269ab55e1d549c3174248a30d6', 21000, 20518, 21044);
INSERT INTO `loupan` VALUES (252604, '华丰金山花园', '住宅', '小高层,高层', 2, '金龙路与黄山路交汇处', '14', '120000', '270000', '1958', 12500, '9ef7c14faf33ab61e1a53ce05ac5bf18', '1室1厅1卫', 38.9839, 121.601, '售罄', 'ebcb16fe3b259cfc66c099fcb49422d2', 12500, 12338, 12533);
INSERT INTO `loupan` VALUES (252660, '中航华府', '住宅', '多层,高层', 2, '体育中心南侧700米，近西北路', '13', '110000', '310000', '2341', 13000, '1162c78d2ef6f227ccb939d3e3fb8c55', '4室2厅2卫', 39.0158, 121.561, '售罄', 'c36d60eeb271754acba1cc730101b304', 13000, 12725, 13069);
INSERT INTO `loupan` VALUES (252694, '万科公园里', '住宅', '小高层', 2, '大连门广场1号，鼎山公园里', '10', '19000', '47569', '246', 14500, 'f5a205afd5912e31280ddd1d170d96fe', '2室2厅1卫', 38.9563, 121.572, '售罄', 'e63b0bb836441926f4a1c7a0ba22dc34', 14500, 14166, 14506);
INSERT INTO `loupan` VALUES (252903, '恒大明秀庄园', '住宅', '联排别墅,双拼别墅,多层,高层', 0, '秀月街15中44中旁', '18', '159200', '366868', '1681', 29000, '2f90957c148124afed1e3be7a6530b12', '4室2厅1卫', 38.881, 121.66, '在售', '169241a866be32a22e1d7f62a6eba8ea', 29000, 28753, 29009);
INSERT INTO `loupan` VALUES (252999, '磐海', '商住', '高层', 0, '人民东路66号', '23', '30000', '220000', '1454', 28500, '7c71758e1cdc289f1ce072cef2362364', '商住', 38.9374, 121.676, '售罄', '9e3fbdd97cc0def460ebbeda5e467f5c', 28500, 28102, 28575);
INSERT INTO `loupan` VALUES (253015, '亿达云集', '商住', '小高层,高层', 0, '解放路西，石葵路南', '30', '80600', '553420', '2685', 24000, '0be14d72b71848abc09f6279882d1769', '商住', 38.9029, 121.654, '售罄', '643922116950ac3ca919b46cc22334a1', 24000, 23798, 24035);
INSERT INTO `loupan` VALUES (263923, '雅荟庭', '商住', '高层', 0, '人民路66号', '11', '5886', '54616', '182', 28000, 'e55b55b650b90b8fcbce7cb8bb0a7fee', '商住', 38.932, 121.66, '售罄', '4534efd3b4428d4cc50ca865297abce8', 28000, 27832, 28025);
INSERT INTO `loupan` VALUES (297410, '中信丰悦城', '住宅', '高层', 0, '港湾街6号 ', '27', '26300', '268900', '1400', 26000, '5312ca0078b58fa4f4c97eaf0b5becfb', '3室2厅2卫', 38.9305, 121.669, '在售', '47cc352957e9ac1294d69604ef52f686', 26000, 25527, 26086);
INSERT INTO `loupan` VALUES (297432, '海韵华府', '住宅', '多层,高层', 0, '滨海北路与东旭街交汇处南侧', '26', '80000', '220000', '1548', 21300, '28a0485c91c57da8016dfeba8172dce9', '3室2厅2卫', 38.9164, 121.714, '在售', '76d1a9ddddebfee900a5e679526c5d60', 21300, 21125, 21393);
INSERT INTO `loupan` VALUES (297593, '一方•大连城堡', '商住', '小高层', 1, '滨海西路596号', '23', '49000', '117000', '388', 40000, 'ff4ec33591ad52d9291446c5afc866a4', '商住', 38.8833, 121.602, '售罄', '629da99d4c0468c6c93ca2cb931951e0', 40000, 39697, 40019);
INSERT INTO `loupan` VALUES (297856, '万科金域华府', '住宅', '多层,小高层', 2, '甘区政府旁，乐都汇购物中心东', '22', '43900', '99760', '656', 13500, 'a2026b7f306f22a5ed16f1a2642476ad', '2室2厅1卫', 38.9655, 121.534, '售罄', '9a9022e5b048b7f266d5e62bd67a8bc8', 13500, 13050, 13569);
INSERT INTO `loupan` VALUES (383872, '恒大四季上东', '住宅', '多层,高层', 0, '华乐街', '30', '74261', '223631', '1566', 20000, '312a04dbb10328d38c0f8cdd5d79b996', '4室2厅3卫', 38.9179, 121.71, '售罄', 'f570ab3ba46176f082fbd1a1a2ece888', 20000, 19510, 20089);
INSERT INTO `loupan` VALUES (389750, '恒大西山檀府', '别墅', '独栋别墅,联排别墅', 2, '柳树南街', '10', '38310', '25668', '88', 13000, '907467a663dab06015b4879ee4c1bdc5', '6室3厅3卫', 38.9345, 121.493, '售罄', '725e002691ece59866fbf514ee87070a', 13000, 12575, 13042);
INSERT INTO `loupan` VALUES (400495, '金地檀境', '住宅', '多层,小高层,高层,花园洋房', 2, '关厢路', '12', '110000', '237000', '1752', 14000, '9d498c4ff0350b51cf1f49c12b5eb02c', '3室2厅1卫', 39.0408, 121.663, '售罄', '8f9b3e7f8e40223540c182e4c8db433d', 14000, 13882, 14064);
INSERT INTO `loupan` VALUES (400554, '悦景轩', '住宅', '多层,小高层', 2, '西南路与海口路交汇处 海口路1号', '30', '7900', '17600', '150', 10300, 'ea1bbd8be6cd2400cf0e37bea57619af', '3室2厅1卫', 38.9606, 121.597, '售罄', '68ee295ca9bf658b9acdb324da79174d', 10300, 10149, 10334);
INSERT INTO `loupan` VALUES (400626, '恒大港湾', '住宅', '小高层,高层', 2, '俪泊街与秀泊街交汇处西行100米', '18', '247600', '607769', '3471', 12800, '0c723f7f44f467fdf8789dd2ba7b77d6', '3室2厅2卫', 39.0358, 121.709, '在售', '0ee959e87241d385c305f21c8183c295', 12800, 12653, 12823);
INSERT INTO `loupan` VALUES (400661, '东港天鹅湾', '住宅', '多层,高层', 0, '港浦路,近港东八街', '18', '40400', '182508', '850', 27500, '523768e30635eddcdfa42b2b17dcb31c', '3室2厅2卫', 38.9252, 121.707, '售罄', '0972a9b36e66c7ec8d8ac8fba0bfd7c1', 27500, 27291, 27503);
INSERT INTO `loupan` VALUES (400952, '首开铂郡', '住宅', '高层', 0, '长江东路,近春海街', '24', '51100', '127750', '500', 24800, '919ad9b6c55f00f8169fc4fa70855b5e', '4室2厅3卫', 38.926, 121.684, '售罄', 'f728f0c70de872ccc37282b50b6e07a5', 24800, 24626, 24830);
INSERT INTO `loupan` VALUES (401208, '华雪馨苑', '商住', '高层', 0, '中山区吉庆街34号（上海路与吉庆街交接口处）', '28', '7093', '69213', '382', 19000, '26e78625f70f8cdddf2f4e99e48cf4b8', '商住', 38.931, 121.648, '售罄', '74afdc8867f12837455283db84e56e14', 19000, 18953, 19030);
INSERT INTO `loupan` VALUES (406065, '恒峰天泉小镇泽龙苑', '住宅', '多层,小高层', 2, '玉水街,近玉山路', '12', '168600', '422711', '1065', 14000, '4dd3f518fea0b69fcfc33347bd29d123', '4室2厅2卫', 38.9775, 121.551, '售罄', '4b45ee1f86a96b47e82151d151446471', 14000, 13886, 14026);
INSERT INTO `loupan` VALUES (409327, '中华城', '住宅', '小高层,高层,花园洋房', 2, '岚岭路', '12', '42100', '228382', '1608', 16500, 'd2201f3a6ba0df6d601b3b8b4fd8eff6', '3室2厅2卫', 39.0265, 121.591, '售罄', '8814ab0c8680ad3d7a23b735694ac36a', 16500, 16049, 16556);
INSERT INTO `loupan` VALUES (411698, '万科城市之光', '住宅', '多层,小高层', 2, '张前线', '19', '170000', '280000', '1', 21000, '3842cc5fe3152781ff0b340a42c35545', '3室2厅1卫', 38.9809, 121.522, '售罄', 'cf13a4ce54a88b596797b0bcd4a6d23d', 21000, 20556, 21089);
INSERT INTO `loupan` VALUES (413864, '万科半山半海', '住宅', '高层', 1, '太行街', '20', '12200', '58400', '478', 20000, 'ef6070a4d48cab3a3691bd3397c7dac5', '2室2厅1卫', 38.901, 121.604, '售罄', '62529dc689a1e18cebd2ad5e94dd130e', 20000, 19892, 20003);
INSERT INTO `loupan` VALUES (413970, '益海美利山', '住宅', '多层,小高层,高层', 2, '金柳一街15', '15', '35000', '110000', '950', 16000, '02db2d856dd3e55f640803b39b671194', '3室2厅1卫', 38.9137, 121.526, '售罄', 'd1551cb6fb41e49de63333255c8605ca', 16000, 15832, 16061);
INSERT INTO `loupan` VALUES (414242, '福佳国宅', '商住', '高层', 1, '体坛路北侧', '29', '35000', '300000', '3000', 21500, 'fa0d4f955f7e20038c5401f00a94f1d5', '商住', 38.8993, 121.599, '售罄', '7887e9dd47a40f7e9d28a2b27e6680d8', 21500, 21340, 21516);
INSERT INTO `loupan` VALUES (414370, '星海长岛', '商住', '高层', 1, '太原街,近星河街', '10', '34700', '280810', '750', 21000, '4754502fa634522e460aac26867fa839', '商住', 38.8957, 121.602, '售罄', '05e6a2d77985784a9cad55c04b04f753', 21000, 20664, 21094);
INSERT INTO `loupan` VALUES (414468, '金地檀溪', '商住', '高层', 2, '中华路', '10', '152600', '292803', '1600', 18000, '9c4c9b2a9d69c231b28aea3ad7fa3d52', '商住', 39.0088, 121.638, '售罄', '0f5d0e682b6cf6a43137b57e35eae0fc', 18000, 17763, 18062);
INSERT INTO `loupan` VALUES (414649, '国合锦府', '商住', '高层', 0, '长江东路,近港东二街', '27', '16300', '73400', '397', 16500, '51782d8bd9882d5a28aa29ed714f10c4', '商住', 38.9254, 121.69, '售罄', '19f2b691e3ad9080d86f1051628c7623', 16500, 16167, 16521);
INSERT INTO `loupan` VALUES (416003, '华润置地半山悦景Ⅱ期', '住宅', '多层,高层', 0, '景山街', '26', '10800', '70800', '473', 26000, '3a97811568d3f41b9d54e624cc3cfbfb', '3室2厅2卫', 38.8955, 121.667, '售罄', 'f0dffbbdc48520169f6534a08108e3d6', 26000, 25714, 26035);
INSERT INTO `loupan` VALUES (416071, '万科中南府', '住宅', '小高层', 0, '中南路350号', '19', '15300', '42390', '190', 33000, '0cf0c4b9525f92d8566973f55025a2f3', '商住', 38.8961, 121.68, '售罄', 'fd092406ed17c7ca47620e5f59a5ad54', 33000, 32759, 33038);
INSERT INTO `loupan` VALUES (416905, '华润二十四城', '别墅', '联排别墅', 2, '玉屏路,近滨城街', '24', '42200', '48952', '231', 20000, '913f7c46a2384205d17208c2811c41a6', '5室2厅4卫', 38.9811, 121.55, '在售', '5c7dd1febdf1b9b093789d0149268a4e', 20000, 19613, 20091);
INSERT INTO `loupan` VALUES (416938, '碧桂园达沃斯广场', '商住', '高层', 0, '港浦路', '27', '17500', '143400', '1081', 19000, '52c096058609997e9bbe6e9dae78a2c9', '商住', 38.9336, 121.686, '售罄', '8760e862fb19e3d06670396cb1df0044', 19000, 18757, 19073);
INSERT INTO `loupan` VALUES (417084, '万科新都会住宅', '住宅', '多层,小高层,高层', 2, '南关岭街道云岭街西400米', '20', '53352', '191252', '1124', 16000, '8478937d52001c8c7b54a089f61c92e1', '3室2厅1卫', 39.0285, 121.586, '售罄', '62db2aac8a576ebd10541f38edeb352d', 16000, 15607, 16062);
INSERT INTO `loupan` VALUES (417373, '城家', '住宅', '小高层,高层', 2, '振连路', '13', '38500', '111960', '1', 11500, 'c5ccf1f1814f7389e7bcd941e9b307a3', '2室2厅1卫', 39.0335, 121.703, '售罄', 'b7621eabfc8d1972e85c9ab1cbc527df', 11500, 11147, 11566);
INSERT INTO `loupan` VALUES (417491, '凯丹公馆', '商住', '高层', 0, '长江东路96号', '13', '66000', '300000', '364', 19000, '104aacf8668ccb71c0e6e9d21242b4a3', '商住', 38.9286, 121.681, '在售', '0bccca9c46ee6e99e433cbd2f565299a', 19000, 18625, 19020);
INSERT INTO `loupan` VALUES (417503, '泰达慧谷青墅', '别墅', '独栋别墅,联排别墅', 2, '营生路', '20', '50000', '50000', '120', 19000, '3f931eb6f0b2110c913134b3fb774b64', '4室2厅2卫', 38.9666, 121.38, '售罄', 'daf0338dd130cac16f7245c81e3223f0', 19000, 18918, 19063);
INSERT INTO `loupan` VALUES (417521, '颐和星海', '住宅', '多层,高层,花园洋房', 1, '大连医科大学附属二院东侧100米', '14', '150000', '500000', '2063', 16500, '3c3681ad37267118783011434f75f090', '4室2厅2卫', 38.8888, 121.578, '售罄', '996f6e6f04e6b66efd53c5f2807b8dd5', 16500, 16081, 16500);
INSERT INTO `loupan` VALUES (417779, '金地自在城', '住宅', '小高层', 2, '罕关北路', '20', '110000', '290000', '2265', 14000, '8ba7e4fbf1841b0ee9ac22aeeff6af27', '3室2厅1卫', 39.043, 121.661, '售罄', 'd9aeb655e2c1e765c8ad86db012096f6', 14000, 13648, 14012);
INSERT INTO `loupan` VALUES (417788, '汇智云顶', '商住', '多层', 3, '胜利路与茂田巷的交汇处（34中对面）', '22', '3179', '9058', '60', 60000, '43075ccdc314f96631111a97697f4b45', '商住', 38.9133, 121.629, '售罄', '60e08bad6ee32626d6be72040cfcbf1a', 60000, 59825, 60091);
INSERT INTO `loupan` VALUES (417801, '伊电林溪花园', '住宅', '多层', 2, '辽宁省大连市甘井子区后革街与羊革线交叉口西50米', '17', '22000', '32000', '232', 13000, '47f0c31d3cf284ed09fedafecc427a29', '2室2厅1卫', 39.0165, 121.541, '售罄', '03f3432097945de36cb367acffd1814e', 13000, 12945, 13046);
INSERT INTO `loupan` VALUES (417911, '保利罗兰', '住宅', '多层,小高层', 2, '欣博街', '10', '100800', '239800', '1915', 14000, '52781059ab50273f4909d56780385783', '3室2厅2卫', 38.9972, 121.478, '售罄', 'bfe361574502b2ed128fb4f5c0e0cb10', 14000, 13506, 14095);
INSERT INTO `loupan` VALUES (417916, '保利梧桐语', '住宅', '小高层', 2, '辛萍街', '11', '29100', '101900', '656', 11500, '7f093b25e05bce44a832b962ea5beee0', '4室2厅2卫', 38.9853, 121.512, '售罄', '80c4a31055419f7b42ac253aedbc63a5', 11500, 11323, 11510);
INSERT INTO `loupan` VALUES (418391, '万科翡翠四季住宅', '住宅', '多层,小高层', 2, '辛博街1号', '28', '74000', '181800', '1360', 17000, '7342063bfed6acc92ae38b8a695331d6', '3室2厅2卫', 38.9948, 121.483, '售罄', '63214e1a0c577b85e5ae6cf9ad9ec9c1', 17000, 16551, 17097);
INSERT INTO `loupan` VALUES (420825, '中冶商务园', '别墅', '独栋别墅,双拼别墅', 2, '银杏大道', '28', '90000', '88000', '600', 24000, '1c02259df0491b1abd051a8d02339504', '5室2厅3卫', 38.983, 121.492, '售罄', '540d1632d95dc008e11e8b408f2dd51e', 24000, 23802, 24064);
INSERT INTO `loupan` VALUES (425603, '恒大城市之光', '商住', '高层', 0, '港隆路,近港东六街', '21', '32100', '169906', '1275', 16500, 'cba2ac513cffefddd4444f8a2bfa6ca8', '商住', 38.9246, 121.7, '售罄', '9b99ed398ee530f99d9f6a0b6c509d95', 16500, 16290, 16545);
INSERT INTO `loupan` VALUES (428688, '百年港湾莱弗家', '商住', '高层', 3, '海达北街', '20', '100400', '327000', '1720', 15000, '889d3744451d2e3ed0ec384c511ee2d4', '商住', 38.9352, 121.614, '售罄', '7c4cc4c4e3c0f3cf6c681c784c705456', 15000, 14940, 15044);
INSERT INTO `loupan` VALUES (428718, '中国铁建山语城', '住宅', '多层,小高层,高层', 2, '辛博街', '17', '62000', '175000', '1294', 15500, 'e5666c2e97559b4172caf8b5455d2391', '3室2厅2卫', 38.9982, 121.476, '售罄', 'baa5cb37849b3a600ffce3ba12b849c8', 15500, 15172, 15571);
INSERT INTO `loupan` VALUES (428861, '金地保利御中南', '住宅', '联排别墅,小高层', 0, '中青街', '12', '20720', '50440', '184', 28000, '7d2748de217256ccd3030600f8683029', '3室2厅2卫', 38.9109, 121.672, '售罄', 'b84f9bab5bb3d7c994a9c47e872b59dc', 28000, 27965, 28013);
INSERT INTO `loupan` VALUES (430987, '佳晟中南玖著', '住宅', '小高层,花园洋房', 0, '中南路265号', '24', '5300', '10000', '130', 30000, '0fc5ea4642de6afda26e2e6919dc2b12', '4室2厅3卫', 38.8896, 121.683, '售罄', 'd746400d77af692664d7b63ba925695d', 30000, 29881, 30012);
INSERT INTO `loupan` VALUES (431007, '招商海德公园', '住宅', '多层,高层', 2, '岭西路,近西北路', '16', '94000', '338000', '1360', 15000, '141f86ac03582997d813b7ac4fe66ff4', '3室2厅2卫', 39.0295, 121.581, '售罄', '7ce226e30950333afdb27edb926d3c1c', 15000, 14548, 15071);
INSERT INTO `loupan` VALUES (434009, '国合中山海悦', '住宅', '高层', 0, '鲁迅路201号', '20', '12000', '72590', '136', 18500, 'a6c2f09f760ed243ede142dda73023a3', '1室1厅1卫', 38.9253, 121.679, '售罄', '183a919fc043b94d3b23277a4e5fe304', 18500, 18256, 18599);
INSERT INTO `loupan` VALUES (435991, '金地阅府', '住宅', '花园洋房', 0, '智仁街41号（豪森茗家东北门对面）', '30', '10930', '13738', '86', 38000, '9d3d7b6cc798df9e4698221712a107e7', '2室2厅2卫', 38.911, 121.653, '售罄', '925f093cbe855b392d25114d7fcd9f61', 38000, 37525, 38020);
INSERT INTO `loupan` VALUES (436270, '御东港', '住宅', '高层', 0, '港盛路61号', '25', '28600', '86900', '400', 23000, 'fe13fda0a678765b7848d6f67100569e', '5室2厅5卫', 38.9235, 121.696, '在售', '81e51f2854572570e68c982d205c9ad1', 23000, 22770, 23045);
INSERT INTO `loupan` VALUES (438437, '福佳新城', '住宅', '小高层,高层,花园洋房', 2, '振兴路', '28', '3670000', '2000000', '2504', 14000, '52b784e4349b2f83f05d31f434b90e24', '2室2厅1卫', 39.0376, 121.666, '售罄', 'f4050fddaf6f27bd8b6ccaa58abcd1bb', 14000, 13607, 14069);
INSERT INTO `loupan` VALUES (440493, '万科翡翠书院', '住宅', '多层,小高层', 1, '新生路刘家桥小学对面', '17', '35700', '79990', '437', 23500, '7421ac1fb802c8cbcc54accd77c2ebed', '3室2厅1卫', 38.9455, 121.571, '在售', '68bc2360b08714f91122c73c77ad379c', 23500, 23015, 23531);
INSERT INTO `loupan` VALUES (444199, '万科誉澜道', '住宅', '高层', 0, '长江东路,近港东一街', '12', '42400', '99558', '248', 28000, 'c14a05b7d42a6bac4e81752208128729', '4室2厅2卫', 38.9269, 121.688, '售罄', '5b22dcb9bc04fab160d16b0eec249a75', 28000, 27563, 28083);
INSERT INTO `loupan` VALUES (444521, '旭辉家墅', '住宅', '', 1, '新生路', '20', '16000', '23000', '125', 20000, '97bf32a7e4e2c41303cd6cc68086c7c2', '3室2厅2卫', 38.9445, 121.571, '在售', 'f0b87eb8db00787308a32843f432d127', 20000, 19913, 20050);
INSERT INTO `loupan` VALUES (444619, '万科观贤别墅', '住宅', '', 2, '圣林街12号', '24', '126155', '134782', '1020', 30000, '8d8817a3df93c7987e7fe09b987e822d', '6室2厅8卫', 38.9555, 121.548, '在售', '97442e5c5cb93859cdbcb25a5a2d2b39', 30000, 29997, 30012);
INSERT INTO `loupan` VALUES (444683, '国运·壹号公寓', '商住', '高层', 1, '联合路与鞍山路交汇处', '17', '30200', '172460', '900', 13800, 'a2956930478663acd8641ca35c008b4f', '商住', 38.9259, 121.605, '售罄', '356aa7b823b995ca21257952f04e7cc0', 13800, 13751, 13875);
INSERT INTO `loupan` VALUES (446117, '龙湖天璞', '别墅', '', 0, '东港第一小学北', '22', '30500', '54900', '551', 19000, '6b9ca7eb3d8b50288badd10e5cdd9360', '3室2厅3卫', 38.922, 121.693, '售罄', 'abacee993a43e551416a4dfc6a926ac2', 19000, 18579, 19072);
INSERT INTO `loupan` VALUES (446319, '耶鲁时区', '住宅', '高层', 2, '翠蝶街,近翠田街', '13', '21000', '89600', '370', 17000, 'a9467c6a7c99983818fe823ebd7bff96', '1室1厅1卫', 38.9718, 121.463, '售罄', 'bf497e3699ef253943643fbbde321db3', 17000, 16528, 17012);
INSERT INTO `loupan` VALUES (446822, '一方大连城堡', '商住', '小高层', 1, '滨海西路596号', '14', '49000', '117000', '388', 40000, '1c7bae591b89517c8101467b1194a7ce', '商住', 38.8838, 121.603, '售罄', '41c51729334590b9ebd3b0d43dac5c85', 40000, 39799, 40044);
INSERT INTO `loupan` VALUES (446866, '万科大家', '住宅', '多层', 2, '东纬路103号', '15', '26000', '63000', '482', 27000, '404fe88617d8af83afb94d673bbca118', '3室2厅2卫', 38.9568, 121.582, '售罄', '123e7492c5a480909b7e0367930ef1b0', 27000, 26870, 27061);
INSERT INTO `loupan` VALUES (446981, '金地拾贰坊', '商住', '多层,联排别墅', 2, '金虹东路与银田街交汇处（春田中学南侧）', '11', '27000', '49000', '326', 11500, '9e68a7aba86f5c8814b93d670e09db26', '6室2厅4卫', 38.9728, 121.47, '售罄', '9db96a35db7ca3bd44172892dc475a01', 11500, 11350, 11533);
INSERT INTO `loupan` VALUES (449339, '星海绿山城', '商住', '高层', 3, '胜利东路238号', '16', '16345', '10287', '442', 17000, 'b31e998507fad13baaf2c8d12e26604c', '商住', 38.907, 121.615, '待售', '179bc560999ef7298b50afb0a64215a4', 17000, 16658, 17081);
INSERT INTO `loupan` VALUES (450530, '万科翡翠都会', '住宅', '多层,高层', 2, '西北路与岚岭路交叉口（体育中心南侧）', '20', '125600', '311150', '1300', 18000, '3599ae26679c12054dd5dab16f6844e4', '3室2厅2卫', 39.0203, 121.574, '在售', 'd7b5d200b9e8f1323920e534287d290a', 18000, 17609, 18000);
INSERT INTO `loupan` VALUES (452894, '万科中山五号', '商住', '高层', 0, '同兴街与上海路交汇处', '22', '2968', '36370', '250', 19000, '7ce001d90017573d39f928f55bc7a348', '商住', 38.9285, 121.65, '在售', '49983391ceb3991f6b91d21d7baf127d', 19000, 18831, 19070);
INSERT INTO `loupan` VALUES (453345, '保利熙悦', '住宅', '小高层,高层', 3, '长春路新风街北行200米', '30', '23000', '90000', '500', 21500, '5c000bc757a65afef30189c649fc52d7', '4室2厅2卫', 38.9077, 121.63, '在售', '67d17ff6388bbd1ea530beee12ae3f42', 21500, 21123, 21583);
INSERT INTO `loupan` VALUES (454202, '招商公园1872', '住宅', '小高层,高层', 2, '岚岭路与新山东路交汇处', '29', '174200', '591434', '1500', 16900, '607eaabeeb9a6da749fa60dd6882b880', '3室2厅2卫', 39.0217, 121.581, '在售', 'c6d843abf93d7556f6e404da10a254bb', 16900, 16829, 16981);
INSERT INTO `loupan` VALUES (455893, '中海牧雲山', '住宅', '多层,小高层', 2, '牧城驿湖北侧', '28', '81300', '150000', '838', 16000, '89d8fdfcd139303fd6b516802a19d03d', '3室2厅1卫', 38.9949, 121.444, '在售', 'daec7a51a8fd4f0dc56db56170f3c51a', 16000, 15979, 16022);
INSERT INTO `loupan` VALUES (456171, '三合庭苑', '住宅', '小高层,高层', 2, '艺山街', '19', '130000', '285292', '2000', 11000, '4a5b80b6d26afd21420986dc8654ecaa', '2室2厅1卫', 39.0493, 121.661, '售罄', 'ba939824165364b81bfd200ae9ad5cf0', 11000, 10538, 11083);
INSERT INTO `loupan` VALUES (456818, '洲际酒店·新星公馆', '商住', '高层', 0, '港隆路与港东一街交汇处', '28', '25000', '186000', '1500', 16500, '51c745339fe7e96b112993d94b2bed33', '商住', 38.958, 121.6, '在售', 'ecb789d736cf1b68312d3d8d471a025b', 16500, 16442, 16508);
INSERT INTO `loupan` VALUES (457153, '万达体育新城', '住宅', '多层,高层', 2, '体育中心北侧，岭西路与西北路交汇处', '26', '397400', '640000', '2433', 16000, 'd6015e869a8a0a2a21d74dbd750d22cf', '3室2厅2卫', 39.0319, 121.571, '在售', 'c0a686eedabef73aef25afe50bf0fac0', 16000, 15959, 16003);
INSERT INTO `loupan` VALUES (458293, '碧桂园·桃源', '住宅', '小高层,高层', 0, '解放路,近滨海路中段', '11', '13933', '39000', '283', 25500, '2f237c29b780ee95f506c9b603819102', '2室2厅1卫', 38.8827, 121.68, '售罄', 'eaec762c31fb7aced85ec4719c73883b', 25500, 25488, 25500);
INSERT INTO `loupan` VALUES (459483, '华润置地大连湾国际社区', '住宅', '多层,高层', 2, '振兴路与佳宝路交汇处（实德集团原址）', '14', '373000', '767000', '2300', 18000, '43bd7256e84bd34aa0ef703a9f69ba42', '3室2厅2卫', 39.0344, 121.699, '在售', '5c0ba32d9f599287af425f230689b936', 18000, 17594, 18055);
INSERT INTO `loupan` VALUES (459896, '林泉雅舍', '住宅', '多层', 0, '付家庄嘉汇阳光学校旁', '16', '23000', '43000', '120', 43000, '2729c769587bd6dd45f048d7f2116671', '4室2厅3卫', 38.8731, 121.636, '在售', '65271f00e00f8e59f76b9743f818d99d', 43000, 42519, 43084);
INSERT INTO `loupan` VALUES (461218, '明秀山景', '住宅', '高层', 0, '秀月街', '19', '4090', '13600', '98', 28000, '73e51e0ea2d10cef09948112bfff208a', '3室2厅2卫', 38.8843, 121.656, '售罄', 'd329ddad413d56949edb6f5bedc50cea', 28000, 27882, 28074);
INSERT INTO `loupan` VALUES (461331, '碧桂园东港国际', '商住', '小高层,高层', 0, '东港第二小学旁', '24', '88600', '425820', '178', 19500, '052e3fd7b353779dffbb03818f0d6799', '商住', 38.9261, 121.69, '在售', 'c66df06536349e3be7db2967df8ec915', 19500, 19185, 19583);
INSERT INTO `loupan` VALUES (462626, '大连融创壹号院', '住宅', '多层,高层', 3, '疏港路', '22', '147000', '673308', '1386', 27000, '90b1486762fefc5c9f26e8a8ea2fe838', '2室2厅1卫', 38.9378, 121.637, '在售', '16e321617b746777a309cfd467b356f0', 27000, 26540, 27054);
INSERT INTO `loupan` VALUES (462935, '万科金地和风明月', '住宅', '多层', 2, '钻石湾80中分校北行约500米', '13', '69000', '108630', '527', 26500, '126d94be0c680ab06aecb8e5cba2ec1b', '3室2厅2卫', 38.9667, 121.619, '在售', 'b26ce78f02c59a3d09053c795e9efa53', 26500, 26040, 26523);
INSERT INTO `loupan` VALUES (462998, '中海公园上城', '住宅', '多层,高层', 2, '西北路,近川岭路', '26', '172000', '342000', '1300', 18500, '4a1d1c8ee2afec68add39e5c4d92e25f', '3室2厅2卫', 39.0131, 121.58, '在售', 'c1c22de6f1dd8cd291cbce099c8b0cb3', 18500, 18369, 18543);
INSERT INTO `loupan` VALUES (463507, '中海海港城Ⅲ期天誉', '商住', '高层', 0, '港湾广场北侧', '21', '41360', '263800', '1376', 18500, 'bf10f03ff38c1f0bb35f65e95258a6ce', '商住', 38.9361, 121.66, '在售', '8b7a51da346a2b11934f3a78dce61691', 18500, 18444, 18551);
INSERT INTO `loupan` VALUES (463585, '新希望锦麟玖玺', '住宅', '多层', 2, '西南路,近海口路', '29', '76000', '162000', '247', 30000, '561e010c711215ff70e57d38fda8fdac', '2室2厅1卫', 38.9599, 121.601, '在售', 'd2e7fd675b0f49c19e750a2719a5aaf4', 30000, 29822, 30004);
INSERT INTO `loupan` VALUES (463748, '大连广泽中心', '商住', '小高层', 2, '华东路与中华西路交汇处', '22', '9400', '26038', '181', 13500, 'd391f426cfbd522c32fae3fad63fd9a9', '商住', 38.9956, 121.604, '售罄', 'd36963268fa9e38e62f033d8fe348800', 13500, 13014, 13591);
INSERT INTO `loupan` VALUES (464232, '大连恒大时代峯汇', '商住', '超高层', 0, '人民东路11A号', '24', '28600', '286000', '1645', 15500, '8d0edabbe96879c1d085724a0e15b4fd', '商住', 38.9333, 121.672, '在售', '7998099ea45df69a578e2287b78ce1db', 15500, 15383, 15570);
INSERT INTO `loupan` VALUES (465257, '金山映海', '住宅', '小高层', 2, '椒金山南东方路北', '26', '9200', '36400', '280', 20500, 'a816c55c9bbe5c58901fc81eb1cd4665', '2室2厅1卫', 38.9487, 121.593, '售罄', '6876a213d142c2a94441ae19097c75bd', 20500, 20479, 20558);
INSERT INTO `loupan` VALUES (465536, '恒大四季上东迦南公馆', '商住', '超高层', 0, '华乐广场东行900米', '14', '28395', '126695', '795', 19000, '9dca070fd2b0da0e2397fff19314b13d', '商住', 38.9487, 121.593, '售罄', 'e484f2025e18f4e3e7031c0740a2f772', 19000, 18806, 19062);
INSERT INTO `loupan` VALUES (465626, '鲤鱼门广场', '商住', '', 2, '泉水二期汇路东侧', '17', '21800', '46788', '328', 15000, '251a52c448d6b2508c1d9aee5a522e41', '商住', 39.0127, 121.639, '在售', '49fca2ec5ed575feb037a922487d05da', 15000, 14960, 15085);
INSERT INTO `loupan` VALUES (465640, '远洋保利悦和山海', '住宅', '高层,花园洋房', 2, '和丰路2-20号', '24', '85454', '153940', '141', 24000, 'da235b7c2e287ad28db0f1971a44f292', '3室2厅2卫', 38.9692, 121.612, '在售', 'cd28c6a92d10523d93bb0b396826bc5e', 24000, 23598, 24032);
INSERT INTO `loupan` VALUES (466718, '天下粮仓·璞樾里', '住宅', '高层', 2, '东港对岸，甘井子公园南侧', '30', '71800', '170000', '269', 21000, 'bcdbc1daa0d7bcf0a8e4aa91fa666816', '2室2厅1卫', 38.9771, 121.627, '在售', 'dd5e0b79dd4888a2c07834b1a6f721aa', 21000, 20987, 21044);
INSERT INTO `loupan` VALUES (466812, '远洋钻石湾时代海', '商住', '小高层,高层', 2, '梭鱼湾商务区（钻石港湾北岸）', '20', '31000', '100000', '263', 16000, '7ae7e61cebc86b55fed911e7347691a9', '商住', 38.96, 121.624, '在售', '0b04667d2da96ea4f5670e49ad3f1570', 16000, 15959, 16097);
INSERT INTO `loupan` VALUES (467288, '大华公园世家', '住宅', '多层,小高层,高层', 2, '妇女儿童医疗中心西行约700米', '15', '92500', '312500', '2444', 16700, '1d125b235d93e5205404d1c1463ab937', '3室2厅1卫', 39.0395, 121.566, '在售', '2c60c7274b3eff43d552507b5d245ab3', 16700, 16402, 16703);
INSERT INTO `loupan` VALUES (467456, '大连蘭园', '住宅', '多层', 1, '振工街6号', '23', '12000', '22000', '203', 33000, 'ea3329d773aff30266eec52419635910', '4室2厅2卫', 38.9283, 121.602, '在售', '281403cfced25bcb69ef2747fdca6863', 33000, 32520, 33016);
INSERT INTO `loupan` VALUES (468505, '绿城·大连诚园', '住宅', '多层,高层', 2, '体育中心南侧500米（近新山东路）', '20', '83000', '237000', '1744', 18500, 'd7fbe933833963dfd03c4137849da5e0', '3室2厅1卫', 39.0205, 121.573, '在售', '7a931ce26de138a1b3f417dca79d4e5c', 18500, 18215, 18567);
INSERT INTO `loupan` VALUES (469423, '中海·阅麓山', '住宅', '多层', 2, '甘井子区明珠公园南侧（虹雨路南，哲林街西）', '16', '48500', '84300', '455', 35000, 'c7a636a5561b34e95f9ad7364dee693a', '3室2厅2卫', 38.9513, 121.538, '在售', '8bfcb0ed474cf0f126a057719476dbf1', 35000, 34598, 35023);
INSERT INTO `loupan` VALUES (470584, '西府御棠', '住宅', '多层', 2, '柳树北街（第十四中学对面）', '25', '34000', '47000', '356', 17800, 'ea562a2c29e7af76d642092c0295c9b6', '4室2厅2卫', 38.94, 121.494, '在售', '04f24b842691155b42d65ac0e6a721bd', 17800, 17314, 17815);
INSERT INTO `loupan` VALUES (470787, '恒大中央广场', '商住', '高层', 1, '中山路与白山路交会处', '19', '9200', '79800', '800', 15000, '16782d34124b55e47be753a02f3bc77a', '商住', 38.9091, 121.603, '售罄', '4cdd8258a1394c89f4b2a756deb1be8d', 15000, 14839, 15091);
INSERT INTO `loupan` VALUES (471625, '保利西山林语', '住宅', '多层,高层', 2, '红旗中路与红南东街交会处', '19', '171843', '309317', '1828', 18000, '2ad8d27d9da52671cde2c48bfde242c1', '3室2厅2卫', 38.9314, 121.538, '售罄', '09cdb37d1b04fa4c655db04e2b27ce4d', 18000, 17593, 18096);
INSERT INTO `loupan` VALUES (472112, '保利和府', '住宅', '多层,小高层', 2, '土革路南、河周路东侧，夏家河子海滨浴场西行三公里处', '10', '138000', '243000', '863', 10300, 'a49beee46d26b3b6265f916b0ba237cb', '3室2厅1卫', 39.0181, 121.48, '在售', '459014ad9fc99d42cc2843af5ee47f03', 10300, 10028, 10374);
INSERT INTO `loupan` VALUES (473022, '南山家里', '住宅', '多层', 0, '中山区山岳北街11号', '22', '7620', '9525', '92', 39000, '8d5bd22aa4768e18e260faef536a9ea3', '2室2厅1卫', 38.9172, 121.671, '售罄', 'b08286cc0ea2a72ac935dbffb4e431d9', 39000, 38929, 39020);
INSERT INTO `loupan` VALUES (474256, '碧桂园·望海中心', '商住', '高层', 0, '东港商务区地铁2号线达沃斯会议中心站C口东侧', '17', '38300', '191500', '232', 18000, '08f60e331c060d63e00b8ce400661be7', '商住', 38.9312, 121.685, '在售', 'a620edf24dfc165731fa52265bd685d9', 18000, 17993, 18052);
INSERT INTO `loupan` VALUES (474294, '臻园二期', '住宅', '高层', 0, '港兴路131号', '29', '42200', '126600', '283', 29000, '10d1ee62686a36cfa101581ae3bd5365', '4室2厅2卫', 38.922, 121.718, '在售', '60f582c1016c7a17b88f33ffae8b5543', 29000, 28949, 29003);
INSERT INTO `loupan` VALUES (474608, '天泉小镇欢乐颂', '商住', '小高层', 2, '泡崖天泉小镇', '27', '168600', '422711', '149', 19000, 'c285de126257ef541521aff319c23561', '商住', 38.9775, 121.551, '售罄', '1041d291d537024b17d6207afe322021', 19000, 18562, 19033);
INSERT INTO `loupan` VALUES (479629, '胜鼎景山', '住宅', '高层', 0, '中山区景山街', '17', '23000', '110000', '660', 19000, 'f4a576890a8b7854e983ee2eef58db1b', '3室2厅2卫', 38.8938, 121.667, '售罄', '743a629c050aad5dbf67d87b7a2fdd37', 19000, 18892, 19018);
INSERT INTO `loupan` VALUES (479637, '胜鼎桃源', '住宅', '高层', 0, '中山区不朽巷8号', '20', '39000', '154000', '700', 23000, '25f9322f821fce9bb7c8854c7e5a2148', '1室2厅1卫', 38.8954, 121.659, '售罄', '8d2035e83b0d5b41b4d3096433d6b2af', 23000, 22666, 23055);
INSERT INTO `loupan` VALUES (480896, '金地·保利·招商星光照澜', '住宅', '多层,小高层,高层', 2, '和丰路东，东方路南（80中钻石湾校区北约700米）', '25', '96600', '172400', '1200', 24600, '25d16fb47596fc95ef4b6b23376b7475', '2室2厅1卫', 38.9688, 121.616, '在售', '9158bee16041669de196c194dec1212d', 24600, 24585, 24641);
INSERT INTO `loupan` VALUES (481297, '金地湾和府', '住宅', '高层,花园洋房', 2, '大连市甘井子区大连湾街道九三科技小学南侧200米', '14', '32700', '82400', '289', 19000, 'c4e87d910f9ac255808b4de6c383a546', '3室2厅2卫', 39.0271, 121.726, '待售', '4adc832b8860af4bae1d0da0560c24e1', 19000, 18972, 19015);
INSERT INTO `loupan` VALUES (481414, '富春山居', '住宅', '多层,小高层,高层', 2, '金柳路一街23号', '24', '16100', '56046', '140', 15200, 'ca1d2ee039615d3f472d2dda4abbf916', '2室2厅1卫', 38.9129, 121.522, '在售', '4b01ba64959baf1874ef8fedc8b75984', 15200, 14808, 15217);
INSERT INTO `loupan` VALUES (481537, '中海东港', '住宅', '多层,小高层', 0, '港东二街与港盛路交汇处（东港二小南侧）', '22', '26000', '65560', '579', 50000, '0f64ea67d8c18557eb1f0238c0fb897e', '3室2厅2卫', 38.9249, 121.691, '在售', '10ab8d227a60e63279a459945a94c7ba', 50000, 49990, 50086);
INSERT INTO `loupan` VALUES (485626, '中央大道博瑞公寓', '商住', '高层', 1, '西安路与兴工南五街交汇处', '24', '39200', '36547', '1000', 19000, '49dac8fd00a0bd47bb1eec757620b2d1', '商住', 38.9232, 121.591, '待售', '49dac8fd00a0bd47bb1eec757620b2d1', 19000, 18567, 19072);
INSERT INTO `loupan` VALUES (486088, '中海云麓公馆', '住宅', '多层,小高层,高层', 1, '五一路与西南路交汇处西行500米', '25', '68486', '119585', '755', 29000, '9865a89581728729d50420a48b3643d7', '3室2厅2卫', 38.9009, 121.562, '在售', '863b0336b98fc655dd34a2fda423df96', 29000, 28600, 29092);
INSERT INTO `loupan` VALUES (486720, '保利罗兰|A+', '商住', '多层', 2, '欣博街701路终点站（诺维溪谷站）', '29', '12200', '40626', '290', 19000, '21371fe28d666c61ffebabf99f7de08c', '商住', 38.9963, 121.478, '待售', 'fcd79d4ffe2c26addfab081985d5f46f', 19000, 18745, 19099);

-- ----------------------------
-- Table structure for loupan_house_type
-- ----------------------------
DROP TABLE IF EXISTS `loupan_house_type`;
CREATE TABLE `loupan_house_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `loupan_id` int(0) NULL DEFAULT NULL,
  `housetype_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chaoxiang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `house_area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `default_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '全明格局，户型方正，南北通透',
  `louceng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhuangxiu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `loupan_id_F`(`loupan_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 276 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房屋户型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of loupan_house_type
-- ----------------------------
INSERT INTO `loupan_house_type` VALUES (2, 243435, '2室2厅1卫', '南', '113', 'b317ae2e9e9b779f5a74fd150d325c27', '全明格局，户型方正，南北通透', '小高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (3, 243437, '2室1厅1卫', '北', '95', '25f8f0192c676107ff3b976369c2ad06', '全明格局，户型方正，南北通透', '高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (4, 243441, '3室2厅1卫', '东', '120', 'd2f076626d09bb363075c73a9e36a0aa', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (5, 243442, '0室0厅0卫', '东', '81', 'f373dfe1f16384ec7ca17071c8a18ab0', '全明格局，户型方正，南北通透', '高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (6, 243444, '0室0厅0卫', '西', '74', 'f91f5f5a0d4adc026921bbce2cb2bcb3', '全明格局，户型方正，南北通透', '小高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (7, 243446, '4室2厅3卫', '南', '73', '1767af4532ca6fd00f1ca0dfdf60aade', '全明格局，户型方正，南北通透', '低层', '精装修');
INSERT INTO `loupan_house_type` VALUES (8, 243447, '1室1厅1卫', '北', '107', 'b508b0a85f45f6be5cba60780fa4a186', '全明格局，户型方正，南北通透', '小高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (9, 243448, '2室2厅1卫', '东', '72', 'de2b03ddcb019757dfea183d4f1d6621', '全明格局，户型方正，南北通透', '高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (10, 243453, '2室2厅1卫', '南', '124', 'd900099b9953743c6c52519d99592cf7', '全明格局，户型方正，南北通透', '超高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (11, 243460, '商住', '东', '93', '5ae2af5240af51f99ea8788b6ab16a70', '全明格局，户型方正，南北通透', '小高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (12, 243466, '3室2厅1卫', '西', '126', 'cabd0e3063e083e1a0f8be6d1016e30a', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (13, 243473, '2室1厅1卫', '西', '120', '2e5af0e664eae749a8787a68239696c8', '全明格局，户型方正，南北通透', '小高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (14, 243487, '2室3厅1卫', '东', '108', 'e36476ee3d1ccf03b7d2af0be8849c7e', '全明格局，户型方正，南北通透', '低层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (15, 243488, '4室2厅2卫', '东', '102', '88959ee7ec32d54c2fb7f035092ccb22', '全明格局，户型方正，南北通透', '高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (16, 243493, '1室1厅1卫', '东', '88', '803fc271af00f29f02e4260745e807b6', '全明格局，户型方正，南北通透', '小高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (17, 243497, '1室1厅1卫', '西', '76', '7a5d6059f93a56fa2edd8ffe1ae35a5d', '全明格局，户型方正，南北通透', '超高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (18, 243500, '4室3厅2卫', '北', '84', '077acccb7d4bab87179474ec71d66253', '全明格局，户型方正，南北通透', '小高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (19, 243502, '1室1厅1卫', '西', '117', '2ef6e878825f866b71f307e09a642e09', '全明格局，户型方正，南北通透', '超高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (20, 243512, '商住', '南', '107', '3ed422b7ac3f2ff9362dd7bb1d8f561c', '全明格局，户型方正，南北通透', '超高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (21, 243516, '5室2厅2卫', '南', '115', 'f0cd92e0ec95e0e5539901cde9f688e8', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (22, 243519, '3室2厅2卫', '东', '86', '52a476b1da77ce6a33885b16603e5879', '全明格局，户型方正，南北通透', '低层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (23, 243521, '2室2厅1卫', '北', '75', 'eb3e1ef8592a05f4c8999c9b4bebdf89', '全明格局，户型方正，南北通透', '低层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (24, 243526, '1室2厅1卫', '南', '85', '32c9c6924d5aebb801177246d2988db1', '全明格局，户型方正，南北通透', '多层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (25, 243528, '2室2厅1卫', '东', '100', '218df24203e165dd6cc0935f0fdbc27c', '全明格局，户型方正，南北通透', '超高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (26, 243529, '4室2厅2卫', '西', '91', 'cf2de24d6f719d230da98c3b5931d3e1', '全明格局，户型方正，南北通透', '高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (27, 243531, '1室2厅1卫', '西', '108', 'fefdef6f1b82bc9a1218f5d404e62c00', '全明格局，户型方正，南北通透', '多层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (28, 243533, '2室1厅1卫', '南', '107', 'baaf933e906d4c2463f22e3b81e9f9ed', '全明格局，户型方正，南北通透', '多层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (29, 243534, '1室1厅1卫', '南', '90', 'f31e7a243066ea7a0e39d7380597b4c7', '全明格局，户型方正，南北通透', '超高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (30, 243535, '3室2厅2卫', '东', '106', 'a074e479f9115a3ee0d35bd60a01e654', '全明格局，户型方正，南北通透', '超高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (31, 243536, '3室2厅2卫', '南', '85', '82d1c5acbfeacad9c8b67bfce37f68ab', '全明格局，户型方正，南北通透', '高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (32, 243537, '2室2厅1卫', '西', '103', 'f02bffcf3240c220d4a2710dc201fe41', '全明格局，户型方正，南北通透', '多层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (33, 243539, '4室2厅1卫', '北', '81', 'b4c2c44614305db9c95092a227302a0d', '全明格局，户型方正，南北通透', '低层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (34, 243551, '2室2厅1卫', '西', '97', '1b0bf620aa540cac95e383e1b12161bf', '全明格局，户型方正，南北通透', '低层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (35, 243558, '3室2厅2卫', '北', '129', '786d2c584dec85de9c95be00285553f1', '全明格局，户型方正，南北通透', '小高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (36, 243560, '3室2厅4卫', '北', '110', '02fc351ef5e89e688fc05b54ffa6d567', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (37, 243567, '2室1厅1卫', '东', '114', 'f1aa81fec8571ec477d2cf0f55b2f598', '全明格局，户型方正，南北通透', '多层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (38, 243572, '独栋别墅', '东', '95', 'ab1ed4ef084f6cecabbc036222715bc5', '全明格局，户型方正，南北通透', '小高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (39, 243576, '商住', '东', '90', 'ef36d405e42c223afcd498973d713b22', '全明格局，户型方正，南北通透', '小高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (40, 243580, '2室1厅1卫', '南', '77', 'e66c3a3a24ab8adfe33eb8a10a9e82b1', '全明格局，户型方正，南北通透', '低层', '精装修');
INSERT INTO `loupan_house_type` VALUES (41, 243583, '1室2厅1卫', '西', '101', '32f39804328bee5bd7e3639d59860b0b', '全明格局，户型方正，南北通透', '低层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (42, 243584, '商住', '东', '125', '899c5ae2ffb7b80c04c17d552cd345fa', '全明格局，户型方正，南北通透', '低层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (43, 243587, '3室2厅2卫', '南', '121', 'ddfa9b6e152bae4c5f6bf58504d31b9f', '全明格局，户型方正，南北通透', '低层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (44, 243588, '2室2厅1卫', '东', '124', 'f51a9e4b37dcbdb6cf780ab4b1011a3c', '全明格局，户型方正，南北通透', '高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (45, 243595, '1室0厅1卫', '东', '76', 'a62e8ee5beb2740e95d39f3ce48474b6', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (46, 243599, '4室2厅1卫', '南', '85', '8b420fad9431f97f4ed911c79d564605', '全明格局，户型方正，南北通透', '多层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (47, 243600, '商住', '东', '118', '7d48c82e21b8bbe6f349585812f315ab', '全明格局，户型方正，南北通透', '超高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (48, 243608, '1室1厅1卫', '西', '101', '0513eaab188507412fc9ea829aca2824', '全明格局，户型方正，南北通透', '低层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (49, 243611, '9室4厅7卫', '北', '94', '62146cbc455270a210828edff383bcf2', '全明格局，户型方正，南北通透', '多层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (50, 243612, '2室2厅1卫', '南', '124', 'c847d6b412dc475e42d9fdaa777af209', '全明格局，户型方正，南北通透', '高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (51, 243614, '1室1厅1卫', '东', '112', '8ce30d5965fb935b20d5d70d093acf06', '全明格局，户型方正，南北通透', '高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (52, 243615, '1室1厅1卫', '南', '85', 'e50f5158b9c699ad60141a971d87bd60', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (53, 243622, '4室2厅2卫', '南', '71', '071c79520d9fffcfe8d743ab614a98a7', '全明格局，户型方正，南北通透', '多层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (54, 243632, '3室2厅2卫', '北', '121', '8b778f7371b03ecda5871a13ad1e714f', '全明格局，户型方正，南北通透', '超高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (55, 243638, '2室2厅1卫', '北', '83', 'd05fa289ed435fdf925a39e614b8753b', '全明格局，户型方正，南北通透', '高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (56, 243639, '3室2厅1卫', '东', '84', 'fbd54c714d7cab3ed150f06215b9468d', '全明格局，户型方正，南北通透', '超高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (57, 243644, '3室2厅2卫', '南', '98', '926cb9ed6049bc1db17b0f8270b20548', '全明格局，户型方正，南北通透', '高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (58, 243647, '3室2厅2卫', '东', '90', '17a742b51b08af93aa6def69c8662ad0', '全明格局，户型方正，南北通透', '超高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (59, 243650, '3室3厅2卫', '北', '88', 'e77b94f032fc24cb7d9bf32603ec8016', '全明格局，户型方正，南北通透', '低层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (60, 243665, '4室2厅3卫', '南', '116', '1e94e851ba939daa89cfa86d5b17e98c', '全明格局，户型方正，南北通透', '高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (61, 243677, '商住', '南', '130', '0c1653efd20d52cb5f2ad3aafff67245', '全明格局，户型方正，南北通透', '多层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (62, 243679, '商住', '东', '97', '188ded6f0bdad1f9be554a178079735a', '全明格局，户型方正，南北通透', '小高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (63, 243680, '3室2厅1卫', '西', '97', 'fdeca6f5f5c54d7101ba51a00697fbf0', '全明格局，户型方正，南北通透', '高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (64, 243681, '1室1厅1卫', '北', '75', '1e425ffb9946f3f0832a36d8614442b3', '全明格局，户型方正，南北通透', '低层', '精装修');
INSERT INTO `loupan_house_type` VALUES (65, 243686, '3室2厅1卫', '西', '77', '2f2348980911098af1d945eba80b7799', '全明格局，户型方正，南北通透', '超高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (66, 243690, '1室1厅1卫', '北', '121', '1313c490a84b601acc34458f6c1cc813', '全明格局，户型方正，南北通透', '小高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (67, 243691, '3室2厅1卫', '东', '125', '0a15bdd1cba33449a42580cbe6683908', '全明格局，户型方正，南北通透', '小高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (68, 243699, '2室2厅1卫', '北', '77', '1ed6267f20a9b71cbdd6652b39e21dff', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (69, 243700, '3室2厅2卫', '北', '110', 'c510f91cbbf5a83cd8adaeb4fc7a2c45', '全明格局，户型方正，南北通透', '超高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (70, 243701, '1室1厅1卫', '东', '117', 'fec3eef0dcd5fb72d0f8c8d919dc3d40', '全明格局，户型方正，南北通透', '低层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (71, 243702, '3室2厅2卫', '东', '100', '81e66fe8d4556ca4341da86ec73515f0', '全明格局，户型方正，南北通透', '超高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (72, 243705, '2室2厅1卫', '西', '87', 'cd0c30d75d8761899de7749862170699', '全明格局，户型方正，南北通透', '超高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (73, 243706, '2室2厅1卫', '南', '122', 'fab1c8ee46cb5de6a6cc3ba27fc1fc17', '全明格局，户型方正，南北通透', '超高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (74, 243707, '2室1厅1卫', '东', '106', '4ca7bcbc208d3bfa69f7d42cbdce8709', '全明格局，户型方正，南北通透', '小高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (75, 243710, '4室2厅2卫', '北', '124', '6ceec72142b09426fb8149c03b12d392', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (76, 243715, '3室2厅2卫', '南', '114', '82ae873e6d82ba90e189c7e1407c169b', '全明格局，户型方正，南北通透', '小高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (77, 243722, '2室2厅1卫', '北', '84', '71504342d7172f76f66fd78f708a45a8', '全明格局，户型方正，南北通透', '低层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (78, 243736, '3室2厅2卫', '东', '128', 'a807af7c998cb382e3f7123d59f1b3e8', '全明格局，户型方正，南北通透', '高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (79, 243739, '3室2厅1卫', '西', '122', 'de26963f4f7affcf3f0fd92df8c887ba', '全明格局，户型方正，南北通透', '超高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (80, 243740, '8室2厅4卫', '南', '72', 'bef3dd6174409b86d34fece1e45d5fab', '全明格局，户型方正，南北通透', '多层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (81, 243741, '2室2厅1卫', '东', '126', 'c630f255c6e7f1965f9494d16815ed6d', '全明格局，户型方正，南北通透', '低层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (82, 243742, '4室2厅3卫', '东', '124', '006f1920724b9f8ca96f8356000ec3c9', '全明格局，户型方正，南北通透', '高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (83, 243743, '1室2厅1卫', '北', '103', '1f6b9565feed5daebbf9173f71bcbd8d', '全明格局，户型方正，南北通透', '高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (84, 243744, '商住', '东', '74', '77f5d223a5a5d4b88bd8932ddd1dfd0e', '全明格局，户型方正，南北通透', '超高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (85, 243748, '1室1厅1卫', '南', '77', 'e220b1596414cf0e4abf57c8af6de07d', '全明格局，户型方正，南北通透', '高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (86, 243750, '1室1厅1卫', '北', '119', '40ddd51241aff7d0071656eb7dfcaa3c', '全明格局，户型方正，南北通透', '低层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (87, 243751, '2室2厅1卫', '南', '71', '5fb3f5945d59969e31e55c94fc36f87a', '全明格局，户型方正，南北通透', '小高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (88, 244653, '3室2厅2卫', '北', '86', '00fc4c1f13416765386e0e97cca0c8b8', '全明格局，户型方正，南北通透', '超高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (89, 244664, '2室2厅1卫', '南', '84', '95fc304284b280bfc33b703d96710af0', '全明格局，户型方正，南北通透', '超高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (90, 244665, '3室2厅1卫', '东', '108', '206c21379f3be11b791217be1ca35619', '全明格局，户型方正，南北通透', '低层', '精装修');
INSERT INTO `loupan_house_type` VALUES (91, 244666, '商住', '东', '82', '42912153523875e8e65081bc1176a17a', '全明格局，户型方正，南北通透', '多层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (92, 245479, '1室1厅1卫', '北', '109', 'fec2b50683501bec6de70485e677c5f5', '全明格局，户型方正，南北通透', '小高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (93, 245562, '2室2厅1卫', '西', '129', 'c4cc792e15fcf4aadb9631b6f040fd9f', '全明格局，户型方正，南北通透', '高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (94, 245582, '3室2厅2卫', '北', '96', '3c9113bf3deb117679b14b1ff853fa5d', '全明格局，户型方正，南北通透', '多层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (95, 246281, '3室2厅2卫', '西', '116', '2d95bc90e6821fead508f5866d8a4724', '全明格局，户型方正，南北通透', '低层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (96, 246358, '1室2厅1卫', '东', '102', '85629678b33b20bef36c38fed25cbd23', '全明格局，户型方正，南北通透', '小高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (97, 246457, '1室1厅1卫', '南', '125', 'e770cfb491070d82c82feed44944eee6', '全明格局，户型方正，南北通透', '低层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (98, 246463, '商住', '南', '78', 'd1bdf550bebeba60c8884afab34b7c4e', '全明格局，户型方正，南北通透', '超高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (99, 246569, '3室3厅5卫', '东', '109', '886b646ac4e79b9c350bb7e31893db41', '全明格局，户型方正，南北通透', '超高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (100, 246782, '2室2厅1卫', '北', '112', '8c548602b5f6e4b5c4d58d3ecf60ae97', '全明格局，户型方正，南北通透', '高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (101, 246783, '3室2厅2卫', '东', '109', '1ea509691fa3d8580132288c5cdcb381', '全明格局，户型方正，南北通透', '高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (102, 246788, '0室0厅0卫', '南', '87', '57c78e51fe0167d21e7677ad56b9cd23', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (103, 247762, '2室1厅1卫', '西', '75', '9655a03f3c2103bcecd7a280738c353a', '全明格局，户型方正，南北通透', '高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (104, 247858, '1室1厅1卫', '西', '80', 'dfba1c5c278ff731bc052528411950d3', '全明格局，户型方正，南北通透', '小高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (105, 248142, '商住', '东', '83', '8b93af8d703b97319354cf6ebc6cc7c1', '全明格局，户型方正，南北通透', '小高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (106, 248210, '5室2厅3卫', '西', '90', '3fdc2cf55c902ab5c80bb40cdf5e5202', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (107, 248217, '2室2厅1卫', '西', '120', '84f33baba478607d3c8ebc78c51c3709', '全明格局，户型方正，南北通透', '高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (108, 248218, '1室1厅1卫', '南', '74', 'dd106f081493d153ed59b2b4b24f5c21', '全明格局，户型方正，南北通透', '小高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (109, 248239, '4室2厅2卫', '东', '113', '4d01de9fec3de7af8a24275b324de8f0', '全明格局，户型方正，南北通透', '低层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (110, 248386, '2室2厅2卫', '北', '74', '60602697eb9326665a9ef9b337a0c777', '全明格局，户型方正，南北通透', '超高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (111, 248529, '4室2厅3卫', '西', '126', 'd95a0c172b7bcd38d1a89cbc203cabf6', '全明格局，户型方正，南北通透', '低层', '精装修');
INSERT INTO `loupan_house_type` VALUES (112, 248671, '1室1厅1卫', '西', '82', 'ac276daf6e2c6b566a6b24cc881bc8a9', '全明格局，户型方正，南北通透', '低层', '精装修');
INSERT INTO `loupan_house_type` VALUES (113, 249034, '3室2厅1卫', '南', '95', '0521a10c9cf5bba4c6f1de34b2791852', '全明格局，户型方正，南北通透', '高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (114, 249035, '2室2厅1卫', '北', '91', 'c447adac88190beb147df4cebb5379d6', '全明格局，户型方正，南北通透', '低层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (115, 249250, '3室2厅1卫', '南', '97', 'b84d95ef33b78a3d6d1bcb1f4781624d', '全明格局，户型方正，南北通透', '高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (116, 249400, '2室2厅1卫', '南', '81', '04f6537f4453c7a62ecd21d9d26f8611', '全明格局，户型方正，南北通透', '小高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (117, 249530, '商住', '南', '130', 'f1b383e6b79519e3cf951246034446af', '全明格局，户型方正，南北通透', '低层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (118, 249602, '商住', '西', '97', '4328f86f7fbd3fdeec52f03b2f8fbe5e', '全明格局，户型方正，南北通透', '低层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (119, 249807, '5室3厅5卫', '西', '70', 'e77dd5775adbcb6e4e22f923180d325d', '全明格局，户型方正，南北通透', '高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (120, 249813, '3室2厅1卫', '南', '129', 'e69f95b83a88810d3c86c473c7226c84', '全明格局，户型方正，南北通透', '多层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (121, 249845, '4室2厅4卫', '东', '116', '4c79dd67712e32cdafcfbc22e538b9a7', '全明格局，户型方正，南北通透', '低层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (122, 249846, '2室2厅1卫', '东', '79', 'ba8cd234e87172be53e32d7be973fe78', '全明格局，户型方正，南北通透', '小高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (123, 249852, '4室2厅2卫', '西', '100', '173a8a23577c498a2896222b7fa68873', '全明格局，户型方正，南北通透', '超高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (124, 249855, '4室2厅3卫', '南', '110', '335e9f662abc534a9278fd32934c3882', '全明格局，户型方正，南北通透', '超高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (125, 249856, '商住', '北', '74', '2b6ba36bb96e83a9a87bebb4a51a298b', '全明格局，户型方正，南北通透', '小高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (126, 249861, '2室2厅1卫', '北', '104', '6a616d51a69c56d22a90fdec2f4929a5', '全明格局，户型方正，南北通透', '高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (127, 249863, '3室2厅1卫', '东', '72', '2394911c2a4810813ad213e63df63c49', '全明格局，户型方正，南北通透', '低层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (128, 249868, '2室2厅1卫', '南', '97', 'b8bd9cd24713b05c38c90de005682808', '全明格局，户型方正，南北通透', '多层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (129, 249869, '1室1厅1卫', '东', '94', 'cb5aacc57698499c8754209223fa761a', '全明格局，户型方正，南北通透', '高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (130, 249959, '3室2厅1卫', '北', '88', 'f3358fcee51f507a1e56405eec810eee', '全明格局，户型方正，南北通透', '小高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (131, 250006, '4室2厅2卫', '北', '79', '42039af0f9ac5bd5e091253ed88453c6', '全明格局，户型方正，南北通透', '低层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (132, 250007, '3室2厅2卫', '西', '123', '0b52af9bf62fbb364b6f05f7239a9a1e', '全明格局，户型方正，南北通透', '超高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (133, 250334, '4室2厅2卫', '东', '88', 'f48d6d776b8875e26a22716d4c245987', '全明格局，户型方正，南北通透', '高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (134, 250360, '3室2厅2卫', '南', '77', 'ad15b773b9ba3d951514cb51f7c8a509', '全明格局，户型方正，南北通透', '超高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (135, 250382, '3室2厅3卫', '东', '87', '566919baf70f39daa000db51fe70c81d', '全明格局，户型方正，南北通透', '小高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (136, 250384, '商住', '南', '73', '41f06155830d97b21d8917835446bcd6', '全明格局，户型方正，南北通透', '小高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (137, 250386, '2室2厅1卫', '西', '115', '3dfc68ce3a1510911ebca294f3a8d099', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (138, 250389, '3室2厅1卫', '北', '127', 'bafb79f9b157e28e3056d98efb058da1', '全明格局，户型方正，南北通透', '高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (139, 250481, '商住', '西', '115', '1f56020e7e669446d0947606b87eb98f', '全明格局，户型方正，南北通透', '高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (140, 250892, '4室2厅2卫', '东', '73', '988100e234c17bb7c56cc11aa633ed55', '全明格局，户型方正，南北通透', '超高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (141, 250896, '2室2厅1卫', '西', '72', '024ebdb29cbd0a00da9d97a553520b86', '全明格局，户型方正，南北通透', '高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (142, 250901, '3室2厅2卫', '南', '117', 'dfb129adc948a713c28143ac0fbc712c', '全明格局，户型方正，南北通透', '高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (143, 250907, '3室2厅2卫', '北', '74', 'ab9a105801a2e2dc3334f574f1f15f2b', '全明格局，户型方正，南北通透', '低层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (144, 250911, '4室2厅2卫', '东', '122', '33feefa75d4ba60ca3fdaa842860994d', '全明格局，户型方正，南北通透', '小高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (145, 250916, '3室2厅1卫', '东', '130', 'dddf6e334b884a5a8d997f87a8b5e84d', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (146, 250974, '1室1厅1卫', '东', '92', '2ca48b272b93522c539d19a83037ffac', '全明格局，户型方正，南北通透', '高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (147, 251341, '2室2厅1卫', '北', '112', 'ee264261ca9dfc8a38a257e55b89480a', '全明格局，户型方正，南北通透', '小高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (148, 251343, '4室2厅2卫', '南', '80', 'c666beec1370592d66deabd9dc9fc1eb', '全明格局，户型方正，南北通透', '超高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (149, 251549, '4室3厅4卫', '南', '84', 'b062170e8f8764634cf010a187d89437', '全明格局，户型方正，南北通透', '高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (150, 251620, '6室3厅3卫', '西', '89', '4f9eac006efe854d37f4c34b56ecf78c', '全明格局，户型方正，南北通透', '低层', '精装修');
INSERT INTO `loupan_house_type` VALUES (151, 251726, '1室1厅1卫', '西', '126', '0ab34efcc944d765de068d089384e019', '全明格局，户型方正，南北通透', '小高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (152, 251812, '2室2厅1卫', '东', '102', 'c61f9e640a04c8ba2428cd987cbd654a', '全明格局，户型方正，南北通透', '低层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (153, 251925, '1室2厅1卫', '南', '121', '65c63ec096f45d883783c1d23caf1494', '全明格局，户型方正，南北通透', '高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (154, 251926, '3室2厅1卫', '南', '86', 'd39380d164f77c405e337337fe29d88c', '全明格局，户型方正，南北通透', '小高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (155, 251956, '3室2厅2卫', '北', '76', 'cc7414c16c224472edca46c62aff66a6', '全明格局，户型方正，南北通透', '多层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (156, 252122, '商住', '东', '86', 'd563767ffc6db65a5307a86879da9ad5', '全明格局，户型方正，南北通透', '高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (157, 252138, '商住', '北', '117', 'a542f31af0986c870ccf1a0f865ebf71', '全明格局，户型方正，南北通透', '超高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (158, 252514, '2室2厅1卫', '南', '98', 'f7a9734c61034bc7a290444a1d21cfb5', '全明格局，户型方正，南北通透', '超高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (159, 252556, '3室2厅2卫', '南', '125', '71e2deb42964965017149154c43876d1', '全明格局，户型方正，南北通透', '小高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (160, 252583, '商住', '东', '127', 'bfd8b7269ab55e1d549c3174248a30d6', '全明格局，户型方正，南北通透', '小高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (161, 252604, '1室1厅1卫', '北', '112', 'ebcb16fe3b259cfc66c099fcb49422d2', '全明格局，户型方正，南北通透', '小高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (162, 252660, '4室2厅2卫', '东', '94', 'c36d60eeb271754acba1cc730101b304', '全明格局，户型方正，南北通透', '超高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (163, 252694, '2室2厅1卫', '西', '86', 'e63b0bb836441926f4a1c7a0ba22dc34', '全明格局，户型方正，南北通透', '超高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (164, 252826, '商住', '西', '124', 'dfb941c0fef419aa6b83fc6a8e0c6da3', '全明格局，户型方正，南北通透', '低层', '精装修');
INSERT INTO `loupan_house_type` VALUES (165, 252903, '4室2厅1卫', '东', '92', '169241a866be32a22e1d7f62a6eba8ea', '全明格局，户型方正，南北通透', '超高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (166, 252999, '商住', '南', '98', '9e3fbdd97cc0def460ebbeda5e467f5c', '全明格局，户型方正，南北通透', '低层', '精装修');
INSERT INTO `loupan_house_type` VALUES (167, 253015, '商住', '南', '70', '643922116950ac3ca919b46cc22334a1', '全明格局，户型方正，南北通透', '高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (168, 263923, '商住', '南', '118', '4534efd3b4428d4cc50ca865297abce8', '全明格局，户型方正，南北通透', '低层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (169, 297410, '3室2厅2卫', '北', '80', '47cc352957e9ac1294d69604ef52f686', '全明格局，户型方正，南北通透', '高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (170, 297432, '3室2厅2卫', '东', '104', '76d1a9ddddebfee900a5e679526c5d60', '全明格局，户型方正，南北通透', '低层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (171, 297593, '商住', '南', '107', '629da99d4c0468c6c93ca2cb931951e0', '全明格局，户型方正，南北通透', '高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (172, 297856, '2室2厅1卫', '北', '115', '9a9022e5b048b7f266d5e62bd67a8bc8', '全明格局，户型方正，南北通透', '低层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (173, 383872, '4室2厅3卫', '北', '72', 'f570ab3ba46176f082fbd1a1a2ece888', '全明格局，户型方正，南北通透', '超高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (174, 389750, '6室3厅3卫', '西', '87', '725e002691ece59866fbf514ee87070a', '全明格局，户型方正，南北通透', '多层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (175, 400495, '3室2厅1卫', '北', '92', '8f9b3e7f8e40223540c182e4c8db433d', '全明格局，户型方正，南北通透', '超高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (176, 400554, '3室2厅1卫', '南', '71', '68ee295ca9bf658b9acdb324da79174d', '全明格局，户型方正，南北通透', '小高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (177, 400626, '3室2厅2卫', '东', '126', '0ee959e87241d385c305f21c8183c295', '全明格局，户型方正，南北通透', '高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (178, 400661, '3室2厅2卫', '西', '94', '0972a9b36e66c7ec8d8ac8fba0bfd7c1', '全明格局，户型方正，南北通透', '低层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (179, 400952, '4室2厅3卫', '南', '94', 'f728f0c70de872ccc37282b50b6e07a5', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (180, 401208, '商住', '北', '75', '74afdc8867f12837455283db84e56e14', '全明格局，户型方正，南北通透', '高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (181, 406065, '4室2厅2卫', '东', '95', '4b45ee1f86a96b47e82151d151446471', '全明格局，户型方正，南北通透', '高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (182, 409327, '3室2厅2卫', '南', '121', '8814ab0c8680ad3d7a23b735694ac36a', '全明格局，户型方正，南北通透', '低层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (183, 411698, '3室2厅1卫', '北', '90', 'cf13a4ce54a88b596797b0bcd4a6d23d', '全明格局，户型方正，南北通透', '低层', '精装修');
INSERT INTO `loupan_house_type` VALUES (184, 412445, '3室2厅2卫', '东', '101', 'd49545def8feb7cfd387c385e1f6bc95', '全明格局，户型方正，南北通透', '小高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (185, 413864, '2室2厅1卫', '西', '125', '62529dc689a1e18cebd2ad5e94dd130e', '全明格局，户型方正，南北通透', '低层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (186, 413970, '3室2厅1卫', '北', '104', 'd1551cb6fb41e49de63333255c8605ca', '全明格局，户型方正，南北通透', '小高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (187, 414242, '商住', '南', '77', '7887e9dd47a40f7e9d28a2b27e6680d8', '全明格局，户型方正，南北通透', '高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (188, 414370, '商住', '北', '97', '05e6a2d77985784a9cad55c04b04f753', '全明格局，户型方正，南北通透', '超高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (189, 414468, '商住', '南', '94', '0f5d0e682b6cf6a43137b57e35eae0fc', '全明格局，户型方正，南北通透', '小高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (190, 414649, '商住', '北', '122', '19f2b691e3ad9080d86f1051628c7623', '全明格局，户型方正，南北通透', '超高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (191, 416003, '3室2厅2卫', '西', '83', 'f0dffbbdc48520169f6534a08108e3d6', '全明格局，户型方正，南北通透', '小高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (192, 416071, '商住', '南', '91', 'fd092406ed17c7ca47620e5f59a5ad54', '全明格局，户型方正，南北通透', '高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (193, 416905, '5室2厅4卫', '东', '103', '5c7dd1febdf1b9b093789d0149268a4e', '全明格局，户型方正，南北通透', '高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (194, 416938, '商住', '北', '104', '8760e862fb19e3d06670396cb1df0044', '全明格局，户型方正，南北通透', '多层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (195, 417084, '3室2厅1卫', '南', '72', '62db2aac8a576ebd10541f38edeb352d', '全明格局，户型方正，南北通透', '低层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (196, 417373, '2室2厅1卫', '西', '95', 'b7621eabfc8d1972e85c9ab1cbc527df', '全明格局，户型方正，南北通透', '多层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (197, 417491, '商住', '西', '77', '0bccca9c46ee6e99e433cbd2f565299a', '全明格局，户型方正，南北通透', '多层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (198, 417503, '4室2厅2卫', '东', '92', 'daf0338dd130cac16f7245c81e3223f0', '全明格局，户型方正，南北通透', '小高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (199, 417521, '4室2厅2卫', '北', '119', '996f6e6f04e6b66efd53c5f2807b8dd5', '全明格局，户型方正，南北通透', '小高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (200, 417779, '3室2厅1卫', '南', '102', 'd9aeb655e2c1e765c8ad86db012096f6', '全明格局，户型方正，南北通透', '高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (201, 417788, '商住', '东', '100', '60e08bad6ee32626d6be72040cfcbf1a', '全明格局，户型方正，南北通透', '高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (202, 417801, '2室2厅1卫', '东', '128', '03f3432097945de36cb367acffd1814e', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (203, 417911, '3室2厅2卫', '南', '102', 'bfe361574502b2ed128fb4f5c0e0cb10', '全明格局，户型方正，南北通透', '超高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (204, 417916, '4室2厅2卫', '西', '89', '80c4a31055419f7b42ac253aedbc63a5', '全明格局，户型方正，南北通透', '超高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (205, 418391, '3室2厅2卫', '南', '73', '63214e1a0c577b85e5ae6cf9ad9ec9c1', '全明格局，户型方正，南北通透', '低层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (206, 420825, '5室2厅3卫', '东', '96', '540d1632d95dc008e11e8b408f2dd51e', '全明格局，户型方正，南北通透', '高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (207, 425603, '商住', '西', '73', '9b99ed398ee530f99d9f6a0b6c509d95', '全明格局，户型方正，南北通透', '超高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (208, 428688, '商住', '北', '120', '7c4cc4c4e3c0f3cf6c681c784c705456', '全明格局，户型方正，南北通透', '超高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (209, 428718, '3室2厅2卫', '北', '80', 'baa5cb37849b3a600ffce3ba12b849c8', '全明格局，户型方正，南北通透', '多层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (210, 428861, '3室2厅2卫', '南', '90', 'b84f9bab5bb3d7c994a9c47e872b59dc', '全明格局，户型方正，南北通透', '小高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (211, 430987, '4室2厅3卫', '北', '75', 'd746400d77af692664d7b63ba925695d', '全明格局，户型方正，南北通透', '超高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (212, 431007, '3室2厅2卫', '东', '126', '7ce226e30950333afdb27edb926d3c1c', '全明格局，户型方正，南北通透', '超高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (213, 434009, '1室1厅1卫', '东', '116', '183a919fc043b94d3b23277a4e5fe304', '全明格局，户型方正，南北通透', '低层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (214, 435991, '2室2厅2卫', '北', '110', '925f093cbe855b392d25114d7fcd9f61', '全明格局，户型方正，南北通透', '小高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (215, 436270, '5室2厅5卫', '南', '129', '81e51f2854572570e68c982d205c9ad1', '全明格局，户型方正，南北通透', '超高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (216, 438437, '2室2厅1卫', '东', '124', 'f4050fddaf6f27bd8b6ccaa58abcd1bb', '全明格局，户型方正，南北通透', '超高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (217, 440493, '3室2厅1卫', '北', '79', '68bc2360b08714f91122c73c77ad379c', '全明格局，户型方正，南北通透', '小高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (218, 444199, '4室2厅2卫', '西', '99', '5b22dcb9bc04fab160d16b0eec249a75', '全明格局，户型方正，南北通透', '低层', '精装修');
INSERT INTO `loupan_house_type` VALUES (219, 444521, '3室2厅2卫', '西', '72', 'f0b87eb8db00787308a32843f432d127', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (220, 444619, '6室2厅8卫', '西', '104', '97442e5c5cb93859cdbcb25a5a2d2b39', '全明格局，户型方正，南北通透', '超高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (221, 444683, '商住', '西', '91', '356aa7b823b995ca21257952f04e7cc0', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (222, 445130, '2室2厅1卫', '南', '122', 'f8c28431f1d3414f826c8ae8f959aab2', '全明格局，户型方正，南北通透', '超高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (223, 446117, '3室2厅3卫', '西', '87', 'abacee993a43e551416a4dfc6a926ac2', '全明格局，户型方正，南北通透', '小高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (224, 446319, '1室1厅1卫', '北', '101', 'bf497e3699ef253943643fbbde321db3', '全明格局，户型方正，南北通透', '低层', '精装修');
INSERT INTO `loupan_house_type` VALUES (225, 446822, '商住', '北', '115', '41c51729334590b9ebd3b0d43dac5c85', '全明格局，户型方正，南北通透', '超高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (226, 446866, '3室2厅2卫', '西', '122', '123e7492c5a480909b7e0367930ef1b0', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (227, 446981, '6室2厅4卫', '西', '92', '9db96a35db7ca3bd44172892dc475a01', '全明格局，户型方正，南北通透', '低层', '精装修');
INSERT INTO `loupan_house_type` VALUES (228, 449339, '商住', '北', '76', '179bc560999ef7298b50afb0a64215a4', '全明格局，户型方正，南北通透', '小高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (229, 450530, '3室2厅2卫', '北', '105', 'd7b5d200b9e8f1323920e534287d290a', '全明格局，户型方正，南北通透', '低层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (230, 452894, '商住', '西', '75', '49983391ceb3991f6b91d21d7baf127d', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (231, 453345, '4室2厅2卫', '西', '72', '67d17ff6388bbd1ea530beee12ae3f42', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (232, 454202, '3室2厅2卫', '西', '109', 'c6d843abf93d7556f6e404da10a254bb', '全明格局，户型方正，南北通透', '超高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (233, 455893, '3室2厅1卫', '西', '124', 'daec7a51a8fd4f0dc56db56170f3c51a', '全明格局，户型方正，南北通透', '小高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (234, 456171, '2室2厅1卫', '南', '114', 'ba939824165364b81bfd200ae9ad5cf0', '全明格局，户型方正，南北通透', '超高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (235, 456818, '商住', '南', '121', 'ecb789d736cf1b68312d3d8d471a025b', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (236, 457153, '3室2厅2卫', '南', '88', 'c0a686eedabef73aef25afe50bf0fac0', '全明格局，户型方正，南北通透', '超高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (237, 458293, '2室2厅1卫', '北', '80', 'eaec762c31fb7aced85ec4719c73883b', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (238, 459483, '3室2厅2卫', '西', '112', '5c0ba32d9f599287af425f230689b936', '全明格局，户型方正，南北通透', '低层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (239, 459896, '4室2厅3卫', '西', '97', '65271f00e00f8e59f76b9743f818d99d', '全明格局，户型方正，南北通透', '小高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (240, 461218, '3室2厅2卫', '南', '70', 'd329ddad413d56949edb6f5bedc50cea', '全明格局，户型方正，南北通透', '高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (241, 461331, '商住', '西', '127', 'c66df06536349e3be7db2967df8ec915', '全明格局，户型方正，南北通透', '多层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (242, 462626, '2室2厅1卫', '西', '89', '16e321617b746777a309cfd467b356f0', '全明格局，户型方正，南北通透', '低层', '精装修');
INSERT INTO `loupan_house_type` VALUES (243, 462935, '3室2厅2卫', '南', '98', 'b26ce78f02c59a3d09053c795e9efa53', '全明格局，户型方正，南北通透', '超高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (244, 462998, '3室2厅2卫', '南', '114', 'c1c22de6f1dd8cd291cbce099c8b0cb3', '全明格局，户型方正，南北通透', '多层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (245, 463507, '商住', '西', '121', '8b7a51da346a2b11934f3a78dce61691', '全明格局，户型方正，南北通透', '高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (246, 463585, '2室2厅1卫', '北', '102', 'd2e7fd675b0f49c19e750a2719a5aaf4', '全明格局，户型方正，南北通透', '超高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (247, 463748, '商住', '北', '100', 'd36963268fa9e38e62f033d8fe348800', '全明格局，户型方正，南北通透', '超高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (248, 464232, '商住', '南', '92', '7998099ea45df69a578e2287b78ce1db', '全明格局，户型方正，南北通透', '低层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (249, 465257, '2室2厅1卫', '北', '118', '6876a213d142c2a94441ae19097c75bd', '全明格局，户型方正，南北通透', '低层', '精装修');
INSERT INTO `loupan_house_type` VALUES (250, 465536, '商住', '东', '107', 'e484f2025e18f4e3e7031c0740a2f772', '全明格局，户型方正，南北通透', '高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (251, 465626, '商住', '北', '124', '49fca2ec5ed575feb037a922487d05da', '全明格局，户型方正，南北通透', '超高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (252, 465640, '3室2厅2卫', '东', '103', 'cd28c6a92d10523d93bb0b396826bc5e', '全明格局，户型方正，南北通透', '高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (253, 466718, '2室2厅1卫', '北', '73', 'dd5e0b79dd4888a2c07834b1a6f721aa', '全明格局，户型方正，南北通透', '低层', '精装修');
INSERT INTO `loupan_house_type` VALUES (254, 466812, '商住', '东', '112', '0b04667d2da96ea4f5670e49ad3f1570', '全明格局，户型方正，南北通透', '低层', '精装修');
INSERT INTO `loupan_house_type` VALUES (255, 467288, '3室2厅1卫', '东', '104', '2c60c7274b3eff43d552507b5d245ab3', '全明格局，户型方正，南北通透', '超高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (256, 467456, '4室2厅2卫', '西', '125', '281403cfced25bcb69ef2747fdca6863', '全明格局，户型方正，南北通透', '低层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (257, 468505, '3室2厅1卫', '南', '109', '7a931ce26de138a1b3f417dca79d4e5c', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (258, 469423, '3室2厅2卫', '西', '80', '8bfcb0ed474cf0f126a057719476dbf1', '全明格局，户型方正，南北通透', '小高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (259, 470584, '4室2厅2卫', '东', '122', '04f24b842691155b42d65ac0e6a721bd', '全明格局，户型方正，南北通透', '小高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (260, 470787, '商住', '北', '71', '4cdd8258a1394c89f4b2a756deb1be8d', '全明格局，户型方正，南北通透', '多层', '精装修');
INSERT INTO `loupan_house_type` VALUES (261, 471625, '3室2厅2卫', '东', '123', '09cdb37d1b04fa4c655db04e2b27ce4d', '全明格局，户型方正，南北通透', '小高层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (262, 472112, '3室2厅1卫', '南', '120', '459014ad9fc99d42cc2843af5ee47f03', '全明格局，户型方正，南北通透', '高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (263, 473022, '2室2厅1卫', '南', '82', 'b08286cc0ea2a72ac935dbffb4e431d9', '全明格局，户型方正，南北通透', '低层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (264, 474256, '商住', '东', '81', 'a620edf24dfc165731fa52265bd685d9', '全明格局，户型方正，南北通透', '超高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (265, 474294, '4室2厅2卫', '北', '110', '60f582c1016c7a17b88f33ffae8b5543', '全明格局，户型方正，南北通透', '低层', '精装修');
INSERT INTO `loupan_house_type` VALUES (266, 474608, '商住', '西', '108', '1041d291d537024b17d6207afe322021', '全明格局，户型方正，南北通透', '小高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (267, 479629, '3室2厅2卫', '南', '76', '743a629c050aad5dbf67d87b7a2fdd37', '全明格局，户型方正，南北通透', '多层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (268, 479637, '1室2厅1卫', '东', '80', '8d2035e83b0d5b41b4d3096433d6b2af', '全明格局，户型方正，南北通透', '低层', '精装修');
INSERT INTO `loupan_house_type` VALUES (269, 480896, '2室2厅1卫', '北', '73', '9158bee16041669de196c194dec1212d', '全明格局，户型方正，南北通透', '高层', '精装修');
INSERT INTO `loupan_house_type` VALUES (270, 481297, '3室2厅2卫', '东', '120', '4adc832b8860af4bae1d0da0560c24e1', '全明格局，户型方正，南北通透', '小高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (271, 481414, '2室2厅1卫', '东', '89', '4b01ba64959baf1874ef8fedc8b75984', '全明格局，户型方正，南北通透', '多层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (272, 481537, '3室2厅2卫', '东', '100', '10ab8d227a60e63279a459945a94c7ba', '全明格局，户型方正，南北通透', '多层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (273, 485626, '商住', '东', '90', '49dac8fd00a0bd47bb1eec757620b2d1', '全明格局，户型方正，南北通透', '超高层', '普通装修');
INSERT INTO `loupan_house_type` VALUES (274, 486088, '3室2厅2卫', '西', '112', '863b0336b98fc655dd34a2fda423df96', '全明格局，户型方正，南北通透', '低层', '毛坯房');
INSERT INTO `loupan_house_type` VALUES (275, 486720, '商住', '西', '77', 'fcd79d4ffe2c26addfab081985d5f46f', '全明格局，户型方正，南北通透', '高层', '毛坯房');

-- ----------------------------
-- Table structure for loupan_public_num
-- ----------------------------
DROP TABLE IF EXISTS `loupan_public_num`;
CREATE TABLE `loupan_public_num`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `loupan_id` int(0) NULL DEFAULT NULL,
  `youeryuan_num` int(0) NULL DEFAULT NULL,
  `xiaoxue_num` int(0) NULL DEFAULT NULL,
  `zhongxue_num` int(0) NULL DEFAULT NULL,
  `daxue_num` int(0) NULL DEFAULT NULL,
  `sanjiayiyuan_num` int(0) NULL DEFAULT NULL,
  `yijiyiliao` int(0) NULL DEFAULT NULL,
  `erjiyiliao` int(0) NULL DEFAULT NULL,
  `huochezhan_num` int(0) NULL DEFAULT NULL,
  `qichezhan_num` int(0) NULL DEFAULT NULL,
  `gaotiezhan_num` int(0) NULL DEFAULT NULL,
  `gongjiaozhan_num` int(0) NULL DEFAULT NULL,
  `shichang_num` int(0) NULL DEFAULT NULL,
  `shangchangchaoshi_num` int(0) NULL DEFAULT NULL,
  `canyin_num` int(0) NULL DEFAULT NULL,
  `gongyuan_num` int(0) NULL DEFAULT NULL,
  `jiaoyu_count` int(0) NULL DEFAULT NULL,
  `yiliao_count` int(0) NULL DEFAULT NULL,
  `jiaotong_count` int(0) NULL DEFAULT NULL,
  `yule_count` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 919 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '楼盘公共设施表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of loupan_public_num
-- ----------------------------
INSERT INTO `loupan_public_num` VALUES (651, 243435, 53, 14, 10, 92, 0, 4, 1, 4, 3, 0, 50, 61, 9, 122, 6, 169, 5, 57, 198);
INSERT INTO `loupan_public_num` VALUES (652, 243437, 21, 5, 6, 20, 1, 3, 0, 2, 5, 0, 43, 22, 3, 122, 10, 52, 4, 50, 157);
INSERT INTO `loupan_public_num` VALUES (653, 243441, 41, 12, 14, 5, 1, 3, 0, 2, 3, 0, 51, 48, 9, 120, 15, 72, 4, 56, 192);
INSERT INTO `loupan_public_num` VALUES (654, 243442, 48, 10, 8, 8, 0, 1, 0, 8, 5, 0, 48, 76, 6, 112, 9, 74, 1, 61, 203);
INSERT INTO `loupan_public_num` VALUES (655, 243444, 10, 2, 1, 1, 0, 0, 0, 2, 0, 0, 25, 55, 1, 21, 1, 14, 0, 27, 78);
INSERT INTO `loupan_public_num` VALUES (656, 243446, 49, 17, 21, 49, 3, 10, 3, 10, 7, 0, 51, 67, 16, 127, 11, 136, 16, 68, 221);
INSERT INTO `loupan_public_num` VALUES (657, 243447, 21, 12, 14, 14, 2, 4, 0, 23, 3, 0, 51, 61, 12, 113, 3, 61, 6, 77, 189);
INSERT INTO `loupan_public_num` VALUES (658, 243448, 23, 8, 5, 5, 0, 5, 0, 3, 1, 0, 42, 15, 3, 95, 12, 41, 5, 46, 125);
INSERT INTO `loupan_public_num` VALUES (659, 243453, 22, 7, 2, 5, 0, 1, 1, 2, 1, 0, 42, 9, 4, 82, 1, 36, 2, 45, 96);
INSERT INTO `loupan_public_num` VALUES (660, 243460, 28, 16, 16, 15, 2, 3, 0, 65, 6, 1, 51, 61, 19, 115, 9, 75, 5, 123, 204);
INSERT INTO `loupan_public_num` VALUES (661, 243466, 49, 22, 30, 48, 1, 6, 3, 42, 4, 0, 46, 88, 14, 120, 9, 149, 10, 92, 231);
INSERT INTO `loupan_public_num` VALUES (662, 243473, 7, 3, 4, 2, 0, 0, 0, 2, 1, 0, 19, 5, 0, 53, 3, 16, 0, 22, 61);
INSERT INTO `loupan_public_num` VALUES (663, 243487, 31, 6, 3, 29, 0, 1, 0, 4, 1, 0, 42, 40, 5, 120, 2, 69, 1, 47, 167);
INSERT INTO `loupan_public_num` VALUES (664, 243488, 14, 3, 3, 9, 0, 0, 0, 3, 0, 0, 28, 36, 2, 39, 2, 29, 0, 31, 79);
INSERT INTO `loupan_public_num` VALUES (665, 243493, 31, 17, 21, 32, 3, 4, 0, 68, 8, 1, 46, 64, 20, 120, 9, 101, 7, 123, 213);
INSERT INTO `loupan_public_num` VALUES (666, 243497, 47, 17, 25, 50, 3, 10, 3, 12, 5, 0, 51, 72, 17, 126, 13, 139, 16, 68, 228);
INSERT INTO `loupan_public_num` VALUES (667, 243500, 40, 13, 14, 5, 1, 3, 0, 2, 2, 0, 49, 53, 9, 114, 13, 72, 4, 53, 189);
INSERT INTO `loupan_public_num` VALUES (668, 243502, 34, 19, 26, 48, 3, 7, 0, 67, 8, 1, 47, 90, 15, 115, 11, 127, 10, 123, 231);
INSERT INTO `loupan_public_num` VALUES (669, 243512, 30, 6, 10, 55, 1, 2, 0, 3, 4, 0, 44, 49, 3, 117, 16, 101, 3, 51, 185);
INSERT INTO `loupan_public_num` VALUES (670, 243516, 74, 16, 10, 9, 0, 2, 1, 2, 1, 0, 57, 73, 3, 117, 1, 109, 3, 60, 194);
INSERT INTO `loupan_public_num` VALUES (671, 243519, 43, 8, 8, 2, 0, 3, 0, 6, 4, 0, 52, 43, 8, 116, 7, 61, 3, 62, 174);
INSERT INTO `loupan_public_num` VALUES (672, 243521, 25, 14, 16, 15, 2, 3, 0, 68, 7, 1, 47, 69, 20, 109, 8, 70, 5, 123, 206);
INSERT INTO `loupan_public_num` VALUES (673, 243526, 37, 14, 14, 5, 1, 3, 0, 2, 2, 0, 48, 56, 9, 115, 14, 70, 4, 52, 194);
INSERT INTO `loupan_public_num` VALUES (674, 243528, 40, 7, 4, 16, 0, 1, 0, 4, 1, 0, 45, 39, 5, 119, 4, 67, 1, 50, 167);
INSERT INTO `loupan_public_num` VALUES (675, 243529, 8, 3, 2, 3, 0, 1, 1, 2, 0, 0, 29, 7, 0, 30, 3, 16, 2, 31, 40);
INSERT INTO `loupan_public_num` VALUES (676, 243531, 15, 5, 2, 3, 0, 1, 1, 2, 1, 0, 28, 5, 2, 41, 1, 25, 2, 31, 49);
INSERT INTO `loupan_public_num` VALUES (677, 243533, 35, 7, 4, 7, 1, 3, 0, 6, 2, 0, 45, 24, 8, 122, 9, 53, 4, 53, 163);
INSERT INTO `loupan_public_num` VALUES (678, 243534, 18, 8, 5, 5, 0, 4, 0, 3, 1, 0, 38, 16, 3, 94, 12, 36, 4, 42, 125);
INSERT INTO `loupan_public_num` VALUES (679, 243535, 12, 5, 1, 1, 0, 0, 0, 2, 0, 0, 38, 28, 2, 105, 0, 19, 0, 40, 135);
INSERT INTO `loupan_public_num` VALUES (680, 243536, 6, 2, 6, 10, 0, 3, 1, 2, 1, 0, 29, 3, 0, 20, 2, 24, 4, 32, 25);
INSERT INTO `loupan_public_num` VALUES (681, 243537, 29, 7, 3, 3, 0, 1, 0, 2, 2, 0, 47, 62, 9, 116, 4, 42, 1, 51, 191);
INSERT INTO `loupan_public_num` VALUES (682, 243539, 15, 7, 2, 1, 0, 3, 0, 2, 2, 0, 49, 44, 2, 118, 2, 25, 3, 53, 166);
INSERT INTO `loupan_public_num` VALUES (683, 243551, 34, 15, 17, 11, 1, 4, 1, 41, 5, 0, 54, 60, 3, 114, 6, 77, 6, 100, 183);
INSERT INTO `loupan_public_num` VALUES (684, 243558, 5, 2, 6, 10, 0, 3, 1, 2, 1, 0, 27, 2, 0, 19, 2, 23, 4, 30, 23);
INSERT INTO `loupan_public_num` VALUES (685, 243560, 20, 7, 9, 10, 1, 3, 0, 4, 3, 0, 50, 56, 8, 110, 1, 46, 4, 57, 175);
INSERT INTO `loupan_public_num` VALUES (686, 243567, 45, 14, 9, 11, 0, 1, 0, 8, 5, 0, 52, 75, 6, 108, 7, 79, 1, 65, 196);
INSERT INTO `loupan_public_num` VALUES (687, 243572, 33, 19, 21, 32, 3, 4, 0, 66, 7, 1, 47, 62, 20, 120, 11, 105, 7, 121, 213);
INSERT INTO `loupan_public_num` VALUES (688, 243576, 45, 20, 27, 45, 5, 10, 3, 44, 5, 0, 48, 75, 17, 122, 13, 137, 18, 97, 227);
INSERT INTO `loupan_public_num` VALUES (689, 243580, 41, 19, 18, 49, 1, 5, 1, 46, 6, 0, 52, 64, 4, 116, 6, 127, 7, 104, 190);
INSERT INTO `loupan_public_num` VALUES (690, 243583, 18, 6, 2, 4, 0, 1, 1, 2, 1, 0, 34, 8, 4, 59, 1, 30, 2, 37, 72);
INSERT INTO `loupan_public_num` VALUES (691, 243584, 35, 20, 25, 39, 4, 5, 0, 66, 7, 1, 39, 53, 21, 114, 9, 119, 9, 113, 197);
INSERT INTO `loupan_public_num` VALUES (692, 243587, 21, 6, 10, 62, 1, 2, 0, 2, 1, 0, 44, 23, 2, 114, 13, 99, 3, 47, 152);
INSERT INTO `loupan_public_num` VALUES (693, 243588, 33, 7, 4, 0, 0, 2, 0, 40, 1, 1, 53, 61, 2, 119, 3, 44, 2, 95, 185);
INSERT INTO `loupan_public_num` VALUES (694, 243595, 0, 0, 1, 8, 0, 0, 0, 2, 1, 0, 10, 10, 0, 27, 0, 9, 0, 13, 37);
INSERT INTO `loupan_public_num` VALUES (695, 243599, 12, 4, 2, 3, 0, 1, 1, 2, 1, 0, 26, 6, 1, 41, 3, 21, 2, 29, 51);
INSERT INTO `loupan_public_num` VALUES (696, 243600, 35, 13, 14, 45, 3, 8, 0, 3, 4, 0, 54, 74, 8, 117, 9, 107, 11, 61, 208);
INSERT INTO `loupan_public_num` VALUES (697, 243608, 27, 16, 20, 32, 2, 4, 0, 69, 8, 1, 45, 72, 20, 113, 9, 95, 6, 123, 214);
INSERT INTO `loupan_public_num` VALUES (698, 243611, 3, 1, 0, 0, 0, 1, 0, 3, 1, 0, 10, 3, 0, 20, 2, 4, 1, 14, 25);
INSERT INTO `loupan_public_num` VALUES (699, 243612, 4, 1, 1, 10, 0, 0, 0, 2, 1, 0, 19, 0, 0, 51, 3, 16, 0, 22, 54);
INSERT INTO `loupan_public_num` VALUES (700, 243614, 22, 7, 5, 10, 1, 8, 0, 3, 4, 0, 54, 39, 2, 120, 11, 44, 9, 61, 172);
INSERT INTO `loupan_public_num` VALUES (701, 243615, 24, 15, 13, 15, 2, 4, 0, 22, 3, 0, 52, 58, 11, 114, 6, 67, 6, 77, 189);
INSERT INTO `loupan_public_num` VALUES (702, 243622, 36, 19, 26, 49, 3, 5, 0, 69, 8, 1, 50, 90, 15, 116, 10, 130, 8, 128, 231);
INSERT INTO `loupan_public_num` VALUES (703, 243632, 27, 16, 16, 26, 1, 3, 2, 75, 6, 0, 50, 79, 9, 121, 4, 85, 6, 131, 213);
INSERT INTO `loupan_public_num` VALUES (704, 243638, 29, 14, 19, 41, 4, 7, 0, 10, 2, 0, 50, 53, 7, 113, 16, 103, 11, 62, 189);
INSERT INTO `loupan_public_num` VALUES (705, 243639, 20, 10, 12, 17, 1, 3, 0, 2, 1, 0, 42, 15, 1, 120, 12, 59, 4, 45, 148);
INSERT INTO `loupan_public_num` VALUES (706, 243644, 39, 20, 17, 21, 1, 5, 0, 6, 2, 0, 52, 46, 7, 123, 14, 97, 6, 60, 190);
INSERT INTO `loupan_public_num` VALUES (707, 243647, 14, 4, 1, 60, 0, 0, 0, 2, 1, 0, 40, 24, 0, 106, 1, 79, 0, 43, 131);
INSERT INTO `loupan_public_num` VALUES (708, 243650, 45, 18, 24, 50, 5, 10, 1, 65, 8, 1, 45, 69, 15, 113, 12, 137, 16, 119, 209);
INSERT INTO `loupan_public_num` VALUES (709, 243665, 30, 17, 21, 32, 3, 4, 0, 67, 8, 1, 45, 66, 20, 121, 9, 100, 7, 121, 216);
INSERT INTO `loupan_public_num` VALUES (710, 243677, 19, 8, 5, 9, 1, 3, 0, 4, 3, 0, 50, 59, 6, 102, 1, 41, 4, 57, 168);
INSERT INTO `loupan_public_num` VALUES (711, 243679, 37, 21, 26, 39, 4, 4, 0, 70, 7, 1, 43, 55, 21, 117, 15, 123, 8, 121, 208);
INSERT INTO `loupan_public_num` VALUES (712, 243680, 0, 1, 2, 1, 0, 1, 0, 3, 0, 0, 14, 7, 0, 16, 0, 4, 1, 17, 23);
INSERT INTO `loupan_public_num` VALUES (713, 243681, 45, 12, 9, 59, 0, 4, 1, 4, 4, 0, 51, 66, 7, 118, 5, 125, 5, 59, 196);
INSERT INTO `loupan_public_num` VALUES (714, 243686, 9, 5, 2, 0, 0, 0, 0, 2, 0, 0, 35, 8, 2, 59, 3, 16, 0, 37, 72);
INSERT INTO `loupan_public_num` VALUES (715, 243690, 34, 18, 24, 36, 2, 4, 0, 68, 8, 1, 38, 86, 20, 115, 5, 112, 6, 115, 226);
INSERT INTO `loupan_public_num` VALUES (716, 243691, 31, 21, 28, 42, 3, 3, 0, 71, 8, 1, 41, 78, 19, 112, 10, 122, 6, 121, 219);
INSERT INTO `loupan_public_num` VALUES (717, 243699, 9, 5, 2, 0, 0, 1, 0, 2, 0, 0, 31, 36, 1, 106, 0, 16, 1, 33, 143);
INSERT INTO `loupan_public_num` VALUES (718, 243700, 33, 5, 4, 62, 0, 1, 0, 2, 2, 0, 46, 61, 8, 112, 5, 104, 1, 50, 186);
INSERT INTO `loupan_public_num` VALUES (719, 243701, 40, 8, 5, 59, 0, 1, 0, 6, 2, 0, 49, 79, 9, 108, 3, 112, 1, 57, 199);
INSERT INTO `loupan_public_num` VALUES (720, 243702, 29, 16, 15, 6, 1, 2, 0, 3, 1, 0, 48, 38, 3, 123, 13, 66, 3, 52, 177);
INSERT INTO `loupan_public_num` VALUES (721, 243705, 41, 9, 7, 64, 0, 1, 0, 4, 4, 0, 47, 46, 5, 120, 4, 121, 1, 55, 175);
INSERT INTO `loupan_public_num` VALUES (722, 243706, 41, 20, 26, 48, 4, 7, 1, 68, 8, 1, 44, 88, 16, 115, 10, 135, 12, 121, 229);
INSERT INTO `loupan_public_num` VALUES (723, 243707, 26, 6, 2, 3, 0, 1, 0, 2, 2, 0, 44, 61, 9, 118, 4, 37, 1, 48, 192);
INSERT INTO `loupan_public_num` VALUES (724, 243710, 34, 16, 11, 5, 1, 5, 0, 4, 1, 0, 51, 33, 4, 129, 12, 66, 6, 56, 178);
INSERT INTO `loupan_public_num` VALUES (725, 243715, 23, 5, 5, 17, 3, 6, 0, 3, 4, 0, 54, 35, 2, 124, 10, 50, 9, 61, 171);
INSERT INTO `loupan_public_num` VALUES (726, 243722, 45, 9, 6, 4, 0, 2, 0, 2, 2, 0, 47, 71, 6, 113, 5, 64, 2, 51, 195);
INSERT INTO `loupan_public_num` VALUES (727, 243736, 32, 21, 23, 35, 2, 4, 0, 67, 8, 1, 45, 76, 15, 122, 7, 111, 6, 121, 220);
INSERT INTO `loupan_public_num` VALUES (728, 243739, 45, 10, 7, 4, 0, 3, 0, 7, 3, 0, 53, 46, 8, 118, 11, 66, 3, 63, 183);
INSERT INTO `loupan_public_num` VALUES (729, 243740, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 11, 0, 0, 6, 1, 1, 0, 13, 7);
INSERT INTO `loupan_public_num` VALUES (730, 243741, 27, 6, 7, 55, 1, 2, 0, 3, 2, 0, 42, 32, 3, 121, 14, 95, 3, 47, 170);
INSERT INTO `loupan_public_num` VALUES (731, 243742, 17, 4, 2, 4, 1, 4, 0, 3, 4, 0, 42, 27, 1, 120, 9, 27, 5, 49, 157);
INSERT INTO `loupan_public_num` VALUES (732, 243743, 48, 23, 31, 46, 5, 10, 2, 70, 4, 0, 44, 70, 14, 126, 11, 148, 17, 118, 221);
INSERT INTO `loupan_public_num` VALUES (733, 243744, 30, 16, 24, 38, 3, 7, 0, 68, 7, 1, 37, 64, 20, 117, 8, 108, 10, 113, 209);
INSERT INTO `loupan_public_num` VALUES (734, 243748, 31, 14, 20, 33, 4, 10, 1, 8, 3, 0, 54, 72, 15, 119, 15, 98, 15, 65, 221);
INSERT INTO `loupan_public_num` VALUES (735, 243750, 28, 16, 20, 32, 2, 5, 0, 69, 8, 1, 45, 74, 20, 115, 9, 96, 7, 123, 218);
INSERT INTO `loupan_public_num` VALUES (736, 243751, 46, 20, 23, 51, 5, 9, 3, 31, 4, 0, 54, 76, 17, 123, 14, 140, 17, 89, 230);
INSERT INTO `loupan_public_num` VALUES (737, 244653, 25, 11, 10, 5, 0, 2, 0, 2, 1, 0, 45, 30, 4, 122, 8, 51, 2, 48, 164);
INSERT INTO `loupan_public_num` VALUES (738, 244664, 29, 5, 2, 7, 0, 1, 0, 4, 0, 0, 39, 42, 4, 120, 3, 43, 1, 43, 169);
INSERT INTO `loupan_public_num` VALUES (739, 244665, 44, 9, 5, 4, 1, 3, 0, 7, 2, 0, 45, 30, 8, 118, 9, 62, 4, 54, 165);
INSERT INTO `loupan_public_num` VALUES (740, 244666, 35, 21, 26, 40, 2, 4, 0, 67, 8, 1, 45, 89, 16, 118, 9, 122, 6, 121, 232);
INSERT INTO `loupan_public_num` VALUES (741, 245479, 18, 2, 3, 10, 0, 0, 0, 3, 0, 0, 36, 30, 3, 71, 3, 33, 0, 39, 107);
INSERT INTO `loupan_public_num` VALUES (742, 245562, 40, 23, 30, 41, 2, 8, 2, 71, 5, 0, 48, 88, 14, 116, 8, 134, 12, 124, 226);
INSERT INTO `loupan_public_num` VALUES (743, 245582, 5, 3, 5, 1, 0, 1, 0, 2, 1, 0, 26, 4, 0, 19, 1, 14, 1, 29, 24);
INSERT INTO `loupan_public_num` VALUES (744, 246281, 42, 8, 6, 2, 0, 2, 0, 7, 2, 1, 49, 47, 8, 119, 5, 58, 2, 59, 179);
INSERT INTO `loupan_public_num` VALUES (745, 246358, 30, 16, 19, 32, 2, 4, 0, 67, 8, 1, 46, 67, 21, 113, 9, 97, 6, 122, 210);
INSERT INTO `loupan_public_num` VALUES (746, 246457, 41, 7, 5, 7, 1, 3, 0, 6, 2, 0, 44, 22, 8, 119, 11, 60, 4, 52, 160);
INSERT INTO `loupan_public_num` VALUES (747, 246463, 24, 10, 12, 14, 2, 3, 0, 63, 4, 0, 52, 61, 17, 111, 3, 60, 5, 119, 192);
INSERT INTO `loupan_public_num` VALUES (748, 246569, 13, 6, 1, 1, 0, 3, 0, 2, 0, 0, 38, 19, 2, 96, 2, 21, 3, 40, 119);
INSERT INTO `loupan_public_num` VALUES (749, 246783, 33, 12, 15, 4, 0, 2, 0, 2, 3, 0, 55, 76, 3, 121, 8, 64, 2, 60, 208);
INSERT INTO `loupan_public_num` VALUES (750, 246788, 17, 6, 5, 2, 0, 3, 0, 3, 1, 0, 38, 19, 1, 69, 10, 30, 3, 42, 99);
INSERT INTO `loupan_public_num` VALUES (751, 247762, 37, 7, 3, 3, 0, 2, 0, 12, 0, 1, 51, 50, 7, 121, 4, 50, 2, 64, 182);
INSERT INTO `loupan_public_num` VALUES (752, 247858, 43, 8, 4, 7, 1, 3, 0, 7, 2, 0, 45, 24, 8, 120, 11, 62, 4, 54, 163);
INSERT INTO `loupan_public_num` VALUES (753, 248142, 25, 14, 16, 15, 2, 3, 0, 68, 7, 1, 47, 69, 20, 109, 8, 70, 5, 123, 206);
INSERT INTO `loupan_public_num` VALUES (754, 248210, 31, 13, 17, 37, 4, 9, 1, 3, 3, 0, 55, 77, 13, 121, 13, 98, 14, 61, 224);
INSERT INTO `loupan_public_num` VALUES (755, 248217, 40, 11, 14, 4, 1, 2, 0, 8, 4, 0, 50, 64, 3, 119, 8, 69, 3, 62, 194);
INSERT INTO `loupan_public_num` VALUES (756, 248218, 15, 5, 2, 3, 0, 1, 1, 2, 1, 0, 25, 4, 2, 33, 1, 25, 2, 28, 40);
INSERT INTO `loupan_public_num` VALUES (757, 248239, 11, 4, 2, 1, 0, 3, 0, 2, 0, 0, 37, 14, 0, 43, 4, 18, 3, 39, 61);
INSERT INTO `loupan_public_num` VALUES (758, 248386, 4, 1, 5, 11, 0, 2, 1, 2, 1, 0, 18, 2, 0, 54, 2, 21, 3, 21, 58);
INSERT INTO `loupan_public_num` VALUES (759, 248529, 36, 18, 23, 45, 5, 9, 2, 9, 3, 0, 51, 78, 15, 132, 16, 122, 16, 63, 241);
INSERT INTO `loupan_public_num` VALUES (760, 248671, 36, 7, 5, 7, 1, 3, 0, 6, 2, 0, 44, 23, 8, 122, 9, 55, 4, 52, 162);
INSERT INTO `loupan_public_num` VALUES (761, 249034, 12, 6, 6, 3, 0, 1, 0, 4, 1, 0, 35, 14, 2, 100, 5, 27, 1, 40, 121);
INSERT INTO `loupan_public_num` VALUES (762, 249035, 37, 6, 4, 7, 1, 4, 0, 7, 2, 0, 45, 68, 7, 117, 8, 54, 5, 54, 200);
INSERT INTO `loupan_public_num` VALUES (763, 249250, 26, 5, 3, 6, 0, 1, 0, 2, 1, 0, 47, 61, 8, 121, 4, 40, 1, 50, 194);
INSERT INTO `loupan_public_num` VALUES (764, 249400, 5, 1, 2, 0, 0, 0, 0, 2, 0, 0, 24, 9, 1, 55, 3, 8, 0, 26, 68);
INSERT INTO `loupan_public_num` VALUES (765, 249530, 20, 8, 8, 10, 1, 3, 0, 4, 3, 0, 48, 58, 7, 109, 2, 46, 4, 55, 176);
INSERT INTO `loupan_public_num` VALUES (766, 249602, 31, 9, 4, 1, 0, 2, 0, 7, 2, 1, 47, 42, 3, 116, 1, 45, 2, 57, 162);
INSERT INTO `loupan_public_num` VALUES (767, 249807, 40, 16, 17, 27, 1, 4, 0, 40, 6, 0, 53, 61, 4, 118, 9, 100, 5, 99, 192);
INSERT INTO `loupan_public_num` VALUES (768, 249813, 46, 17, 14, 7, 0, 2, 0, 8, 3, 0, 51, 69, 7, 121, 7, 84, 2, 62, 204);
INSERT INTO `loupan_public_num` VALUES (769, 249845, 31, 20, 21, 29, 3, 2, 0, 67, 6, 1, 48, 45, 20, 122, 12, 101, 5, 122, 199);
INSERT INTO `loupan_public_num` VALUES (770, 249846, 58, 19, 20, 64, 2, 3, 2, 22, 2, 0, 53, 57, 18, 116, 8, 161, 7, 77, 199);
INSERT INTO `loupan_public_num` VALUES (771, 249852, 6, 2, 4, 11, 0, 0, 0, 2, 1, 0, 25, 0, 0, 55, 5, 23, 0, 28, 60);
INSERT INTO `loupan_public_num` VALUES (772, 249855, 9, 4, 1, 0, 0, 3, 0, 2, 0, 0, 33, 16, 1, 84, 1, 14, 3, 35, 102);
INSERT INTO `loupan_public_num` VALUES (773, 249856, 18, 7, 4, 5, 1, 3, 0, 4, 2, 0, 51, 58, 5, 105, 1, 34, 4, 57, 169);
INSERT INTO `loupan_public_num` VALUES (774, 249861, 39, 15, 14, 4, 1, 2, 0, 3, 4, 0, 51, 74, 4, 119, 9, 72, 3, 58, 206);
INSERT INTO `loupan_public_num` VALUES (775, 249863, 5, 3, 5, 1, 0, 1, 0, 2, 1, 0, 26, 4, 0, 18, 1, 14, 1, 29, 23);
INSERT INTO `loupan_public_num` VALUES (776, 249869, 20, 11, 10, 11, 2, 4, 0, 5, 3, 0, 51, 61, 9, 109, 2, 52, 6, 59, 181);
INSERT INTO `loupan_public_num` VALUES (777, 249959, 40, 7, 6, 2, 0, 2, 0, 12, 0, 1, 51, 46, 11, 116, 8, 55, 2, 64, 181);
INSERT INTO `loupan_public_num` VALUES (778, 250006, 47, 9, 5, 55, 0, 1, 0, 2, 2, 0, 49, 65, 11, 108, 5, 116, 1, 53, 189);
INSERT INTO `loupan_public_num` VALUES (779, 250007, 23, 5, 4, 3, 0, 1, 0, 2, 1, 0, 45, 51, 6, 121, 4, 35, 1, 48, 182);
INSERT INTO `loupan_public_num` VALUES (780, 250334, 20, 8, 10, 1, 0, 0, 0, 4, 4, 0, 48, 64, 1, 115, 8, 39, 0, 56, 188);
INSERT INTO `loupan_public_num` VALUES (781, 250360, 61, 18, 14, 95, 1, 3, 1, 4, 3, 0, 51, 58, 13, 115, 9, 188, 5, 58, 195);
INSERT INTO `loupan_public_num` VALUES (782, 250382, 0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 15, 2, 0, 7, 1, 1, 0, 17, 10);
INSERT INTO `loupan_public_num` VALUES (783, 250384, 23, 14, 15, 18, 2, 3, 0, 71, 7, 1, 45, 71, 20, 112, 6, 70, 5, 124, 209);
INSERT INTO `loupan_public_num` VALUES (784, 250386, 40, 14, 15, 5, 1, 3, 0, 3, 4, 0, 52, 80, 3, 123, 9, 74, 4, 59, 215);
INSERT INTO `loupan_public_num` VALUES (785, 250389, 44, 10, 5, 54, 0, 1, 0, 2, 2, 0, 49, 64, 11, 106, 5, 113, 1, 53, 186);
INSERT INTO `loupan_public_num` VALUES (786, 250481, 39, 10, 12, 24, 3, 8, 0, 3, 4, 0, 54, 72, 3, 121, 10, 85, 11, 61, 206);
INSERT INTO `loupan_public_num` VALUES (787, 250892, 32, 14, 10, 8, 1, 1, 0, 3, 2, 0, 49, 41, 4, 128, 7, 64, 2, 54, 180);
INSERT INTO `loupan_public_num` VALUES (788, 250896, 40, 22, 30, 39, 3, 4, 2, 53, 4, 0, 44, 99, 13, 122, 9, 131, 9, 101, 243);
INSERT INTO `loupan_public_num` VALUES (789, 250901, 35, 19, 13, 10, 1, 6, 0, 6, 1, 0, 51, 45, 3, 124, 15, 77, 7, 58, 187);
INSERT INTO `loupan_public_num` VALUES (790, 250907, 23, 14, 15, 14, 2, 3, 0, 68, 6, 1, 47, 67, 19, 114, 4, 66, 5, 122, 204);
INSERT INTO `loupan_public_num` VALUES (791, 250911, 3, 4, 0, 0, 0, 0, 0, 2, 0, 0, 19, 11, 0, 21, 0, 7, 0, 21, 32);
INSERT INTO `loupan_public_num` VALUES (792, 250916, 39, 9, 6, 2, 0, 2, 0, 10, 0, 1, 50, 42, 9, 120, 8, 56, 2, 61, 179);
INSERT INTO `loupan_public_num` VALUES (793, 251341, 9, 5, 2, 0, 0, 1, 0, 3, 3, 0, 31, 31, 1, 107, 0, 16, 1, 37, 139);
INSERT INTO `loupan_public_num` VALUES (794, 251343, 41, 7, 5, 7, 1, 3, 0, 6, 2, 0, 44, 22, 8, 119, 11, 60, 4, 52, 160);
INSERT INTO `loupan_public_num` VALUES (795, 251549, 12, 4, 2, 1, 0, 1, 0, 2, 0, 0, 41, 25, 2, 107, 0, 19, 1, 43, 134);
INSERT INTO `loupan_public_num` VALUES (796, 251620, 42, 20, 24, 41, 5, 11, 3, 9, 4, 0, 53, 75, 18, 125, 16, 127, 19, 66, 234);
INSERT INTO `loupan_public_num` VALUES (797, 251726, 48, 23, 31, 41, 5, 8, 2, 67, 4, 0, 43, 71, 14, 129, 11, 143, 15, 114, 225);
INSERT INTO `loupan_public_num` VALUES (798, 251812, 26, 7, 12, 60, 1, 3, 0, 2, 2, 0, 44, 25, 2, 115, 15, 105, 4, 48, 157);
INSERT INTO `loupan_public_num` VALUES (799, 251925, 33, 18, 25, 42, 2, 5, 0, 67, 8, 1, 46, 92, 15, 113, 10, 118, 7, 122, 230);
INSERT INTO `loupan_public_num` VALUES (800, 251926, 49, 17, 17, 31, 1, 3, 0, 47, 5, 0, 53, 65, 5, 121, 12, 114, 4, 105, 203);
INSERT INTO `loupan_public_num` VALUES (801, 251956, 63, 13, 12, 61, 1, 3, 0, 4, 4, 0, 53, 70, 8, 115, 12, 149, 4, 61, 205);
INSERT INTO `loupan_public_num` VALUES (802, 252122, 8, 4, 0, 0, 0, 2, 0, 2, 0, 0, 26, 13, 0, 29, 1, 12, 2, 28, 43);
INSERT INTO `loupan_public_num` VALUES (803, 252138, 31, 14, 17, 15, 2, 3, 0, 55, 4, 0, 50, 60, 15, 120, 7, 77, 5, 109, 202);
INSERT INTO `loupan_public_num` VALUES (804, 252514, 3, 2, 1, 0, 0, 0, 0, 2, 0, 0, 17, 6, 0, 38, 0, 6, 0, 19, 44);
INSERT INTO `loupan_public_num` VALUES (805, 252556, 50, 12, 7, 9, 0, 2, 0, 8, 5, 0, 48, 73, 4, 116, 10, 78, 2, 61, 203);
INSERT INTO `loupan_public_num` VALUES (806, 252583, 30, 12, 14, 38, 3, 8, 0, 3, 4, 0, 55, 75, 9, 122, 13, 94, 11, 62, 219);
INSERT INTO `loupan_public_num` VALUES (807, 252604, 36, 12, 14, 4, 1, 3, 0, 2, 2, 0, 50, 71, 7, 115, 13, 66, 4, 54, 206);
INSERT INTO `loupan_public_num` VALUES (808, 252660, 4, 2, 0, 0, 0, 1, 1, 3, 0, 0, 24, 46, 0, 61, 0, 6, 2, 27, 107);
INSERT INTO `loupan_public_num` VALUES (809, 252694, 48, 15, 15, 14, 1, 2, 0, 8, 4, 0, 52, 77, 7, 113, 10, 92, 3, 64, 207);
INSERT INTO `loupan_public_num` VALUES (810, 252903, 22, 8, 7, 4, 0, 1, 0, 2, 2, 0, 34, 18, 2, 115, 5, 41, 1, 38, 140);
INSERT INTO `loupan_public_num` VALUES (811, 252999, 17, 7, 8, 10, 1, 2, 0, 4, 3, 0, 50, 53, 7, 107, 1, 42, 3, 57, 168);
INSERT INTO `loupan_public_num` VALUES (812, 253015, 38, 20, 15, 11, 1, 5, 0, 6, 0, 0, 51, 41, 3, 128, 15, 84, 6, 57, 187);
INSERT INTO `loupan_public_num` VALUES (813, 263923, 23, 14, 15, 15, 2, 3, 0, 68, 6, 1, 47, 67, 19, 114, 6, 67, 5, 122, 206);
INSERT INTO `loupan_public_num` VALUES (814, 297410, 22, 12, 12, 13, 2, 4, 0, 18, 3, 0, 51, 63, 11, 113, 4, 59, 6, 72, 191);
INSERT INTO `loupan_public_num` VALUES (815, 297432, 2, 2, 0, 0, 0, 0, 0, 2, 0, 0, 19, 24, 0, 8, 1, 4, 0, 21, 33);
INSERT INTO `loupan_public_num` VALUES (816, 297593, 6, 1, 1, 3, 0, 1, 0, 2, 3, 0, 25, 6, 1, 108, 2, 11, 1, 30, 117);
INSERT INTO `loupan_public_num` VALUES (817, 297856, 39, 8, 4, 62, 0, 1, 0, 2, 2, 0, 51, 61, 10, 109, 5, 113, 1, 55, 185);
INSERT INTO `loupan_public_num` VALUES (818, 383872, 3, 4, 1, 0, 0, 0, 0, 2, 0, 0, 24, 11, 0, 20, 1, 8, 0, 26, 32);
INSERT INTO `loupan_public_num` VALUES (819, 389750, 7, 1, 5, 11, 0, 2, 1, 2, 1, 0, 21, 2, 0, 68, 3, 24, 3, 24, 73);
INSERT INTO `loupan_public_num` VALUES (820, 400495, 7, 4, 2, 0, 0, 0, 0, 2, 0, 0, 29, 8, 1, 63, 3, 13, 0, 31, 75);
INSERT INTO `loupan_public_num` VALUES (821, 400554, 30, 14, 19, 8, 0, 2, 0, 4, 3, 0, 50, 69, 5, 123, 8, 71, 2, 57, 205);
INSERT INTO `loupan_public_num` VALUES (822, 400626, 12, 6, 2, 1, 0, 1, 0, 2, 0, 0, 46, 38, 2, 111, 0, 21, 1, 48, 151);
INSERT INTO `loupan_public_num` VALUES (823, 400661, 7, 4, 0, 0, 0, 2, 0, 2, 0, 0, 24, 13, 0, 29, 0, 11, 2, 26, 42);
INSERT INTO `loupan_public_num` VALUES (824, 400952, 16, 9, 4, 5, 1, 2, 0, 2, 2, 0, 51, 58, 4, 110, 4, 34, 3, 55, 176);
INSERT INTO `loupan_public_num` VALUES (825, 401208, 25, 17, 19, 32, 3, 5, 0, 70, 9, 1, 37, 73, 20, 113, 7, 93, 8, 117, 213);
INSERT INTO `loupan_public_num` VALUES (826, 406065, 29, 8, 4, 61, 0, 2, 0, 6, 1, 0, 55, 78, 7, 112, 5, 102, 2, 62, 202);
INSERT INTO `loupan_public_num` VALUES (827, 409327, 17, 3, 2, 1, 0, 0, 0, 10, 0, 1, 42, 24, 4, 95, 2, 23, 0, 53, 125);
INSERT INTO `loupan_public_num` VALUES (828, 411698, 20, 5, 3, 62, 0, 0, 0, 2, 1, 0, 46, 31, 6, 117, 3, 90, 0, 49, 157);
INSERT INTO `loupan_public_num` VALUES (829, 413864, 29, 10, 14, 32, 3, 8, 0, 3, 3, 0, 53, 73, 9, 117, 13, 85, 11, 59, 212);
INSERT INTO `loupan_public_num` VALUES (830, 413970, 12, 2, 3, 10, 0, 0, 0, 3, 0, 0, 26, 36, 2, 26, 2, 27, 0, 29, 66);
INSERT INTO `loupan_public_num` VALUES (831, 414242, 30, 8, 11, 41, 3, 7, 0, 3, 4, 0, 56, 73, 7, 122, 11, 90, 10, 63, 213);
INSERT INTO `loupan_public_num` VALUES (832, 414370, 23, 4, 9, 20, 3, 7, 0, 3, 4, 0, 54, 54, 4, 120, 10, 56, 10, 61, 188);
INSERT INTO `loupan_public_num` VALUES (833, 414468, 24, 5, 4, 1, 0, 2, 0, 3, 2, 0, 44, 39, 3, 110, 1, 34, 2, 49, 153);
INSERT INTO `loupan_public_num` VALUES (834, 414649, 15, 7, 2, 1, 0, 2, 0, 2, 2, 0, 49, 45, 2, 119, 2, 25, 2, 53, 168);
INSERT INTO `loupan_public_num` VALUES (835, 416003, 28, 14, 11, 5, 0, 2, 0, 3, 1, 0, 51, 33, 4, 122, 6, 58, 2, 55, 165);
INSERT INTO `loupan_public_num` VALUES (836, 416071, 22, 10, 5, 5, 0, 4, 0, 3, 1, 0, 43, 24, 3, 100, 13, 42, 4, 47, 140);
INSERT INTO `loupan_public_num` VALUES (837, 416905, 25, 6, 3, 61, 0, 2, 0, 2, 1, 0, 50, 66, 7, 114, 5, 95, 2, 53, 192);
INSERT INTO `loupan_public_num` VALUES (838, 416938, 12, 7, 4, 6, 0, 2, 0, 2, 2, 0, 49, 51, 2, 112, 0, 29, 2, 53, 165);
INSERT INTO `loupan_public_num` VALUES (839, 417084, 12, 2, 1, 1, 0, 1, 1, 7, 0, 0, 31, 18, 4, 91, 1, 16, 2, 38, 114);
INSERT INTO `loupan_public_num` VALUES (840, 417373, 11, 5, 2, 1, 0, 1, 0, 2, 0, 0, 42, 39, 2, 111, 0, 19, 1, 44, 152);
INSERT INTO `loupan_public_num` VALUES (841, 417491, 20, 7, 4, 5, 1, 3, 0, 4, 2, 0, 50, 56, 5, 109, 3, 36, 4, 56, 173);
INSERT INTO `loupan_public_num` VALUES (842, 417503, 0, 1, 1, 1, 0, 1, 0, 3, 0, 0, 10, 3, 0, 4, 0, 3, 1, 13, 7);
INSERT INTO `loupan_public_num` VALUES (843, 417521, 28, 6, 9, 57, 1, 3, 0, 3, 4, 0, 44, 43, 3, 124, 13, 100, 4, 51, 183);
INSERT INTO `loupan_public_num` VALUES (844, 417779, 7, 3, 2, 0, 0, 0, 0, 2, 0, 0, 26, 9, 1, 61, 3, 12, 0, 28, 74);
INSERT INTO `loupan_public_num` VALUES (845, 417788, 33, 22, 27, 45, 6, 6, 0, 69, 6, 1, 50, 63, 15, 114, 16, 127, 12, 126, 208);
INSERT INTO `loupan_public_num` VALUES (846, 417801, 7, 2, 1, 0, 0, 1, 0, 3, 0, 0, 19, 14, 0, 53, 1, 10, 1, 22, 68);
INSERT INTO `loupan_public_num` VALUES (847, 417911, 8, 2, 1, 3, 0, 1, 1, 2, 1, 0, 19, 0, 1, 10, 3, 14, 2, 22, 14);
INSERT INTO `loupan_public_num` VALUES (848, 417916, 21, 5, 0, 38, 0, 1, 1, 2, 1, 0, 41, 30, 4, 106, 1, 64, 2, 44, 141);
INSERT INTO `loupan_public_num` VALUES (849, 418391, 9, 3, 1, 3, 0, 1, 1, 2, 1, 0, 19, 2, 1, 21, 3, 16, 2, 22, 27);
INSERT INTO `loupan_public_num` VALUES (850, 420825, 13, 4, 3, 3, 0, 1, 1, 2, 1, 0, 27, 5, 2, 36, 2, 23, 2, 30, 45);
INSERT INTO `loupan_public_num` VALUES (851, 425603, 10, 5, 1, 0, 0, 3, 0, 2, 0, 0, 35, 17, 1, 90, 2, 16, 3, 37, 110);
INSERT INTO `loupan_public_num` VALUES (852, 428688, 29, 17, 19, 35, 1, 4, 2, 74, 6, 0, 51, 82, 10, 120, 6, 100, 7, 131, 218);
INSERT INTO `loupan_public_num` VALUES (853, 428718, 8, 2, 1, 3, 0, 1, 1, 2, 0, 0, 19, 0, 0, 9, 2, 14, 2, 21, 11);
INSERT INTO `loupan_public_num` VALUES (854, 428861, 35, 16, 15, 9, 3, 3, 0, 4, 0, 0, 51, 61, 7, 120, 13, 75, 6, 55, 201);
INSERT INTO `loupan_public_num` VALUES (855, 430987, 15, 6, 5, 5, 0, 3, 0, 3, 1, 0, 34, 22, 3, 96, 9, 31, 3, 38, 130);
INSERT INTO `loupan_public_num` VALUES (856, 431007, 10, 1, 1, 0, 0, 1, 1, 7, 0, 0, 30, 13, 3, 60, 1, 12, 2, 37, 77);
INSERT INTO `loupan_public_num` VALUES (857, 434009, 23, 9, 5, 8, 1, 4, 0, 4, 2, 0, 48, 58, 6, 103, 4, 45, 5, 54, 171);
INSERT INTO `loupan_public_num` VALUES (858, 435991, 37, 21, 21, 26, 2, 3, 0, 67, 4, 1, 54, 33, 13, 113, 15, 105, 5, 126, 174);
INSERT INTO `loupan_public_num` VALUES (859, 436270, 14, 6, 1, 0, 0, 3, 0, 2, 0, 0, 43, 21, 2, 107, 2, 21, 3, 45, 132);
INSERT INTO `loupan_public_num` VALUES (860, 438437, 9, 4, 2, 0, 0, 0, 0, 2, 0, 0, 32, 9, 2, 71, 3, 15, 0, 34, 85);
INSERT INTO `loupan_public_num` VALUES (861, 440493, 59, 16, 13, 40, 1, 3, 0, 9, 4, 0, 53, 75, 6, 118, 14, 128, 4, 66, 213);
INSERT INTO `loupan_public_num` VALUES (862, 444199, 14, 7, 4, 1, 0, 2, 0, 2, 2, 0, 50, 54, 2, 114, 2, 26, 2, 54, 172);
INSERT INTO `loupan_public_num` VALUES (863, 444521, 62, 15, 14, 57, 1, 3, 0, 6, 4, 0, 52, 76, 6, 118, 14, 148, 4, 62, 214);
INSERT INTO `loupan_public_num` VALUES (864, 444619, 41, 9, 6, 4, 0, 1, 0, 2, 3, 0, 47, 71, 6, 111, 5, 60, 1, 52, 193);
INSERT INTO `loupan_public_num` VALUES (865, 444683, 40, 22, 31, 34, 3, 5, 2, 53, 4, 0, 44, 99, 13, 121, 9, 127, 10, 101, 242);
INSERT INTO `loupan_public_num` VALUES (866, 446117, 16, 6, 2, 1, 0, 3, 0, 2, 1, 0, 47, 31, 2, 115, 3, 25, 3, 50, 151);
INSERT INTO `loupan_public_num` VALUES (867, 446319, 4, 1, 1, 0, 0, 0, 0, 2, 0, 0, 23, 7, 0, 20, 2, 6, 0, 25, 29);
INSERT INTO `loupan_public_num` VALUES (868, 446822, 5, 1, 1, 3, 0, 1, 0, 2, 3, 0, 26, 8, 1, 106, 3, 10, 1, 31, 118);
INSERT INTO `loupan_public_num` VALUES (869, 446866, 40, 14, 17, 14, 1, 3, 0, 8, 3, 0, 50, 67, 4, 120, 9, 85, 4, 61, 200);
INSERT INTO `loupan_public_num` VALUES (870, 446981, 7, 2, 2, 3, 0, 0, 0, 2, 0, 0, 28, 7, 0, 22, 3, 14, 0, 30, 32);
INSERT INTO `loupan_public_num` VALUES (871, 449339, 34, 18, 27, 50, 4, 10, 1, 19, 5, 0, 53, 60, 15, 117, 14, 129, 15, 77, 206);
INSERT INTO `loupan_public_num` VALUES (872, 450530, 2, 1, 1, 1, 0, 1, 1, 7, 0, 0, 26, 40, 0, 39, 1, 5, 2, 33, 80);
INSERT INTO `loupan_public_num` VALUES (873, 452894, 28, 16, 20, 32, 3, 5, 0, 69, 9, 1, 41, 72, 20, 115, 9, 96, 8, 120, 216);
INSERT INTO `loupan_public_num` VALUES (874, 453345, 35, 20, 26, 45, 6, 5, 0, 42, 3, 0, 51, 52, 11, 114, 15, 126, 11, 96, 192);
INSERT INTO `loupan_public_num` VALUES (875, 454202, 12, 1, 1, 2, 0, 1, 1, 7, 0, 0, 35, 34, 4, 86, 1, 16, 2, 42, 125);
INSERT INTO `loupan_public_num` VALUES (876, 455893, 3, 2, 1, 0, 0, 0, 0, 2, 0, 0, 18, 7, 0, 37, 0, 6, 0, 20, 44);
INSERT INTO `loupan_public_num` VALUES (877, 456171, 5, 1, 2, 0, 0, 0, 0, 2, 0, 0, 23, 9, 1, 54, 3, 8, 0, 25, 67);
INSERT INTO `loupan_public_num` VALUES (878, 456818, 25, 9, 16, 7, 0, 4, 0, 2, 2, 0, 53, 65, 4, 122, 5, 57, 4, 57, 196);
INSERT INTO `loupan_public_num` VALUES (879, 457153, 2, 1, 0, 0, 0, 1, 1, 3, 0, 0, 22, 7, 0, 20, 1, 3, 2, 25, 28);
INSERT INTO `loupan_public_num` VALUES (880, 458293, 14, 6, 4, 4, 0, 2, 0, 3, 1, 0, 34, 18, 3, 89, 9, 28, 2, 38, 119);
INSERT INTO `loupan_public_num` VALUES (881, 459483, 12, 4, 3, 1, 0, 1, 0, 2, 0, 0, 40, 27, 2, 112, 0, 20, 1, 42, 141);
INSERT INTO `loupan_public_num` VALUES (882, 459896, 3, 3, 3, 2, 0, 0, 0, 2, 1, 0, 14, 2, 0, 29, 1, 11, 0, 17, 32);
INSERT INTO `loupan_public_num` VALUES (883, 461218, 20, 10, 8, 3, 0, 2, 0, 2, 1, 0, 36, 26, 3, 121, 2, 41, 2, 39, 152);
INSERT INTO `loupan_public_num` VALUES (884, 461331, 14, 7, 2, 1, 0, 2, 0, 2, 2, 0, 49, 44, 2, 119, 2, 24, 2, 53, 167);
INSERT INTO `loupan_public_num` VALUES (885, 462626, 22, 10, 15, 24, 1, 1, 0, 69, 8, 1, 40, 77, 18, 111, 3, 71, 2, 118, 209);
INSERT INTO `loupan_public_num` VALUES (886, 462935, 17, 6, 9, 2, 0, 1, 0, 4, 2, 0, 42, 59, 1, 112, 6, 34, 1, 48, 178);
INSERT INTO `loupan_public_num` VALUES (887, 462998, 14, 1, 4, 2, 0, 3, 1, 7, 0, 0, 46, 54, 5, 84, 3, 21, 4, 53, 146);
INSERT INTO `loupan_public_num` VALUES (888, 463507, 22, 10, 12, 14, 2, 3, 0, 67, 6, 1, 49, 67, 19, 111, 3, 58, 5, 123, 200);
INSERT INTO `loupan_public_num` VALUES (889, 463585, 23, 11, 17, 3, 0, 2, 0, 2, 1, 0, 51, 67, 4, 125, 7, 54, 2, 54, 203);
INSERT INTO `loupan_public_num` VALUES (890, 463748, 44, 10, 6, 7, 1, 3, 0, 6, 3, 0, 49, 42, 8, 117, 13, 67, 4, 58, 180);
INSERT INTO `loupan_public_num` VALUES (891, 464232, 20, 11, 10, 11, 2, 4, 0, 4, 3, 0, 50, 61, 9, 107, 2, 52, 6, 57, 179);
INSERT INTO `loupan_public_num` VALUES (892, 465257, 39, 14, 16, 20, 1, 4, 0, 38, 6, 0, 52, 58, 4, 118, 9, 89, 5, 96, 189);
INSERT INTO `loupan_public_num` VALUES (893, 465536, 39, 14, 16, 20, 1, 4, 0, 38, 6, 0, 52, 58, 4, 118, 9, 89, 5, 96, 189);
INSERT INTO `loupan_public_num` VALUES (894, 465626, 25, 8, 4, 1, 0, 2, 0, 2, 2, 0, 41, 42, 3, 112, 0, 38, 2, 45, 157);
INSERT INTO `loupan_public_num` VALUES (895, 465640, 29, 9, 13, 3, 0, 2, 0, 2, 4, 0, 52, 71, 3, 108, 9, 54, 2, 58, 191);
INSERT INTO `loupan_public_num` VALUES (896, 466718, 14, 7, 9, 1, 0, 0, 0, 4, 1, 0, 43, 20, 2, 112, 5, 31, 0, 48, 139);
INSERT INTO `loupan_public_num` VALUES (897, 466812, 9, 3, 6, 1, 0, 0, 0, 4, 0, 0, 28, 5, 0, 62, 2, 19, 0, 32, 69);
INSERT INTO `loupan_public_num` VALUES (898, 467288, 0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 20, 6, 0, 16, 1, 1, 0, 22, 23);
INSERT INTO `loupan_public_num` VALUES (899, 467456, 35, 25, 30, 57, 0, 6, 3, 46, 3, 0, 44, 96, 17, 121, 10, 147, 9, 93, 244);
INSERT INTO `loupan_public_num` VALUES (900, 468505, 2, 1, 1, 1, 0, 1, 1, 7, 0, 0, 25, 40, 0, 39, 1, 5, 2, 32, 80);
INSERT INTO `loupan_public_num` VALUES (901, 469423, 39, 10, 5, 3, 0, 2, 0, 2, 2, 0, 45, 68, 6, 116, 5, 57, 2, 49, 195);
INSERT INTO `loupan_public_num` VALUES (902, 470584, 6, 1, 5, 11, 0, 2, 1, 2, 1, 0, 20, 2, 0, 66, 3, 23, 3, 23, 71);
INSERT INTO `loupan_public_num` VALUES (903, 470787, 36, 17, 22, 45, 5, 9, 2, 9, 3, 0, 52, 77, 15, 131, 16, 120, 16, 64, 239);
INSERT INTO `loupan_public_num` VALUES (904, 471625, 26, 5, 2, 0, 0, 1, 0, 4, 1, 0, 39, 17, 4, 112, 1, 33, 1, 44, 134);
INSERT INTO `loupan_public_num` VALUES (905, 472112, 0, 1, 0, 1, 0, 0, 0, 3, 0, 0, 6, 1, 0, 32, 0, 2, 0, 9, 33);
INSERT INTO `loupan_public_num` VALUES (906, 473022, 33, 19, 14, 12, 2, 2, 0, 6, 1, 0, 52, 64, 11, 109, 11, 78, 4, 59, 195);
INSERT INTO `loupan_public_num` VALUES (907, 474256, 12, 7, 4, 4, 1, 2, 0, 2, 2, 0, 47, 54, 3, 111, 0, 27, 3, 51, 168);
INSERT INTO `loupan_public_num` VALUES (908, 474294, 0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 15, 2, 0, 7, 0, 1, 0, 17, 9);
INSERT INTO `loupan_public_num` VALUES (909, 474608, 29, 8, 4, 61, 0, 2, 0, 6, 1, 0, 55, 78, 7, 112, 5, 102, 2, 62, 202);
INSERT INTO `loupan_public_num` VALUES (910, 479629, 26, 14, 10, 5, 0, 2, 0, 2, 1, 0, 47, 33, 4, 123, 6, 55, 2, 50, 166);
INSERT INTO `loupan_public_num` VALUES (911, 479637, 29, 15, 11, 5, 1, 1, 0, 3, 1, 0, 47, 34, 3, 124, 5, 60, 2, 51, 166);
INSERT INTO `loupan_public_num` VALUES (912, 480896, 24, 7, 12, 3, 0, 2, 0, 4, 4, 0, 49, 64, 3, 112, 9, 46, 2, 57, 188);
INSERT INTO `loupan_public_num` VALUES (913, 481297, 8, 5, 2, 0, 0, 1, 0, 3, 1, 0, 30, 31, 1, 106, 0, 15, 1, 34, 138);
INSERT INTO `loupan_public_num` VALUES (914, 481414, 10, 1, 3, 20, 0, 0, 0, 2, 0, 0, 24, 33, 1, 25, 3, 34, 0, 26, 62);
INSERT INTO `loupan_public_num` VALUES (915, 481537, 15, 7, 2, 1, 0, 3, 0, 2, 2, 0, 47, 42, 2, 117, 2, 25, 3, 51, 163);
INSERT INTO `loupan_public_num` VALUES (916, 485626, 51, 24, 25, 49, 1, 6, 3, 42, 6, 0, 47, 83, 16, 121, 9, 149, 10, 95, 229);
INSERT INTO `loupan_public_num` VALUES (917, 486088, 28, 8, 11, 52, 1, 2, 0, 2, 3, 0, 45, 52, 1, 123, 8, 99, 3, 50, 184);
INSERT INTO `loupan_public_num` VALUES (918, 486720, 8, 3, 1, 3, 0, 1, 1, 2, 1, 0, 18, 1, 1, 14, 3, 15, 2, 21, 19);

-- ----------------------------
-- Table structure for public_type
-- ----------------------------
DROP TABLE IF EXISTS `public_type`;
CREATE TABLE `public_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `public_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of public_type
-- ----------------------------
INSERT INTO `public_type` VALUES (1, '学校');

-- ----------------------------
-- Table structure for region_house_price
-- ----------------------------
DROP TABLE IF EXISTS `region_house_price`;
CREATE TABLE `region_house_price`  (
  `id` int(0) NOT NULL,
  `region_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `y1` int(0) NOT NULL,
  `y2` int(0) NOT NULL,
  `y3` int(0) NOT NULL,
  `y4` int(0) NOT NULL,
  `y5` int(0) NOT NULL,
  `y6` int(0) NOT NULL,
  `y7` int(0) NOT NULL,
  `y8` int(0) NOT NULL,
  `y9` int(0) NOT NULL,
  `y10` int(0) NOT NULL,
  `y11` int(0) NOT NULL,
  `y12` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of region_house_price
-- ----------------------------
INSERT INTO `region_house_price` VALUES (0, '甘井子', 16557, 16455, 16475, 16460, 16675, 16948, 16816, 16920, 17037, 17117, 17288, 18423);
INSERT INTO `region_house_price` VALUES (1, '中山', 20013, 19727, 19637, 19367, 19473, 19923, 19938, 20077, 20305, 20001, 19925, 19456);
INSERT INTO `region_house_price` VALUES (2, '沙河口', 18155, 18262, 18118, 18175, 17994, 18165, 18303, 18195, 18457, 18307, 18441, 19990);
INSERT INTO `region_house_price` VALUES (3, '西岗', 16542, 16467, 16302, 16368, 16664, 17445, 17094, 16931, 17178, 16503, 16355, 17430);

-- ----------------------------
-- Table structure for region_public
-- ----------------------------
DROP TABLE IF EXISTS `region_public`;
CREATE TABLE `region_public`  (
  `id` int(0) NOT NULL,
  `region_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_num` int(0) NOT NULL,
  `hospital_num` int(0) NOT NULL,
  `government_num` int(0) NOT NULL,
  `shopping_mall_num` int(0) NOT NULL,
  `station_num` int(0) NOT NULL,
  `baidu_lat` float NULL DEFAULT NULL,
  `baidu_lng` float NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公共设施数量' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of region_public
-- ----------------------------
INSERT INTO `region_public` VALUES (0, '中山', 90, 53, 132, 32, 2, 38.9243, 121.652);
INSERT INTO `region_public` VALUES (1, '西岗', 68, 59, 121, 14, 3, 38.9331, 121.64);
INSERT INTO `region_public` VALUES (2, '沙河口', 65, 92, 122, 22, 1, 38.9182, 121.605);
INSERT INTO `region_public` VALUES (3, '甘井子', 91, 96, 129, 31, 3, 38.9585, 121.532);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `signature` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `min_age` int(0) NOT NULL,
  `max_age` int(0) NOT NULL,
  `min_estate` int(0) NOT NULL,
  `max_estate` int(0) NOT NULL,
  `phone_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `register_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `education_background` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_type` int(0) NOT NULL DEFAULT 0,
  `is_house` int(0) NULL DEFAULT 0,
  `is_car` int(0) NULL DEFAULT 0,
  `is_money` int(0) NULL DEFAULT 0,
  `is_marry` int(0) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '注册用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, 'root', 'root', '生活就像海洋，只有意志坚强的人才能到达彼岸。', 30, 40, 30, 40, '13500000001', '2023-06-06', '博士', 0, 1, 1, 1, 1);
INSERT INTO `user` VALUES (3, 'admin', 'admin', '生活就像海洋，只有意志坚强的人才能到达彼岸。', 30, 40, 30, 40, '13500000002', '2023-06-06', '博士', 1, 1, 1, 0, 0);
INSERT INTO `user` VALUES (4, 'root1', 'root1', '生活就像海洋，只有意志坚强的人才能到达彼岸。', 20, 30, 20, 30, '13500000003', '2023-06-06', '高中', 0, 1, 1, 1, 1);
INSERT INTO `user` VALUES (6, 'test', 'test', '生活就像海洋，只有意志坚强的人才能到达彼岸。', 20, 30, 20, 30, '13500000004', '2023-06-06', '大学', 0, 1, 1, 1, 0);
INSERT INTO `user` VALUES (7, 'test1', 'test2', '生活就像海洋，只有意志坚强的人才能到达彼岸。', 33, 54, 15, 19, '13500000005', '2023-06-06', '大学', 0, 1, 1, 1, 1);
INSERT INTO `user` VALUES (8, 'test1234', 'test1234', '生活就像海洋，只有意志坚强的人才能到达彼岸。', 30, 40, 50, 100, '13800000000', '2023-06-06', '硕士', 0, 1, 1, 1, 1);
INSERT INTO `user` VALUES (9, 'admins', 'admins', '生活就像海洋，只有意志坚强的人才能到达彼岸。', 30, 40, 50, 100, '13800000000', '2023-06-06', '硕士', 1, 1, 1, 1, 1);

-- ----------------------------
-- Table structure for user_actions
-- ----------------------------
DROP TABLE IF EXISTS `user_actions`;
CREATE TABLE `user_actions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `click_num` int(0) NOT NULL DEFAULT 0,
  `search_num` int(0) NOT NULL DEFAULT 0,
  `collection_num` int(0) NOT NULL DEFAULT 0,
  `loupan_id_id` int(0) NOT NULL,
  `user_id_id` int(0) NOT NULL,
  `comment_num` int(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_actions_loupan_id_id_ad81fc86_fk_loupan_id`(`loupan_id_id`) USING BTREE,
  INDEX `user_actions_user_id_id_5a3af1de_fk_user_id`(`user_id_id`) USING BTREE,
  CONSTRAINT `user_actions_loupan_id_id_ad81fc86_fk_loupan_id` FOREIGN KEY (`loupan_id_id`) REFERENCES `loupan` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_actions_user_id_id_5a3af1de_fk_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户行为表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_actions
-- ----------------------------
INSERT INTO `user_actions` VALUES (1, 26, 30, 20, 243435, 2, 2);
INSERT INTO `user_actions` VALUES (2, 12, 2, 22, 243446, 2, 0);
INSERT INTO `user_actions` VALUES (3, 12, 4, 20, 243447, 2, 0);
INSERT INTO `user_actions` VALUES (4, 11, 2, 20, 243460, 2, 0);
INSERT INTO `user_actions` VALUES (5, 12, 4, 20, 243466, 2, 0);
INSERT INTO `user_actions` VALUES (6, 13, 6, 20, 243493, 2, 0);
INSERT INTO `user_actions` VALUES (7, 11, 2, 20, 243521, 2, 0);
INSERT INTO `user_actions` VALUES (8, 11, 2, 20, 243551, 2, 0);
INSERT INTO `user_actions` VALUES (9, 11, 2, 20, 243567, 2, 0);
INSERT INTO `user_actions` VALUES (10, 11, 2, 20, 243572, 2, 0);
INSERT INTO `user_actions` VALUES (11, 11, 2, 20, 243576, 2, 0);
INSERT INTO `user_actions` VALUES (12, 11, 2, 20, 243580, 2, 0);
INSERT INTO `user_actions` VALUES (13, 11, 2, 20, 243584, 2, 0);
INSERT INTO `user_actions` VALUES (14, 11, 2, 20, 243608, 2, 0);
INSERT INTO `user_actions` VALUES (15, 12, 4, 20, 243611, 2, 0);
INSERT INTO `user_actions` VALUES (16, 13, 4, 22, 243615, 2, 0);
INSERT INTO `user_actions` VALUES (17, 14, 8, 20, 243622, 2, 0);
INSERT INTO `user_actions` VALUES (18, 11, 2, 20, 243650, 2, 0);
INSERT INTO `user_actions` VALUES (19, 11, 2, 20, 243679, 2, 0);
INSERT INTO `user_actions` VALUES (20, 12, 4, 20, 243690, 2, 0);
INSERT INTO `user_actions` VALUES (21, 11, 2, 20, 243691, 2, 0);
INSERT INTO `user_actions` VALUES (22, 11, 2, 20, 243750, 2, 0);
INSERT INTO `user_actions` VALUES (23, 11, 2, 20, 243751, 2, 0);
INSERT INTO `user_actions` VALUES (24, 11, 2, 20, 244666, 2, 0);
INSERT INTO `user_actions` VALUES (25, 11, 2, 20, 246358, 2, 0);
INSERT INTO `user_actions` VALUES (26, 11, 2, 20, 248142, 2, 0);
INSERT INTO `user_actions` VALUES (27, 11, 2, 20, 249845, 2, 0);
INSERT INTO `user_actions` VALUES (28, 11, 2, 20, 249846, 2, 0);
INSERT INTO `user_actions` VALUES (29, 11, 2, 20, 249959, 2, 0);
INSERT INTO `user_actions` VALUES (30, 12, 4, 20, 250384, 2, 0);
INSERT INTO `user_actions` VALUES (31, 11, 2, 20, 250907, 2, 0);
INSERT INTO `user_actions` VALUES (32, 11, 2, 20, 251726, 2, 0);
INSERT INTO `user_actions` VALUES (33, 11, 2, 20, 251926, 2, 0);
INSERT INTO `user_actions` VALUES (34, 11, 2, 20, 252556, 2, 0);
INSERT INTO `user_actions` VALUES (35, 11, 2, 20, 263923, 2, 0);
INSERT INTO `user_actions` VALUES (36, 12, 2, 22, 417503, 2, 0);
INSERT INTO `user_actions` VALUES (37, 11, 2, 20, 435991, 2, 0);
INSERT INTO `user_actions` VALUES (38, 12, 4, 20, 444683, 2, 0);
INSERT INTO `user_actions` VALUES (39, 11, 2, 20, 449339, 2, 0);
INSERT INTO `user_actions` VALUES (40, 11, 2, 20, 450530, 2, 0);
INSERT INTO `user_actions` VALUES (41, 14, 8, 20, 452894, 2, 0);
INSERT INTO `user_actions` VALUES (42, 12, 4, 20, 453345, 2, 0);
INSERT INTO `user_actions` VALUES (43, 11, 2, 20, 462626, 2, 0);
INSERT INTO `user_actions` VALUES (44, 11, 2, 20, 465257, 2, 0);
INSERT INTO `user_actions` VALUES (45, 11, 2, 20, 467456, 2, 0);
INSERT INTO `user_actions` VALUES (46, 12, 4, 20, 468505, 2, 0);
INSERT INTO `user_actions` VALUES (47, 4, 4, 2, 243435, 4, 2);
INSERT INTO `user_actions` VALUES (48, 1, 2, 0, 243446, 4, 0);
INSERT INTO `user_actions` VALUES (49, 1, 0, 2, 243608, 4, 0);
INSERT INTO `user_actions` VALUES (50, 2, 2, 2, 243611, 4, 0);
INSERT INTO `user_actions` VALUES (51, 13, 6, 20, 243665, 2, 0);
INSERT INTO `user_actions` VALUES (52, 13, 6, 20, 245562, 2, 0);
INSERT INTO `user_actions` VALUES (53, 12, 4, 20, 251925, 2, 0);
INSERT INTO `user_actions` VALUES (54, 11, 2, 20, 463507, 2, 0);
INSERT INTO `user_actions` VALUES (55, 12, 4, 20, 243437, 2, 0);
INSERT INTO `user_actions` VALUES (56, 10, 0, 20, 243442, 2, 0);
INSERT INTO `user_actions` VALUES (57, 13, 6, 16, 243535, 2, 4);
INSERT INTO `user_actions` VALUES (58, 7, 6, 8, 243444, 2, 0);
INSERT INTO `user_actions` VALUES (59, 5, 4, 4, 243453, 7, 2);
INSERT INTO `user_actions` VALUES (60, 5, 6, 2, 243447, 7, 2);
INSERT INTO `user_actions` VALUES (61, 3, 4, 2, 243466, 7, 0);
INSERT INTO `user_actions` VALUES (62, 2, 2, 2, 243615, 7, 0);
INSERT INTO `user_actions` VALUES (63, 3, 4, 2, 243622, 7, 0);
INSERT INTO `user_actions` VALUES (64, 2, 2, 2, 243690, 7, 0);
INSERT INTO `user_actions` VALUES (65, 3, 4, 2, 243751, 7, 0);
INSERT INTO `user_actions` VALUES (66, 2, 2, 2, 249959, 7, 0);
INSERT INTO `user_actions` VALUES (67, 3, 4, 2, 250384, 7, 0);
INSERT INTO `user_actions` VALUES (68, 7, 8, 4, 243442, 7, 2);
INSERT INTO `user_actions` VALUES (69, 2, 2, 2, 243567, 7, 0);
INSERT INTO `user_actions` VALUES (70, 2, 2, 2, 243691, 7, 0);
INSERT INTO `user_actions` VALUES (71, 2, 2, 2, 243736, 7, 0);
INSERT INTO `user_actions` VALUES (72, 2, 2, 2, 245562, 7, 0);
INSERT INTO `user_actions` VALUES (73, 2, 2, 2, 246358, 7, 0);
INSERT INTO `user_actions` VALUES (74, 2, 2, 2, 248142, 7, 0);
INSERT INTO `user_actions` VALUES (75, 2, 2, 2, 250896, 7, 0);
INSERT INTO `user_actions` VALUES (76, 2, 2, 2, 251925, 7, 0);
INSERT INTO `user_actions` VALUES (77, 2, 2, 2, 263923, 7, 0);
INSERT INTO `user_actions` VALUES (78, 2, 2, 2, 444683, 7, 0);
INSERT INTO `user_actions` VALUES (79, 2, 2, 2, 452894, 7, 0);
INSERT INTO `user_actions` VALUES (80, 2, 2, 2, 462626, 7, 0);
INSERT INTO `user_actions` VALUES (81, 2, 2, 2, 463507, 7, 0);
INSERT INTO `user_actions` VALUES (82, 2, 2, 2, 468505, 7, 0);
INSERT INTO `user_actions` VALUES (83, 3, 2, 4, 243435, 7, 0);
INSERT INTO `user_actions` VALUES (84, 1, 0, 2, 243437, 7, 0);
INSERT INTO `user_actions` VALUES (85, 1, 0, 2, 243444, 7, 0);
INSERT INTO `user_actions` VALUES (86, 1, 0, 2, 243446, 7, 0);
INSERT INTO `user_actions` VALUES (87, 2, 2, 2, 243460, 7, 0);
INSERT INTO `user_actions` VALUES (88, 2, 0, 4, 243493, 7, 0);
INSERT INTO `user_actions` VALUES (89, 1, 0, 2, 243521, 7, 0);
INSERT INTO `user_actions` VALUES (90, 1, 0, 2, 243535, 7, 0);
INSERT INTO `user_actions` VALUES (91, 1, 0, 2, 243551, 7, 0);
INSERT INTO `user_actions` VALUES (92, 1, 0, 2, 243572, 7, 0);
INSERT INTO `user_actions` VALUES (93, 1, 0, 2, 243576, 7, 0);
INSERT INTO `user_actions` VALUES (94, 1, 0, 2, 243580, 7, 0);
INSERT INTO `user_actions` VALUES (95, 1, 0, 2, 243584, 7, 0);
INSERT INTO `user_actions` VALUES (96, 1, 0, 2, 243608, 7, 0);
INSERT INTO `user_actions` VALUES (97, 1, 0, 2, 243611, 7, 0);
INSERT INTO `user_actions` VALUES (98, 1, 0, 2, 243650, 7, 0);
INSERT INTO `user_actions` VALUES (99, 1, 0, 2, 243665, 7, 0);
INSERT INTO `user_actions` VALUES (100, 1, 0, 2, 243679, 7, 0);
INSERT INTO `user_actions` VALUES (101, 1, 0, 2, 243750, 7, 0);
INSERT INTO `user_actions` VALUES (102, 1, 0, 2, 244666, 7, 0);
INSERT INTO `user_actions` VALUES (103, 1, 0, 2, 249845, 7, 0);
INSERT INTO `user_actions` VALUES (104, 1, 0, 2, 249846, 7, 0);
INSERT INTO `user_actions` VALUES (105, 1, 0, 2, 250907, 7, 0);
INSERT INTO `user_actions` VALUES (106, 1, 0, 2, 251726, 7, 0);
INSERT INTO `user_actions` VALUES (107, 1, 0, 2, 251926, 7, 0);
INSERT INTO `user_actions` VALUES (108, 1, 0, 2, 252556, 7, 0);
INSERT INTO `user_actions` VALUES (109, 1, 0, 2, 417503, 7, 0);
INSERT INTO `user_actions` VALUES (110, 1, 0, 2, 435991, 7, 0);
INSERT INTO `user_actions` VALUES (111, 1, 0, 2, 449339, 7, 0);
INSERT INTO `user_actions` VALUES (112, 1, 0, 2, 450530, 7, 0);
INSERT INTO `user_actions` VALUES (113, 1, 0, 2, 453345, 7, 0);
INSERT INTO `user_actions` VALUES (114, 1, 0, 2, 465257, 7, 0);
INSERT INTO `user_actions` VALUES (115, 1, 0, 2, 467456, 7, 0);
INSERT INTO `user_actions` VALUES (116, 1, 2, 0, 243437, 6, 0);
INSERT INTO `user_actions` VALUES (117, 3, 4, 2, 243441, 6, 0);
INSERT INTO `user_actions` VALUES (118, 2, 2, 2, 243444, 6, 0);
INSERT INTO `user_actions` VALUES (119, 7, 12, 2, 243435, 6, 0);
INSERT INTO `user_actions` VALUES (120, 3, 6, 0, 243473, 6, 0);
INSERT INTO `user_actions` VALUES (121, 1, 2, 0, 243622, 6, 0);
INSERT INTO `user_actions` VALUES (122, 1, 2, 0, 243453, 6, 0);
INSERT INTO `user_actions` VALUES (123, 5, 10, 0, 243447, 6, 0);
INSERT INTO `user_actions` VALUES (124, 6, 4, 8, 243441, 2, 0);
INSERT INTO `user_actions` VALUES (125, 4, 0, 8, 243453, 2, 0);
INSERT INTO `user_actions` VALUES (126, 4, 0, 8, 243473, 2, 0);
INSERT INTO `user_actions` VALUES (127, 4, 0, 8, 243736, 2, 0);
INSERT INTO `user_actions` VALUES (128, 4, 0, 8, 250896, 2, 0);
INSERT INTO `user_actions` VALUES (129, 3, 2, 4, 243539, 2, 0);
INSERT INTO `user_actions` VALUES (130, 3, 2, 4, 243706, 2, 0);
INSERT INTO `user_actions` VALUES (131, 2, 2, 2, 243536, 2, 0);
INSERT INTO `user_actions` VALUES (132, 1, 0, 2, 243435, 8, 0);
INSERT INTO `user_actions` VALUES (133, 1, 0, 2, 243444, 8, 0);
INSERT INTO `user_actions` VALUES (134, 1, 0, 2, 243437, 8, 0);
INSERT INTO `user_actions` VALUES (135, 2, 0, 4, 243526, 2, 0);
INSERT INTO `user_actions` VALUES (136, 2, 0, 4, 243516, 2, 0);

SET FOREIGN_KEY_CHECKS = 1;
