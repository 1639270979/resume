USE NAMES UTF8;
#删除数据库
DROP DATABASE IF EXISTS novel;
#创建数据库
CREATE DATABASE novel CHARSET UTF8;
#使用数据库
USE novel;
#创建推荐表
CREATE TABLE recommend(
	rid SMALLINT PRIMARY KEY AUTO_INCREMENT, #编号
	rname CHARSET(24),                       #书名
	author CHARSET(12),			 #作者
	state CHARSET(12),			 #状态
	label CHARSET(8),			 #标签
	word_count CHARSET(24),			 #字数
	sourse CHARSET(24),			 #来源
	subtitle CHARSET(50),			 #副标题
	detail CHARSET(128)			 #详情
);
/**插入数据**/
INSERT INTO recommend VALUES
(1,'同桌凶猛','柳下挥','连载','签约 VIP 都市 都市生活','29.02万','起点男生','过去、畅想未来、梦幻现实，再塑传奇人生！','青梅竹马的同桌竟然成了大明星，又凶又萌。'),
(NULL,'明朝败家子','上山打老虎','连载,'签约 VIP 历史 两宋元明','245.08万','起点男生','醒掌天下权，醉卧美人膝，五千年风华烟雨，是非成败转头空！','弘治十一年。这是一个美好的清晨。此时朱厚照初成年。此时王守仁和唐伯虎磨刀霍霍，预备科举。此时小冰河期已经来临，绵长的严寒肆虐着大地。此时在南和伯府里，地主家的傻儿子，南和伯的嫡传继承人方继藩……开始了他没羞没躁的败家人生。'),
(NULL,'全职武神','流浪的蛤蟆','连载',签约 VIP 仙侠 古典仙侠','97.03万','QQ小说','醒掌天下权，醉卧美人膝，五千年风华烟雨，是非成败转头空！','这是一个有侠气的故事…………………………'),
(NULL,'青梅仙道','污泥','连载,'签约 免费 仙侠 古典仙侠','32.02万','起点','修仙觅长生，热血任逍遥，踏莲曳波涤剑骨，凭虚御风塑圣魂！','挥手千尺浪，静坐转阴阳。
异世成大道，造化玄元光！'),
(NULL,'大劫主','黑山老鬼','连载,'签约 VIP 仙侠 修真文明','247.51万','起点','修仙觅长生，热血任逍遥，踏莲曳波涤剑骨，凭虚御风塑圣魂！','　一卷道元真解，三千大道奇经。
　　寒门少年踏仙路，十年苦读意难平。
　　仙榜有吾名！
　　无尽天骄崛起，一剑败尽英雄。
　　不愿逐流从庸众，只求仰首见苍穹。
　　此心本天生！'),
(NULL,'全球高武','老鹰吃小鸡','连载,'签约 VIP 都市 艺术超能','97.03万','起点','重生过去、畅想未来、梦幻现实，再塑传奇人生！','地窟入侵，武道崛起。
　　小人物也有大情怀，为生存而战，为守护而战。
　　且看小人物方平，一步步崛起，拯救（忽悠）全世界的故事！'),
(NULL,'开天录','血红','连载,'签约 VIP 玄幻 东方玄幻','97.03万','起点','心潮澎湃，无限幻想，迎风挥击千层浪，少年不败热血！','生存，很容易。
　　生活，很艰难。
　　我族，要的不是卑下的生存，而是昂首、高傲的生活。
　　我族，誓不为奴！'),
(NULL,'修真聊天群','骑士的传说','连载,'签约 VIP 都市 艺术超能 二次元','97.03万','起点','宋书航意外加入一个仙侠中二病资深患者的交流群，群成员，竟然全部是修真者','　某天，宋书航意外加入了一个仙侠中二病资深患者的交流群，里面的群友们都以‘道友’相称，群名片都是各种府主、洞主、真人、天师。连群主走失的宠物犬都称为大妖犬离家出走。整天聊的是炼丹、闯秘境、炼功经验啥的。
　　突然有一天，潜水良久的他突然发现……群里每一个群员，竟然全部是修真者，能移山倒海、长生千年的那种！
　　啊啊啊啊，世界观在一夜间彻底崩碎啦！'),
(NULL,'史上最强赘婿','沉默的糕点','连载,'签约 VIP 玄幻 东方玄幻','97.03万','QQ小说','心潮澎湃，无限幻想，迎风挥击千层浪，少年不败热血！','穿越异世成为财主家的小白脸赘婿，因太废物被赶出来。于是他发奋图强，找一个更有权有势绝美高贵的豪门千金做了上门女婿。
　　练武是不可能练武的，这辈子都不可能练武，只能靠吃软饭才能维持生活！
　　我要把老婆培养成天下第一高手，谁敢惹我就让我娘子打死你！')
;
#创建推荐小说图片表
CREATE TABLE recommend_picture(
	pid SMALLINT PRIMARY KEY AUTO_INCREMENT, #编号
	purl CHARSET(24),			 #路径
	title CHARSET(54),			 #标题
	href CHARSET(128)
);
#往推荐表中插入数据
INSERT INTO recommend_picture VALUES
(1,'./img/recommended/0.jpg','轮播广告图1'),
(2,'./img/recommended/1.jpg','轮播广告图2'),
(3,'./img/recommended/2.jpg','轮播广告图3'),
(4,'./img/recommended/3.jpg','轮播广告图4'),
(5,'./img/recommended/4.jpg','轮播广告图5'),
(6,'./img/recommended/5.jpg','轮播广告图6'),
(7,'./img/recommended/6.jpg','轮播广告图7'),
(8,'./img/recommended/7.jpg','轮播广告图8'),
(9,'./img/recommended/8.jpg','轮播广告图9')
;
/**用户信息**/
CREATE TABLE xz_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),

  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);
/**用户信息**/
INSERT INTO xz_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', '1'),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', '1'),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');



