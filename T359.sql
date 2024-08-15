/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t359`;
CREATE DATABASE IF NOT EXISTS `t359` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t359`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'single_seach_types', '单页数据类型', 1, '集团简介', NULL, NULL, '2023-04-18 05:07:03'),
	(2, 'single_seach_types', '单页数据类型', 2, '核心竞争力', NULL, NULL, '2023-04-18 05:07:03'),
	(3, 'jituanwnehua_types', '文化类型', 1, '文化类型1', NULL, NULL, '2023-04-18 05:07:04'),
	(4, 'jituanwnehua_types', '文化类型', 2, '文化类型2', NULL, NULL, '2023-04-18 05:07:04'),
	(5, 'jituanwnehua_types', '文化类型', 3, '文化类型3', NULL, NULL, '2023-04-18 05:07:04'),
	(6, 'jituanwnehua_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-18 05:07:04'),
	(7, 'jituanwnehua_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-18 05:07:04'),
	(8, 'jituanwnehua_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-18 05:07:04'),
	(9, 'xinwen_types', '新闻类型', 1, '新闻类型1', NULL, NULL, '2023-04-18 05:07:04'),
	(10, 'xinwen_types', '新闻类型', 2, '新闻类型2', NULL, NULL, '2023-04-18 05:07:04'),
	(11, 'xinwen_types', '新闻类型', 3, '新闻类型3', NULL, NULL, '2023-04-18 05:07:04'),
	(12, 'xinwen_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-18 05:07:04'),
	(13, 'xinwen_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-18 05:07:04'),
	(14, 'xinwen_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-18 05:07:04'),
	(15, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-04-18 05:07:04'),
	(16, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-04-18 05:07:04'),
	(17, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2023-04-18 05:07:04'),
	(18, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-18 05:07:04'),
	(19, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-18 05:07:04'),
	(20, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-04-18 05:07:04'),
	(21, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-04-18 05:07:04');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 2, NULL, '发布内容1', 194, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(2, '帖子标题2', 2, NULL, '发布内容2', 320, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(3, '帖子标题3', 2, NULL, '发布内容3', 206, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(4, '帖子标题4', 2, NULL, '发布内容4', 433, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(5, '帖子标题5', 1, NULL, '发布内容5', 356, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(6, '帖子标题6', 2, NULL, '发布内容6', 354, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(7, '帖子标题7', 1, NULL, '发布内容7', 399, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(8, '帖子标题8', 1, NULL, '发布内容8', 55, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(9, '帖子标题9', 2, NULL, '发布内容9', 81, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(10, '帖子标题10', 3, NULL, '发布内容10', 30, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(11, '帖子标题11', 3, NULL, '发布内容11', 217, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(12, '帖子标题12', 1, NULL, '发布内容12', 131, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(13, '帖子标题13', 2, NULL, '发布内容13', 198, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(14, '帖子标题14', 2, NULL, '发布内容14', 220, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(15, NULL, 1, NULL, '11111', 14, 2, '2023-04-18 05:24:43', NULL, '2023-04-18 05:24:43'),
	(18, NULL, NULL, 1, '22222222', 14, 2, '2023-04-18 05:25:59', NULL, '2023-04-18 05:25:59'),
	(19, NULL, 1, NULL, '111', 14, 2, '2024-08-09 03:37:39', NULL, '2024-08-09 03:37:39');

DROP TABLE IF EXISTS `jituanwnehua`;
CREATE TABLE IF NOT EXISTS `jituanwnehua` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jituanwnehua_uuid_number` varchar(200) DEFAULT NULL COMMENT '编号',
  `jituanwnehua_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `jituanwnehua_photo` varchar(200) DEFAULT NULL COMMENT '展示照片',
  `jituanwnehua_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `jituanwnehua_types` int DEFAULT NULL COMMENT '文化类型 Search111',
  `jituanwnehua_clicknum` int DEFAULT NULL COMMENT '热度',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `jituanwnehua_content` longtext COMMENT '详情 ',
  `jituanwnehua_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='集团文化';

DELETE FROM `jituanwnehua`;
INSERT INTO `jituanwnehua` (`id`, `jituanwnehua_uuid_number`, `jituanwnehua_name`, `jituanwnehua_photo`, `jituanwnehua_video`, `jituanwnehua_types`, `jituanwnehua_clicknum`, `zan_number`, `cai_number`, `jituanwnehua_content`, `jituanwnehua_delete`, `insert_time`, `create_time`) VALUES
	(1, '1681794465270', '标题1', 'upload/jituanwnehua1.jpg', 'upload/video.mp4', 2, 63, 49, 287, '详情1', 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(2, '1681794465259', '标题2', 'upload/jituanwnehua2.jpg', 'upload/video.mp4', 3, 486, 97, 33, '详情2', 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(3, '1681794465257', '标题3', 'upload/jituanwnehua3.jpg', 'upload/video.mp4', 1, 91, 58, 378, '详情3', 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(4, '1681794465274', '标题4', 'upload/jituanwnehua4.jpg', 'upload/video.mp4', 1, 31, 350, 312, '详情4', 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(5, '1681794465254', '标题5', 'upload/jituanwnehua5.jpg', 'upload/video.mp4', 1, 448, 390, 126, '详情5', 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(6, '1681794465247', '标题6', 'upload/jituanwnehua6.jpg', 'upload/video.mp4', 1, 4, 194, 148, '详情6', 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(7, '1681794465291', '标题7', 'upload/jituanwnehua7.jpg', 'upload/video.mp4', 2, 145, 279, 229, '详情7', 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(8, '1681794465208', '标题8', 'upload/jituanwnehua1.jpg', 'upload/video.mp4', 2, 66, 116, 270, '详情8', 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(9, '1681794465226', '标题9', 'upload/jituanwnehua2.jpg', 'upload/video.mp4', 1, 27, 117, 212, '详情9', 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(10, '1681794465214', '标题10', 'upload/jituanwnehua3.jpg', 'upload/video.mp4', 3, 484, 260, 164, '详情10', 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(11, '1681794465250', '标题11', 'upload/jituanwnehua4.jpg', 'upload/video.mp4', 3, 469, 383, 18, '详情11', 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(12, '1681794465244', '标题12', 'upload/jituanwnehua5.jpg', 'upload/video.mp4', 1, 317, 426, 79, '详情12', 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(13, '1681794465227', '标题13', 'upload/jituanwnehua6.jpg', 'upload/video.mp4', 2, 142, 8, 320, '详情13', 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(14, '1681794465258', '标题14', 'upload/jituanwnehua7.jpg', 'upload/video.mp4', 3, 263, 355, 201, '详情14', 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45');

DROP TABLE IF EXISTS `jituanwnehua_collection`;
CREATE TABLE IF NOT EXISTS `jituanwnehua_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jituanwnehua_id` int DEFAULT NULL COMMENT '集团文化',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jituanwnehua_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='集团文化收藏';

DELETE FROM `jituanwnehua_collection`;
INSERT INTO `jituanwnehua_collection` (`id`, `jituanwnehua_id`, `yonghu_id`, `jituanwnehua_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(2, 2, 1, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(3, 3, 2, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(5, 5, 1, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(6, 6, 2, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(7, 7, 3, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(8, 8, 2, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(9, 9, 3, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(10, 10, 2, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(11, 11, 3, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(13, 13, 1, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(14, 14, 1, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(15, 10, 1, 2, '2023-04-18 05:25:02', '2023-04-18 05:25:02');

DROP TABLE IF EXISTS `jituanwnehua_liuyan`;
CREATE TABLE IF NOT EXISTS `jituanwnehua_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jituanwnehua_id` int DEFAULT NULL COMMENT '集团文化',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jituanwnehua_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='集团文化留言';

DELETE FROM `jituanwnehua_liuyan`;
INSERT INTO `jituanwnehua_liuyan` (`id`, `jituanwnehua_id`, `yonghu_id`, `jituanwnehua_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '留言内容1', '2023-04-18 05:07:45', '回复信息1', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(2, 2, 2, '留言内容2', '2023-04-18 05:07:45', '回复信息2', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(3, 3, 1, '留言内容3', '2023-04-18 05:07:45', '回复信息3', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(4, 4, 2, '留言内容4', '2023-04-18 05:07:45', '回复信息4', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(5, 5, 2, '留言内容5', '2023-04-18 05:07:45', '回复信息5', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(6, 6, 1, '留言内容6', '2023-04-18 05:07:45', '回复信息6', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(7, 7, 2, '留言内容7', '2023-04-18 05:07:45', '回复信息7', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(8, 8, 1, '留言内容8', '2023-04-18 05:07:45', '回复信息8', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(9, 9, 2, '留言内容9', '2023-04-18 05:07:45', '回复信息9', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(10, 10, 3, '留言内容10', '2023-04-18 05:07:45', '回复信息10', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(11, 11, 3, '留言内容11', '2023-04-18 05:07:45', '回复信息11', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(12, 12, 3, '留言内容12', '2023-04-18 05:07:45', '回复信息12', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(13, 13, 1, '留言内容13', '2023-04-18 05:07:45', '回复信息13', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(14, 14, 3, '留言内容14', '2023-04-18 05:07:45', '回复信息14', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(15, 10, 1, '123', '2023-04-18 05:25:08', '3333', '2023-04-18 05:26:08', '2023-04-18 05:25:08');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告通知';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 2, 'upload/news1.jpg', '2023-04-18 05:07:45', '公告详情1', '2023-04-18 05:07:45'),
	(2, '公告标题2', 3, 'upload/news2.jpg', '2023-04-18 05:07:45', '公告详情2', '2023-04-18 05:07:45'),
	(3, '公告标题3', 1, 'upload/news3.jpg', '2023-04-18 05:07:45', '公告详情3', '2023-04-18 05:07:45'),
	(4, '公告标题4', 1, 'upload/news4.jpg', '2023-04-18 05:07:45', '公告详情4', '2023-04-18 05:07:45'),
	(5, '公告标题5', 1, 'upload/news5.jpg', '2023-04-18 05:07:45', '公告详情5', '2023-04-18 05:07:45'),
	(6, '公告标题6', 1, 'upload/news6.jpg', '2023-04-18 05:07:45', '公告详情6', '2023-04-18 05:07:45'),
	(7, '公告标题7', 3, 'upload/news7.jpg', '2023-04-18 05:07:45', '公告详情7', '2023-04-18 05:07:45'),
	(8, '公告标题8', 1, 'upload/news8.jpg', '2023-04-18 05:07:45', '公告详情8', '2023-04-18 05:07:45'),
	(9, '公告标题9', 3, 'upload/news9.jpg', '2023-04-18 05:07:45', '公告详情9', '2023-04-18 05:07:45'),
	(10, '公告标题10', 3, 'upload/news10.jpg', '2023-04-18 05:07:45', '公告详情10', '2023-04-18 05:07:45'),
	(11, '公告标题11', 3, 'upload/news11.jpg', '2023-04-18 05:07:45', '公告详情11', '2023-04-18 05:07:45'),
	(12, '公告标题12', 1, 'upload/news12.jpg', '2023-04-18 05:07:45', '公告详情12', '2023-04-18 05:07:45'),
	(13, '公告标题13', 1, 'upload/news13.jpg', '2023-04-18 05:07:45', '公告详情13', '2023-04-18 05:07:45'),
	(14, '公告标题14', 3, 'upload/news14.jpg', '2023-04-18 05:07:45', '公告详情14', '2023-04-18 05:07:45');

DROP TABLE IF EXISTS `single_seach`;
CREATE TABLE IF NOT EXISTS `single_seach` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int DEFAULT NULL COMMENT '数据类型',
  `single_seach_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `single_seach_content` longtext COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='单页数据';

DELETE FROM `single_seach`;
INSERT INTO `single_seach` (`id`, `single_seach_name`, `single_seach_types`, `single_seach_photo`, `single_seach_content`, `create_time`) VALUES
	(1, '核心竞争力', 2, '/upload/1681795590928.webp', '<p><span style="color: rgb(96, 98, 102);">内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容</span></p><p><img src="upload/1681795601588.webp"></p><p><span style="color: rgb(96, 98, 102);">内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容</span></p><p><span style="color: rgb(96, 98, 102);">内容</span></p><p><span style="color: rgb(96, 98, 102);">内容</span></p><p><span style="color: rgb(96, 98, 102);">内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容</span></p>', '2023-04-18 05:26:49'),
	(2, '集团简介', 1, '/upload/1681795652125.webp', '<p>集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介</p><p><img src="upload/1681795664150.webp"></p><p>集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介集团简介</p>', '2023-04-18 05:27:49');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '管理id',
  `username` varchar(100) NOT NULL COMMENT '管理名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', 'kkohhge0ps0v67ui52kyayjdzwjq5no6', '2023-04-18 05:22:34', '2024-08-09 04:37:28'),
	(2, 1, 'admin', 'users', '管理员', '05ki011uzbxpgcznw3eskae8z29iab3c', '2023-04-18 05:25:46', '2024-08-09 04:36:18');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-18 05:07:03');

DROP TABLE IF EXISTS `xinwen`;
CREATE TABLE IF NOT EXISTS `xinwen` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinwen_name` varchar(200) DEFAULT NULL COMMENT '新闻标题  Search111 ',
  `xinwen_types` int DEFAULT NULL COMMENT '新闻类型  Search111 ',
  `xinwen_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `xinwen_clicknum` int DEFAULT NULL COMMENT '点击量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `xinwen_content` longtext COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='集团新闻';

DELETE FROM `xinwen`;
INSERT INTO `xinwen` (`id`, `xinwen_name`, `xinwen_types`, `xinwen_photo`, `zan_number`, `cai_number`, `xinwen_clicknum`, `insert_time`, `xinwen_content`, `create_time`) VALUES
	(1, '新闻标题1', 2, 'upload/news8.jpg', 400, 436, 491, '2023-04-18 05:07:45', '新闻详情1', '2023-04-18 05:07:45'),
	(2, '新闻标题2', 2, 'upload/news9.jpg', 50, 138, 30, '2023-04-18 05:07:45', '新闻详情2', '2023-04-18 05:07:45'),
	(3, '新闻标题3', 2, 'upload/news10.jpg', 254, 163, 104, '2023-04-18 05:07:45', '新闻详情3', '2023-04-18 05:07:45'),
	(4, '新闻标题4', 1, 'upload/news11.jpg', 18, 371, 214, '2023-04-18 05:07:45', '新闻详情4', '2023-04-18 05:07:45'),
	(5, '新闻标题5', 2, 'upload/news12.jpg', 152, 33, 474, '2023-04-18 05:07:45', '新闻详情5', '2023-04-18 05:07:45'),
	(6, '新闻标题6', 3, 'upload/news13.jpg', 424, 109, 245, '2023-04-18 05:07:45', '新闻详情6', '2023-04-18 05:07:45'),
	(7, '新闻标题7', 1, 'upload/news14.jpg', 438, 359, 175, '2023-04-18 05:07:45', '新闻详情7', '2023-04-18 05:07:45'),
	(8, '新闻标题8', 2, 'upload/news1.jpg', 364, 487, 60, '2023-04-18 05:07:45', '新闻详情8', '2023-04-18 05:07:45'),
	(9, '新闻标题9', 2, 'upload/news2.jpg', 271, 77, 491, '2023-04-18 05:07:45', '新闻详情9', '2023-04-18 05:07:45'),
	(10, '新闻标题10', 3, 'upload/news3.jpg', 454, 343, 175, '2023-04-18 05:07:45', '新闻详情10', '2023-04-18 05:07:45'),
	(11, '新闻标题11', 3, 'upload/news4.jpg', 473, 233, 270, '2023-04-18 05:07:45', '新闻详情11', '2023-04-18 05:07:45'),
	(12, '新闻标题12', 3, 'upload/news5.jpg', 295, 49, 327, '2023-04-18 05:07:45', '新闻详情12', '2023-04-18 05:07:45'),
	(13, '新闻标题13', 3, 'upload/news6.jpg', 151, 332, 39, '2023-04-18 05:07:45', '新闻详情13', '2023-04-18 05:07:45'),
	(14, '新闻标题14', 3, 'upload/news7.jpg', 81, 218, 243, '2023-04-18 05:07:45', '新闻详情14', '2023-04-18 05:07:45');

DROP TABLE IF EXISTS `xinwen_collection`;
CREATE TABLE IF NOT EXISTS `xinwen_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinwen_id` int DEFAULT NULL COMMENT '集团新闻',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `xinwen_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='集团新闻收藏';

DELETE FROM `xinwen_collection`;
INSERT INTO `xinwen_collection` (`id`, `xinwen_id`, `yonghu_id`, `xinwen_collection_types`, `insert_time`, `create_time`) VALUES
	(2, 2, 2, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(4, 4, 1, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(6, 6, 3, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(7, 7, 2, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(8, 8, 2, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(9, 9, 1, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(10, 10, 1, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(11, 11, 1, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(12, 12, 3, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(13, 13, 2, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(14, 14, 2, 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(15, 5, 1, 2, '2023-04-18 05:24:11', '2023-04-18 05:24:11'),
	(17, 8, 1, 2, '2023-04-18 05:24:36', '2023-04-18 05:24:36');

DROP TABLE IF EXISTS `xinwen_liuyan`;
CREATE TABLE IF NOT EXISTS `xinwen_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinwen_id` int DEFAULT NULL COMMENT '集团新闻',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `xinwen_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='集团新闻留言';

DELETE FROM `xinwen_liuyan`;
INSERT INTO `xinwen_liuyan` (`id`, `xinwen_id`, `yonghu_id`, `xinwen_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '留言内容1', '2023-04-18 05:07:45', '回复信息1', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(2, 2, 3, '留言内容2', '2023-04-18 05:07:45', '回复信息2', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(3, 3, 1, '留言内容3', '2023-04-18 05:07:45', '回复信息3', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(4, 4, 1, '留言内容4', '2023-04-18 05:07:45', '回复信息4', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(5, 5, 2, '留言内容5', '2023-04-18 05:07:45', '回复信息5', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(6, 6, 1, '留言内容6', '2023-04-18 05:07:45', '回复信息6', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(7, 7, 2, '留言内容7', '2023-04-18 05:07:45', '回复信息7', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(8, 8, 3, '留言内容8', '2023-04-18 05:07:45', '回复信息8', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(9, 9, 1, '留言内容9', '2023-04-18 05:07:45', '回复信息9', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(10, 10, 1, '留言内容10', '2023-04-18 05:07:45', '回复信息10', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(11, 11, 1, '留言内容11', '2023-04-18 05:07:45', '回复信息11', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(12, 12, 3, '留言内容12', '2023-04-18 05:07:45', '回复信息12', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(13, 13, 1, '留言内容13', '2023-04-18 05:07:45', '回复信息13', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(14, 14, 2, '留言内容14', '2023-04-18 05:07:45', '回复信息14', '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(15, 5, 1, '登陆后才能进入数据详情页', '2023-04-18 05:24:30', NULL, NULL, '2023-04-18 05:24:30');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `yonghu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `yonghu_delete`, `insert_time`, `create_time`) VALUES
	(1, '用户1', '123456', '用户名称1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 2, '1@qq.com', 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(2, '用户2', '123456', '用户名称2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 2, '2@qq.com', 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45'),
	(3, '用户3', '123456', '用户名称3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 2, '3@qq.com', 1, '2023-04-18 05:07:45', '2023-04-18 05:07:45');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
