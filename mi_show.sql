/*
Navicat MySQL Data Transfer

Source Server         : 阿里云主机
Source Server Version : 50722
Source Host           : putop.top:3306
Source Database       : mi_show

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-10-14 21:08:31
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `mi_message`
-- ----------------------------
DROP TABLE IF EXISTS `mi_message`;
CREATE TABLE `mi_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mi_name` varchar(255) NOT NULL COMMENT '域名名称',
  `mi_des` varchar(255) DEFAULT NULL COMMENT '域名描述',
  `mi_url` varchar(255) DEFAULT NULL COMMENT '域名购买链接',
  `mi_type` varchar(255) DEFAULT NULL COMMENT '域名类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mi_message
-- ----------------------------
INSERT INTO `mi_message` VALUES ('1', '52sou', '【我要搜】【52sou】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.1.53692d19lxTt84&domainName=52sou.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('2', 'dogge', '【道格】【dogge】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.5.53692d19lxTt84&domainName=dogge.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('3', 'tiaoq', '【调情】【调气】【tiaoq】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.9.53692d19lxTt84&domainName=tiaoq.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('4', 'wowh', '【喔哈】【wowh】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.13.53692d19lxTt84&domainName=wowh.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('5', 'zhizhanga', '【智障啊】【纸张啊】【zhizhanga】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.17.53692d19lxTt84&domainName=zhizhanga.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('6', 'pigge', '【皮革】【皮格格】【pigge】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.21.53692d19lxTt84&domainName=pigge.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('7', 'woawo', '【我爱我】【woawo】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.25.53692d19lxTt84&domainName=woawo.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('8', 'aiwoa', '【爱我啊】【aiwoa】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.29.53692d19lxTt84&domainName=aiwoa.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('9', 'wolove', '【我爱】【wolove】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.33.53692d19lxTt84&domainName=wolove.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('10', 'wowsao', '【我骚】【喔嫂】【wowsao】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.37.53692d19lxTt84&domainName=wowsao.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('11', 'woaa', '【我啊啊】【哇啊】【woaa】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.41.53692d19lxTt84&domainName=woaa.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('12', '52xiu', '【我要秀】【我要修】【52xiu】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.45.53692d19lxTt84&domainName=52xiu.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('13', 'aiotlove', '【爱智联】AI(人工智能)+IOT(物联网)+love(爱)', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.49.53692d19lxTt84&domainName=aiotlove.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('15', 'tianq', '【天气】【添趣】【tianq】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.57.53692d19lxTt84&domainName=tianq.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('16', 'pygame', '【朋友游戏网】【pygame】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.61.53692d19lxTt84&domainName=pygame.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('17', 'woaow', '【喔啊喔】【woaow】对称完美域名', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.65.53692d19lxTt84&domainName=woaow.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('18', 'shabia', '【傻比啊】【啥表】【shabia】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.69.53692d19lxTt84&domainName=shabia.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('19', 'banbe', '【坂本】【半本】【banbe】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.73.53692d19lxTt84&domainName=banbe.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('20', 'aiotlife', '【智联生活】AI(人工智能)+IOT(物联网)+life(生活)', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.77.53692d19lxTt84&domainName=aiotlife.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('21', 'wowao', '【我哇】【wowao】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.81.53692d19lxTt84&domainName=wowao.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('22', 'woaiwo', '【我爱我】【woaiwo】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.85.53692d19lxTt84&domainName=woaiwo.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('23', 'niido', '【你ID哦】【腻嘟】niido', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.89.53692d19lxTt84&domainName=niido.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('24', 'bookroom', '【书屋】【bookroom】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.93.53692d19lxTt84&domainName=bookroom.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('25', '52cao', '【我要cao】野蛮 粗鲁 特殊域名', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.97.53692d19lxTt84&domainName=52cao.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('26', 'epxy', '【恶牌嬉游】epxy', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.101.53692d19lxTt84&domainName=epxy.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('27', 'aiotcar', '【智联汽车】AI(人工智能)+IOT(物联网)+car(车)', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.105.53692d19lxTt84&domainName=aiotcar.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('28', '52gan', '【我要gan】野蛮 粗鲁 有含义的域名', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.109.53692d19lxTt84&domainName=52gan.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('29', 'killme', '【killme】带有挑衅意味 十分霸道的气息', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.113.53692d19lxTt84&domainName=killme.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('30', '51yw', '【我要游玩网】英文、义乌、燕窝、原物、耀威', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.117.53692d19lxTt84&domainName=51yw.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('31', 'iotman', '【物联人】IOT(物联网)+man(人)', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.121.53692d19lxTt84&domainName=iotman.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('32', 'alister', '【艾利斯特】alister', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.125.53692d19lxTt84&domainName=alister.xyz&orgType=undefined&productType=2', 'xyz');
INSERT INTO `mi_message` VALUES ('33', 'wahah', '【挖哈哈】【哇哈】【wahah】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.129.53692d19lxTt84&domainName=wahah.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('34', 'aiotlive', '【智联生活】AI(人工智能)+IOT(物联网)+live(生活)', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.133.53692d19lxTt84&domainName=aiotlive.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('35', 'bianai', '【变矮】【比安爱】【边爱】【bianai】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.137.53692d19lxTt84&domainName=bianai.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('36', '51jr', '【我要肌肉网】节日、嫁人、鸡肉、酱肉、救人', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.141.53692d19lxTt84&domainName=51jr.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('37', 'lovecp', '【cp爱】lovecp', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.145.53692d19lxTt84&domainName=lovecp.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('38', '51qk', '【我要请客网】期刊、清空、秋裤、弃坑、裙裤', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.149.53692d19lxTt84&domainName=51qk.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('39', 'pigee', '【皮戈】【pigee】好记', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.153.53692d19lxTt84&domainName=pigee.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('40', '51pd', '【我要派单网】评定、皮带、佩戴、配电、派对', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.157.53692d19lxTt84&domainName=51pd.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('41', '51xq', '【我要相亲网】需求、心情、小区、消遣、小钱', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.161.53692d19lxTt84&domainName=51xq.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('42', 'aixiuxi', '【爱休息】【爱秀嘻】休闲嘻哈域名', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.165.53692d19lxTt84&domainName=aixiuxi.xyz&orgType=undefined&productType=2', 'xyz');
INSERT INTO `mi_message` VALUES ('43', '51rq', '【我要认亲网】燃气、人气、肉禽、人妻、认钱', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.169.53692d19lxTt84&domainName=51rq.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('44', '51xk', '【我要显卡网】星空、相框、选课、 西裤、虾壳', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.173.53692d19lxTt84&domainName=51xk.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('45', 'yibazi', '【一把子】【亿巴子】【yibazi】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.177.53692d19lxTt84&domainName=yibazi.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('46', 'ainia', '【爱你啊】【ainia】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.181.53692d19lxTt84&domainName=ainia.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('47', 'xiansuojia', '【线索夹】【闲唆＋】【xiansuojia】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.185.53692d19lxTt84&domainName=xiansuojia.xyz&orgType=undefined&productType=2', 'xyz');
INSERT INTO `mi_message` VALUES ('48', 'wowwow', '【喔喔】【wowwow】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.189.53692d19lxTt84&domainName=wowwow.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('49', 'hatdog', '【帽子狗】好记 有意思', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.193.53692d19lxTt84&domainName=hatdog.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('50', 'zhooo', '【zhooo】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.197.53692d19lxTt84&domainName=zhooo.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('51', 'wohoo', '【wohoo】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.202.53692d19lxTt84&domainName=wohoo.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('52', 'xiaobadan', '【小八蛋】xiaobadan', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.206.53692d19lxTt84&domainName=xiaobadan.cn&orgType=undefined&productType=2', 'cn');
INSERT INTO `mi_message` VALUES ('53', 'xihuyuan', '【西湖苑】xihuyuan', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.210.53692d19lxTt84&domainName=xihuyuan.cn&orgType=undefined&productType=2', 'cn');
INSERT INTO `mi_message` VALUES ('54', 'xiaobazi', '【小八子】【校把子】【笑八子】xiaobazi', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.214.53692d19lxTt84&domainName=xiaobazi.cn&orgType=undefined&productType=2', 'cn');
INSERT INTO `mi_message` VALUES ('55', 'aobiu', '【澳币】【凹壁】aobiu', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.218.53692d19lxTt84&domainName=aobiu.cn&orgType=undefined&productType=2', 'cn');
INSERT INTO `mi_message` VALUES ('56', '158062', '【158062】纯数字溢价域名', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.222.53692d19lxTt84&domainName=158062.xyz&orgType=undefined&productType=2', 'xyz');
INSERT INTO `mi_message` VALUES ('57', 'ainia', '【爱你啊】【ainia】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.230.53692d19lxTt84&domainName=ainia.xyz&orgType=undefined&productType=2', 'xyz');
INSERT INTO `mi_message` VALUES ('58', 'oragee', '【桔子】【oragee】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.234.53692d19lxTt84&domainName=oragee.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('59', '857525', '【抱我亲我爱我】【857525】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.238.53692d19lxTt84&domainName=857525.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('60', 'sakua', '【洒夸】【撒库阿】【sakua】好记好听', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.242.53692d19lxTt84&domainName=sakua.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('62', 'zamai', '【咋卖】【zamai】', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.427.537d2d19lRFYO8&domainName=zamai.xyz&orgType=undefined&productType=2', 'xyz');
INSERT INTO `mi_message` VALUES ('63', 'xinkee', '【新科】【新客】xinkee', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.1.44972d19aQkiRr&domainName=xinkee.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('64', 'weiyunyun', '【微云云】weiyunyun', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.6.44972d19aQkiRr&domainName=weiyunyun.cn&orgType=undefined&productType=2', 'cn');
INSERT INTO `mi_message` VALUES ('65', 'wenwanzhai', '【文玩斋】wenwanzhai', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.11.44972d19aQkiRr&domainName=wenwanzhai.cn&orgType=undefined&productType=2', 'cn');
INSERT INTO `mi_message` VALUES ('66', 'xiaolu520', '【小璐我爱你】小露', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.16.44972d19aQkiRr&domainName=xiaolu520.top&orgType=undefined&productType=2', 'top');
INSERT INTO `mi_message` VALUES ('67', 'yingpubao', '【英普包】yingpubao', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.21.44972d19aQkiRr&domainName=yingpubao.xyz&orgType=undefined&productType=2', 'xyz');
INSERT INTO `mi_message` VALUES ('68', 'mishangai', '【迷上爱】【密山盖】mishangai', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.26.44972d19aQkiRr&domainName=mishangai.xyz&orgType=undefined&productType=2', 'xyz');
INSERT INTO `mi_message` VALUES ('69', 'weixiaoti', '【微小体】【微笑体】weixiaoti', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.31.44972d19aQkiRr&domainName=weixiaoti.xyz&orgType=undefined&productType=2', 'xyz');
INSERT INTO `mi_message` VALUES ('70', 'feelcf', '【穿越火线感受网】feelCF', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.38.4cc82d19BZs5p9&domainName=feelcf.xyz&orgType=undefined&productType=2', 'xyz');
INSERT INTO `mi_message` VALUES ('71', 'puretk', '【纯净天空】pure天空', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.43.4cc82d19BZs5p9&domainName=puretk.xyz&orgType=undefined&productType=2', 'xyz');
INSERT INTO `mi_message` VALUES ('72', 'toolszy', '【职业工具网】资源、主营、制药', 'https://mi.aliyun.com/detail/online.html?spm=5176.8105420.1024.48.4cc82d19BZs5p9&domainName=toolszy.xyz&orgType=undefined&productType=2', 'xyz');

-- ----------------------------
-- Table structure for `vedio_message`
-- ----------------------------
DROP TABLE IF EXISTS `vedio_message`;
CREATE TABLE `vedio_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vedio_name` varchar(255) DEFAULT NULL COMMENT '视频名称',
  `vedio_img_url` varchar(255) DEFAULT NULL COMMENT '视频封面路径',
  `vedio_type` varchar(255) DEFAULT NULL COMMENT '视频分类(电影：1，电视剧：2)',
  `vedio_url` varchar(255) DEFAULT NULL COMMENT '视频路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vedio_message
-- ----------------------------
INSERT INTO `vedio_message` VALUES ('9', '泰坦尼克号(小李子)', null, '1', 'ttnkh/ttnkh.mp4');
INSERT INTO `vedio_message` VALUES ('10', '霸王别姬(张国荣)', null, '1', 'bwbj/bwbj.mp4');
INSERT INTO `vedio_message` VALUES ('12', '被解救的姜戈', null, '1', 'jg/jg.mp4');
INSERT INTO `vedio_message` VALUES ('13', '血钻', null, '1', 'xz/xz.mp4');
INSERT INTO `vedio_message` VALUES ('14', '肖生克的救赎', null, '1', 'ssk/ssk.mp4');
INSERT INTO `vedio_message` VALUES ('15', '阿甘正传', null, '1', 'agzz/agzz.mp4');
INSERT INTO `vedio_message` VALUES ('16', '比得兔', null, '1', 'bdt/bdt.mp4');
INSERT INTO `vedio_message` VALUES ('17', '当幸福来敲门', null, '1', 'dxflqm/dxflqm.mp4');
INSERT INTO `vedio_message` VALUES ('18', '盗梦空间', null, '1', 'dmkj/dmkj.mp4');
INSERT INTO `vedio_message` VALUES ('19', '红海行动', null, '1', 'hhxd/hhxd.mp4');
INSERT INTO `vedio_message` VALUES ('20', '机器人总动员', null, '1', 'jqrzdy/jqrzdy.mp4');
INSERT INTO `vedio_message` VALUES ('21', '美丽人生', null, '1', 'mlrs/mlrs.mp4');
INSERT INTO `vedio_message` VALUES ('22', '辛德勒的名单', null, '1', 'xdl/xdl.mp4');
INSERT INTO `vedio_message` VALUES ('23', '寻梦环游记', null, '1', 'xmhyj/xmhyj.mp4');
INSERT INTO `vedio_message` VALUES ('24', '银魂剧场-永远的万事屋', null, '1', 'yh/yh.mp4');
INSERT INTO `vedio_message` VALUES ('25', '这个杀手不太冷', null, '1', 'zgssbtl/zgssbtl.mp4');
