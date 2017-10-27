/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : qishi

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2017-06-05 17:51:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for qs_ad
-- ----------------------------
DROP TABLE IF EXISTS `qs_ad`;
CREATE TABLE `qs_ad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme` varchar(30) NOT NULL,
  `alias` varchar(80) NOT NULL,
  `is_display` tinyint(1) NOT NULL DEFAULT '1',
  `category_id` smallint(5) NOT NULL,
  `type_id` smallint(5) NOT NULL,
  `title` varchar(100) NOT NULL,
  `note` varchar(230) NOT NULL,
  `show_order` int(10) unsigned NOT NULL DEFAULT '50',
  `addtime` int(10) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `deadline` int(11) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `text_color` varchar(60) NOT NULL,
  `explain` varchar(255) NOT NULL,
  `uid` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `alias_starttime_deadline` (`alias`,`starttime`,`deadline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_ad
-- ----------------------------

-- ----------------------------
-- Table structure for qs_admin
-- ----------------------------
DROP TABLE IF EXISTS `qs_admin`;
CREATE TABLE `qs_admin` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(32) NOT NULL,
  `pwd_hash` varchar(30) NOT NULL,
  `role_id` int(11) NOT NULL,
  `add_time` int(10) NOT NULL,
  `last_login_time` int(10) NOT NULL,
  `last_login_ip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_admin
-- ----------------------------
INSERT INTO `qs_admin` VALUES ('1', 'admin', 'admin@qq.com', '8a17cd38bd81a3c2da0d873ca23d9613', 'Aj#CB0', '1', '1496653083', '1496655422', '183.214.84.2');

-- ----------------------------
-- Table structure for qs_admin_auth
-- ----------------------------
DROP TABLE IF EXISTS `qs_admin_auth`;
CREATE TABLE `qs_admin_auth` (
  `role_id` int(10) NOT NULL,
  `menu_id` smallint(6) NOT NULL,
  KEY `role_id` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_admin_auth
-- ----------------------------
INSERT INTO `qs_admin_auth` VALUES ('1', '1');
INSERT INTO `qs_admin_auth` VALUES ('1', '6');
INSERT INTO `qs_admin_auth` VALUES ('1', '7');
INSERT INTO `qs_admin_auth` VALUES ('1', '8');
INSERT INTO `qs_admin_auth` VALUES ('1', '9');
INSERT INTO `qs_admin_auth` VALUES ('1', '10');
INSERT INTO `qs_admin_auth` VALUES ('1', '11');
INSERT INTO `qs_admin_auth` VALUES ('1', '12');
INSERT INTO `qs_admin_auth` VALUES ('1', '13');
INSERT INTO `qs_admin_auth` VALUES ('1', '14');
INSERT INTO `qs_admin_auth` VALUES ('1', '15');
INSERT INTO `qs_admin_auth` VALUES ('1', '16');
INSERT INTO `qs_admin_auth` VALUES ('1', '17');
INSERT INTO `qs_admin_auth` VALUES ('1', '18');
INSERT INTO `qs_admin_auth` VALUES ('1', '19');
INSERT INTO `qs_admin_auth` VALUES ('1', '20');
INSERT INTO `qs_admin_auth` VALUES ('1', '21');
INSERT INTO `qs_admin_auth` VALUES ('1', '22');
INSERT INTO `qs_admin_auth` VALUES ('1', '23');
INSERT INTO `qs_admin_auth` VALUES ('1', '24');
INSERT INTO `qs_admin_auth` VALUES ('1', '25');
INSERT INTO `qs_admin_auth` VALUES ('1', '26');
INSERT INTO `qs_admin_auth` VALUES ('1', '28');
INSERT INTO `qs_admin_auth` VALUES ('1', '29');
INSERT INTO `qs_admin_auth` VALUES ('1', '30');
INSERT INTO `qs_admin_auth` VALUES ('1', '31');
INSERT INTO `qs_admin_auth` VALUES ('1', '32');
INSERT INTO `qs_admin_auth` VALUES ('1', '34');
INSERT INTO `qs_admin_auth` VALUES ('1', '35');
INSERT INTO `qs_admin_auth` VALUES ('1', '36');
INSERT INTO `qs_admin_auth` VALUES ('1', '37');
INSERT INTO `qs_admin_auth` VALUES ('1', '39');
INSERT INTO `qs_admin_auth` VALUES ('1', '40');
INSERT INTO `qs_admin_auth` VALUES ('1', '41');
INSERT INTO `qs_admin_auth` VALUES ('1', '42');
INSERT INTO `qs_admin_auth` VALUES ('1', '43');
INSERT INTO `qs_admin_auth` VALUES ('1', '50');
INSERT INTO `qs_admin_auth` VALUES ('1', '51');
INSERT INTO `qs_admin_auth` VALUES ('1', '52');
INSERT INTO `qs_admin_auth` VALUES ('1', '53');
INSERT INTO `qs_admin_auth` VALUES ('1', '57');
INSERT INTO `qs_admin_auth` VALUES ('1', '58');
INSERT INTO `qs_admin_auth` VALUES ('1', '61');
INSERT INTO `qs_admin_auth` VALUES ('1', '62');
INSERT INTO `qs_admin_auth` VALUES ('1', '63');
INSERT INTO `qs_admin_auth` VALUES ('1', '64');
INSERT INTO `qs_admin_auth` VALUES ('1', '65');
INSERT INTO `qs_admin_auth` VALUES ('1', '66');
INSERT INTO `qs_admin_auth` VALUES ('1', '67');
INSERT INTO `qs_admin_auth` VALUES ('1', '68');
INSERT INTO `qs_admin_auth` VALUES ('1', '69');
INSERT INTO `qs_admin_auth` VALUES ('1', '70');
INSERT INTO `qs_admin_auth` VALUES ('1', '71');
INSERT INTO `qs_admin_auth` VALUES ('1', '72');
INSERT INTO `qs_admin_auth` VALUES ('1', '85');
INSERT INTO `qs_admin_auth` VALUES ('1', '86');
INSERT INTO `qs_admin_auth` VALUES ('1', '89');
INSERT INTO `qs_admin_auth` VALUES ('1', '90');
INSERT INTO `qs_admin_auth` VALUES ('1', '91');
INSERT INTO `qs_admin_auth` VALUES ('1', '92');
INSERT INTO `qs_admin_auth` VALUES ('1', '93');
INSERT INTO `qs_admin_auth` VALUES ('1', '94');
INSERT INTO `qs_admin_auth` VALUES ('1', '95');
INSERT INTO `qs_admin_auth` VALUES ('1', '96');
INSERT INTO `qs_admin_auth` VALUES ('1', '97');
INSERT INTO `qs_admin_auth` VALUES ('1', '98');
INSERT INTO `qs_admin_auth` VALUES ('1', '99');
INSERT INTO `qs_admin_auth` VALUES ('1', '104');
INSERT INTO `qs_admin_auth` VALUES ('1', '110');
INSERT INTO `qs_admin_auth` VALUES ('1', '112');
INSERT INTO `qs_admin_auth` VALUES ('1', '114');
INSERT INTO `qs_admin_auth` VALUES ('1', '115');
INSERT INTO `qs_admin_auth` VALUES ('1', '116');
INSERT INTO `qs_admin_auth` VALUES ('1', '117');
INSERT INTO `qs_admin_auth` VALUES ('1', '118');
INSERT INTO `qs_admin_auth` VALUES ('1', '119');
INSERT INTO `qs_admin_auth` VALUES ('1', '120');
INSERT INTO `qs_admin_auth` VALUES ('1', '121');
INSERT INTO `qs_admin_auth` VALUES ('1', '122');
INSERT INTO `qs_admin_auth` VALUES ('1', '123');
INSERT INTO `qs_admin_auth` VALUES ('1', '124');
INSERT INTO `qs_admin_auth` VALUES ('1', '125');
INSERT INTO `qs_admin_auth` VALUES ('1', '126');
INSERT INTO `qs_admin_auth` VALUES ('1', '127');
INSERT INTO `qs_admin_auth` VALUES ('1', '128');
INSERT INTO `qs_admin_auth` VALUES ('1', '129');
INSERT INTO `qs_admin_auth` VALUES ('1', '130');
INSERT INTO `qs_admin_auth` VALUES ('1', '132');
INSERT INTO `qs_admin_auth` VALUES ('1', '133');
INSERT INTO `qs_admin_auth` VALUES ('1', '134');
INSERT INTO `qs_admin_auth` VALUES ('1', '135');
INSERT INTO `qs_admin_auth` VALUES ('1', '136');
INSERT INTO `qs_admin_auth` VALUES ('1', '137');
INSERT INTO `qs_admin_auth` VALUES ('1', '139');
INSERT INTO `qs_admin_auth` VALUES ('1', '140');
INSERT INTO `qs_admin_auth` VALUES ('1', '141');
INSERT INTO `qs_admin_auth` VALUES ('1', '142');
INSERT INTO `qs_admin_auth` VALUES ('1', '143');
INSERT INTO `qs_admin_auth` VALUES ('1', '144');
INSERT INTO `qs_admin_auth` VALUES ('1', '145');
INSERT INTO `qs_admin_auth` VALUES ('1', '146');
INSERT INTO `qs_admin_auth` VALUES ('1', '147');
INSERT INTO `qs_admin_auth` VALUES ('1', '148');
INSERT INTO `qs_admin_auth` VALUES ('1', '149');
INSERT INTO `qs_admin_auth` VALUES ('1', '150');
INSERT INTO `qs_admin_auth` VALUES ('1', '151');
INSERT INTO `qs_admin_auth` VALUES ('1', '152');
INSERT INTO `qs_admin_auth` VALUES ('1', '153');
INSERT INTO `qs_admin_auth` VALUES ('1', '154');
INSERT INTO `qs_admin_auth` VALUES ('1', '155');
INSERT INTO `qs_admin_auth` VALUES ('1', '156');
INSERT INTO `qs_admin_auth` VALUES ('1', '157');
INSERT INTO `qs_admin_auth` VALUES ('1', '158');
INSERT INTO `qs_admin_auth` VALUES ('1', '159');
INSERT INTO `qs_admin_auth` VALUES ('1', '160');
INSERT INTO `qs_admin_auth` VALUES ('1', '161');
INSERT INTO `qs_admin_auth` VALUES ('1', '162');
INSERT INTO `qs_admin_auth` VALUES ('1', '163');
INSERT INTO `qs_admin_auth` VALUES ('1', '164');
INSERT INTO `qs_admin_auth` VALUES ('1', '165');
INSERT INTO `qs_admin_auth` VALUES ('1', '166');
INSERT INTO `qs_admin_auth` VALUES ('1', '167');
INSERT INTO `qs_admin_auth` VALUES ('1', '168');
INSERT INTO `qs_admin_auth` VALUES ('1', '169');
INSERT INTO `qs_admin_auth` VALUES ('1', '170');
INSERT INTO `qs_admin_auth` VALUES ('1', '171');
INSERT INTO `qs_admin_auth` VALUES ('1', '172');
INSERT INTO `qs_admin_auth` VALUES ('1', '176');
INSERT INTO `qs_admin_auth` VALUES ('1', '179');
INSERT INTO `qs_admin_auth` VALUES ('1', '180');
INSERT INTO `qs_admin_auth` VALUES ('1', '183');
INSERT INTO `qs_admin_auth` VALUES ('1', '184');
INSERT INTO `qs_admin_auth` VALUES ('1', '185');
INSERT INTO `qs_admin_auth` VALUES ('1', '186');
INSERT INTO `qs_admin_auth` VALUES ('1', '187');
INSERT INTO `qs_admin_auth` VALUES ('1', '189');
INSERT INTO `qs_admin_auth` VALUES ('1', '190');
INSERT INTO `qs_admin_auth` VALUES ('1', '191');
INSERT INTO `qs_admin_auth` VALUES ('1', '192');
INSERT INTO `qs_admin_auth` VALUES ('1', '194');
INSERT INTO `qs_admin_auth` VALUES ('1', '195');
INSERT INTO `qs_admin_auth` VALUES ('1', '198');
INSERT INTO `qs_admin_auth` VALUES ('1', '200');
INSERT INTO `qs_admin_auth` VALUES ('1', '201');
INSERT INTO `qs_admin_auth` VALUES ('1', '202');
INSERT INTO `qs_admin_auth` VALUES ('1', '203');
INSERT INTO `qs_admin_auth` VALUES ('1', '204');
INSERT INTO `qs_admin_auth` VALUES ('1', '205');
INSERT INTO `qs_admin_auth` VALUES ('1', '210');
INSERT INTO `qs_admin_auth` VALUES ('1', '211');
INSERT INTO `qs_admin_auth` VALUES ('1', '212');
INSERT INTO `qs_admin_auth` VALUES ('1', '214');
INSERT INTO `qs_admin_auth` VALUES ('1', '215');
INSERT INTO `qs_admin_auth` VALUES ('1', '216');
INSERT INTO `qs_admin_auth` VALUES ('1', '218');
INSERT INTO `qs_admin_auth` VALUES ('1', '219');
INSERT INTO `qs_admin_auth` VALUES ('1', '220');
INSERT INTO `qs_admin_auth` VALUES ('1', '221');
INSERT INTO `qs_admin_auth` VALUES ('1', '222');
INSERT INTO `qs_admin_auth` VALUES ('1', '224');
INSERT INTO `qs_admin_auth` VALUES ('1', '225');
INSERT INTO `qs_admin_auth` VALUES ('1', '226');
INSERT INTO `qs_admin_auth` VALUES ('1', '227');
INSERT INTO `qs_admin_auth` VALUES ('1', '228');
INSERT INTO `qs_admin_auth` VALUES ('1', '229');
INSERT INTO `qs_admin_auth` VALUES ('1', '230');
INSERT INTO `qs_admin_auth` VALUES ('1', '231');
INSERT INTO `qs_admin_auth` VALUES ('1', '233');
INSERT INTO `qs_admin_auth` VALUES ('1', '234');
INSERT INTO `qs_admin_auth` VALUES ('1', '235');
INSERT INTO `qs_admin_auth` VALUES ('1', '236');
INSERT INTO `qs_admin_auth` VALUES ('1', '237');
INSERT INTO `qs_admin_auth` VALUES ('1', '238');
INSERT INTO `qs_admin_auth` VALUES ('1', '239');
INSERT INTO `qs_admin_auth` VALUES ('1', '240');
INSERT INTO `qs_admin_auth` VALUES ('1', '241');
INSERT INTO `qs_admin_auth` VALUES ('1', '243');
INSERT INTO `qs_admin_auth` VALUES ('1', '244');
INSERT INTO `qs_admin_auth` VALUES ('1', '245');
INSERT INTO `qs_admin_auth` VALUES ('1', '246');
INSERT INTO `qs_admin_auth` VALUES ('1', '247');
INSERT INTO `qs_admin_auth` VALUES ('1', '248');
INSERT INTO `qs_admin_auth` VALUES ('1', '249');
INSERT INTO `qs_admin_auth` VALUES ('1', '250');
INSERT INTO `qs_admin_auth` VALUES ('1', '253');
INSERT INTO `qs_admin_auth` VALUES ('1', '267');
INSERT INTO `qs_admin_auth` VALUES ('1', '269');
INSERT INTO `qs_admin_auth` VALUES ('1', '270');
INSERT INTO `qs_admin_auth` VALUES ('1', '271');
INSERT INTO `qs_admin_auth` VALUES ('1', '272');
INSERT INTO `qs_admin_auth` VALUES ('1', '274');
INSERT INTO `qs_admin_auth` VALUES ('1', '275');
INSERT INTO `qs_admin_auth` VALUES ('1', '276');
INSERT INTO `qs_admin_auth` VALUES ('1', '277');
INSERT INTO `qs_admin_auth` VALUES ('1', '318');
INSERT INTO `qs_admin_auth` VALUES ('1', '319');
INSERT INTO `qs_admin_auth` VALUES ('1', '320');
INSERT INTO `qs_admin_auth` VALUES ('1', '322');
INSERT INTO `qs_admin_auth` VALUES ('1', '323');
INSERT INTO `qs_admin_auth` VALUES ('1', '324');
INSERT INTO `qs_admin_auth` VALUES ('1', '325');
INSERT INTO `qs_admin_auth` VALUES ('1', '326');
INSERT INTO `qs_admin_auth` VALUES ('1', '327');
INSERT INTO `qs_admin_auth` VALUES ('1', '328');
INSERT INTO `qs_admin_auth` VALUES ('1', '329');
INSERT INTO `qs_admin_auth` VALUES ('1', '330');
INSERT INTO `qs_admin_auth` VALUES ('1', '331');
INSERT INTO `qs_admin_auth` VALUES ('1', '332');
INSERT INTO `qs_admin_auth` VALUES ('1', '333');
INSERT INTO `qs_admin_auth` VALUES ('1', '334');
INSERT INTO `qs_admin_auth` VALUES ('1', '335');
INSERT INTO `qs_admin_auth` VALUES ('1', '336');
INSERT INTO `qs_admin_auth` VALUES ('1', '337');
INSERT INTO `qs_admin_auth` VALUES ('1', '338');
INSERT INTO `qs_admin_auth` VALUES ('1', '339');
INSERT INTO `qs_admin_auth` VALUES ('1', '340');
INSERT INTO `qs_admin_auth` VALUES ('1', '341');
INSERT INTO `qs_admin_auth` VALUES ('1', '342');
INSERT INTO `qs_admin_auth` VALUES ('1', '343');
INSERT INTO `qs_admin_auth` VALUES ('1', '344');
INSERT INTO `qs_admin_auth` VALUES ('1', '345');
INSERT INTO `qs_admin_auth` VALUES ('1', '348');
INSERT INTO `qs_admin_auth` VALUES ('1', '349');
INSERT INTO `qs_admin_auth` VALUES ('1', '350');
INSERT INTO `qs_admin_auth` VALUES ('1', '351');
INSERT INTO `qs_admin_auth` VALUES ('1', '352');
INSERT INTO `qs_admin_auth` VALUES ('1', '353');
INSERT INTO `qs_admin_auth` VALUES ('1', '354');
INSERT INTO `qs_admin_auth` VALUES ('1', '355');
INSERT INTO `qs_admin_auth` VALUES ('1', '356');
INSERT INTO `qs_admin_auth` VALUES ('1', '357');
INSERT INTO `qs_admin_auth` VALUES ('1', '358');
INSERT INTO `qs_admin_auth` VALUES ('1', '359');
INSERT INTO `qs_admin_auth` VALUES ('1', '360');
INSERT INTO `qs_admin_auth` VALUES ('1', '361');
INSERT INTO `qs_admin_auth` VALUES ('1', '362');
INSERT INTO `qs_admin_auth` VALUES ('1', '363');
INSERT INTO `qs_admin_auth` VALUES ('1', '364');
INSERT INTO `qs_admin_auth` VALUES ('1', '365');
INSERT INTO `qs_admin_auth` VALUES ('1', '366');
INSERT INTO `qs_admin_auth` VALUES ('1', '367');
INSERT INTO `qs_admin_auth` VALUES ('1', '368');
INSERT INTO `qs_admin_auth` VALUES ('1', '369');
INSERT INTO `qs_admin_auth` VALUES ('1', '370');
INSERT INTO `qs_admin_auth` VALUES ('1', '371');
INSERT INTO `qs_admin_auth` VALUES ('1', '372');
INSERT INTO `qs_admin_auth` VALUES ('1', '373');
INSERT INTO `qs_admin_auth` VALUES ('1', '374');
INSERT INTO `qs_admin_auth` VALUES ('1', '375');
INSERT INTO `qs_admin_auth` VALUES ('1', '376');
INSERT INTO `qs_admin_auth` VALUES ('1', '377');
INSERT INTO `qs_admin_auth` VALUES ('1', '378');
INSERT INTO `qs_admin_auth` VALUES ('1', '379');
INSERT INTO `qs_admin_auth` VALUES ('1', '380');
INSERT INTO `qs_admin_auth` VALUES ('1', '381');
INSERT INTO `qs_admin_auth` VALUES ('1', '382');
INSERT INTO `qs_admin_auth` VALUES ('1', '383');
INSERT INTO `qs_admin_auth` VALUES ('1', '384');
INSERT INTO `qs_admin_auth` VALUES ('1', '385');
INSERT INTO `qs_admin_auth` VALUES ('1', '386');
INSERT INTO `qs_admin_auth` VALUES ('1', '387');
INSERT INTO `qs_admin_auth` VALUES ('1', '388');
INSERT INTO `qs_admin_auth` VALUES ('1', '389');
INSERT INTO `qs_admin_auth` VALUES ('1', '390');
INSERT INTO `qs_admin_auth` VALUES ('1', '391');
INSERT INTO `qs_admin_auth` VALUES ('1', '392');
INSERT INTO `qs_admin_auth` VALUES ('1', '401');
INSERT INTO `qs_admin_auth` VALUES ('1', '402');
INSERT INTO `qs_admin_auth` VALUES ('1', '403');
INSERT INTO `qs_admin_auth` VALUES ('1', '404');
INSERT INTO `qs_admin_auth` VALUES ('1', '407');
INSERT INTO `qs_admin_auth` VALUES ('1', '408');
INSERT INTO `qs_admin_auth` VALUES ('1', '409');
INSERT INTO `qs_admin_auth` VALUES ('1', '410');
INSERT INTO `qs_admin_auth` VALUES ('1', '412');
INSERT INTO `qs_admin_auth` VALUES ('1', '413');
INSERT INTO `qs_admin_auth` VALUES ('1', '414');
INSERT INTO `qs_admin_auth` VALUES ('1', '420');
INSERT INTO `qs_admin_auth` VALUES ('1', '421');
INSERT INTO `qs_admin_auth` VALUES ('1', '422');
INSERT INTO `qs_admin_auth` VALUES ('1', '423');
INSERT INTO `qs_admin_auth` VALUES ('1', '424');
INSERT INTO `qs_admin_auth` VALUES ('1', '425');
INSERT INTO `qs_admin_auth` VALUES ('1', '426');
INSERT INTO `qs_admin_auth` VALUES ('1', '428');
INSERT INTO `qs_admin_auth` VALUES ('1', '429');
INSERT INTO `qs_admin_auth` VALUES ('1', '430');
INSERT INTO `qs_admin_auth` VALUES ('1', '431');
INSERT INTO `qs_admin_auth` VALUES ('1', '432');
INSERT INTO `qs_admin_auth` VALUES ('1', '433');
INSERT INTO `qs_admin_auth` VALUES ('1', '439');
INSERT INTO `qs_admin_auth` VALUES ('1', '440');
INSERT INTO `qs_admin_auth` VALUES ('1', '441');
INSERT INTO `qs_admin_auth` VALUES ('1', '444');
INSERT INTO `qs_admin_auth` VALUES ('1', '447');
INSERT INTO `qs_admin_auth` VALUES ('1', '448');
INSERT INTO `qs_admin_auth` VALUES ('1', '449');
INSERT INTO `qs_admin_auth` VALUES ('1', '450');
INSERT INTO `qs_admin_auth` VALUES ('1', '451');
INSERT INTO `qs_admin_auth` VALUES ('1', '452');
INSERT INTO `qs_admin_auth` VALUES ('1', '453');
INSERT INTO `qs_admin_auth` VALUES ('1', '454');
INSERT INTO `qs_admin_auth` VALUES ('1', '455');
INSERT INTO `qs_admin_auth` VALUES ('1', '458');
INSERT INTO `qs_admin_auth` VALUES ('1', '464');
INSERT INTO `qs_admin_auth` VALUES ('1', '482');
INSERT INTO `qs_admin_auth` VALUES ('1', '483');
INSERT INTO `qs_admin_auth` VALUES ('1', '484');
INSERT INTO `qs_admin_auth` VALUES ('1', '485');
INSERT INTO `qs_admin_auth` VALUES ('1', '486');
INSERT INTO `qs_admin_auth` VALUES ('1', '487');
INSERT INTO `qs_admin_auth` VALUES ('1', '488');
INSERT INTO `qs_admin_auth` VALUES ('1', '489');
INSERT INTO `qs_admin_auth` VALUES ('1', '490');
INSERT INTO `qs_admin_auth` VALUES ('1', '491');
INSERT INTO `qs_admin_auth` VALUES ('1', '492');
INSERT INTO `qs_admin_auth` VALUES ('1', '493');
INSERT INTO `qs_admin_auth` VALUES ('1', '494');
INSERT INTO `qs_admin_auth` VALUES ('1', '495');
INSERT INTO `qs_admin_auth` VALUES ('1', '496');
INSERT INTO `qs_admin_auth` VALUES ('1', '497');
INSERT INTO `qs_admin_auth` VALUES ('1', '498');
INSERT INTO `qs_admin_auth` VALUES ('1', '499');
INSERT INTO `qs_admin_auth` VALUES ('1', '500');
INSERT INTO `qs_admin_auth` VALUES ('1', '501');
INSERT INTO `qs_admin_auth` VALUES ('1', '502');
INSERT INTO `qs_admin_auth` VALUES ('1', '511');
INSERT INTO `qs_admin_auth` VALUES ('1', '512');
INSERT INTO `qs_admin_auth` VALUES ('1', '513');
INSERT INTO `qs_admin_auth` VALUES ('1', '514');
INSERT INTO `qs_admin_auth` VALUES ('1', '515');
INSERT INTO `qs_admin_auth` VALUES ('1', '516');
INSERT INTO `qs_admin_auth` VALUES ('1', '517');
INSERT INTO `qs_admin_auth` VALUES ('1', '518');
INSERT INTO `qs_admin_auth` VALUES ('1', '519');
INSERT INTO `qs_admin_auth` VALUES ('1', '520');
INSERT INTO `qs_admin_auth` VALUES ('1', '521');
INSERT INTO `qs_admin_auth` VALUES ('1', '523');
INSERT INTO `qs_admin_auth` VALUES ('1', '524');
INSERT INTO `qs_admin_auth` VALUES ('1', '525');
INSERT INTO `qs_admin_auth` VALUES ('1', '526');
INSERT INTO `qs_admin_auth` VALUES ('1', '527');
INSERT INTO `qs_admin_auth` VALUES ('1', '529');
INSERT INTO `qs_admin_auth` VALUES ('1', '530');
INSERT INTO `qs_admin_auth` VALUES ('1', '531');
INSERT INTO `qs_admin_auth` VALUES ('1', '532');
INSERT INTO `qs_admin_auth` VALUES ('1', '533');
INSERT INTO `qs_admin_auth` VALUES ('1', '534');
INSERT INTO `qs_admin_auth` VALUES ('1', '535');
INSERT INTO `qs_admin_auth` VALUES ('1', '536');
INSERT INTO `qs_admin_auth` VALUES ('1', '537');
INSERT INTO `qs_admin_auth` VALUES ('1', '538');
INSERT INTO `qs_admin_auth` VALUES ('1', '539');
INSERT INTO `qs_admin_auth` VALUES ('1', '540');
INSERT INTO `qs_admin_auth` VALUES ('1', '541');
INSERT INTO `qs_admin_auth` VALUES ('1', '542');
INSERT INTO `qs_admin_auth` VALUES ('1', '543');
INSERT INTO `qs_admin_auth` VALUES ('1', '544');
INSERT INTO `qs_admin_auth` VALUES ('1', '545');
INSERT INTO `qs_admin_auth` VALUES ('1', '546');
INSERT INTO `qs_admin_auth` VALUES ('1', '549');
INSERT INTO `qs_admin_auth` VALUES ('1', '550');
INSERT INTO `qs_admin_auth` VALUES ('1', '553');
INSERT INTO `qs_admin_auth` VALUES ('1', '554');
INSERT INTO `qs_admin_auth` VALUES ('1', '555');
INSERT INTO `qs_admin_auth` VALUES ('1', '556');
INSERT INTO `qs_admin_auth` VALUES ('1', '559');
INSERT INTO `qs_admin_auth` VALUES ('1', '560');
INSERT INTO `qs_admin_auth` VALUES ('1', '561');
INSERT INTO `qs_admin_auth` VALUES ('1', '562');
INSERT INTO `qs_admin_auth` VALUES ('1', '563');
INSERT INTO `qs_admin_auth` VALUES ('1', '564');
INSERT INTO `qs_admin_auth` VALUES ('1', '565');
INSERT INTO `qs_admin_auth` VALUES ('1', '566');
INSERT INTO `qs_admin_auth` VALUES ('1', '567');
INSERT INTO `qs_admin_auth` VALUES ('1', '568');
INSERT INTO `qs_admin_auth` VALUES ('1', '569');
INSERT INTO `qs_admin_auth` VALUES ('1', '570');
INSERT INTO `qs_admin_auth` VALUES ('1', '571');
INSERT INTO `qs_admin_auth` VALUES ('1', '572');
INSERT INTO `qs_admin_auth` VALUES ('1', '573');
INSERT INTO `qs_admin_auth` VALUES ('1', '576');
INSERT INTO `qs_admin_auth` VALUES ('1', '577');
INSERT INTO `qs_admin_auth` VALUES ('1', '578');
INSERT INTO `qs_admin_auth` VALUES ('1', '579');
INSERT INTO `qs_admin_auth` VALUES ('1', '580');
INSERT INTO `qs_admin_auth` VALUES ('1', '581');
INSERT INTO `qs_admin_auth` VALUES ('1', '582');
INSERT INTO `qs_admin_auth` VALUES ('1', '583');
INSERT INTO `qs_admin_auth` VALUES ('1', '683');
INSERT INTO `qs_admin_auth` VALUES ('1', '684');
INSERT INTO `qs_admin_auth` VALUES ('1', '692');
INSERT INTO `qs_admin_auth` VALUES ('1', '693');
INSERT INTO `qs_admin_auth` VALUES ('1', '701');
INSERT INTO `qs_admin_auth` VALUES ('1', '702');
INSERT INTO `qs_admin_auth` VALUES ('1', '703');
INSERT INTO `qs_admin_auth` VALUES ('1', '704');
INSERT INTO `qs_admin_auth` VALUES ('1', '705');
INSERT INTO `qs_admin_auth` VALUES ('1', '706');
INSERT INTO `qs_admin_auth` VALUES ('1', '707');
INSERT INTO `qs_admin_auth` VALUES ('1', '708');
INSERT INTO `qs_admin_auth` VALUES ('1', '716');
INSERT INTO `qs_admin_auth` VALUES ('1', '717');
INSERT INTO `qs_admin_auth` VALUES ('1', '718');
INSERT INTO `qs_admin_auth` VALUES ('1', '719');
INSERT INTO `qs_admin_auth` VALUES ('1', '720');
INSERT INTO `qs_admin_auth` VALUES ('1', '721');
INSERT INTO `qs_admin_auth` VALUES ('1', '722');
INSERT INTO `qs_admin_auth` VALUES ('1', '723');
INSERT INTO `qs_admin_auth` VALUES ('1', '724');
INSERT INTO `qs_admin_auth` VALUES ('1', '725');
INSERT INTO `qs_admin_auth` VALUES ('1', '726');
INSERT INTO `qs_admin_auth` VALUES ('1', '727');
INSERT INTO `qs_admin_auth` VALUES ('1', '728');
INSERT INTO `qs_admin_auth` VALUES ('1', '729');
INSERT INTO `qs_admin_auth` VALUES ('1', '730');
INSERT INTO `qs_admin_auth` VALUES ('1', '731');
INSERT INTO `qs_admin_auth` VALUES ('1', '732');
INSERT INTO `qs_admin_auth` VALUES ('1', '733');
INSERT INTO `qs_admin_auth` VALUES ('1', '734');
INSERT INTO `qs_admin_auth` VALUES ('1', '735');

-- ----------------------------
-- Table structure for qs_admin_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `qs_admin_auth_group`;
CREATE TABLE `qs_admin_auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `mid` int(11) NOT NULL,
  `msid` int(11) NOT NULL,
  `mids` varchar(500) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `ordid` int(10) NOT NULL,
  `addtime` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_admin_auth_group
-- ----------------------------
INSERT INTO `qs_admin_auth_group` VALUES ('1', '微信公众平台', '1', '253', '253,1', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('2', '低效sql记录', '1', '379', '379,380,1', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('3', '系统错误日志', '1', '110', '110,579,580,1', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('4', '会员日志', '1', '104', '104,1', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('5', '短信设置', '1', '28', '28,29,30,57,58,59,61,69,85,86,87,89,1', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('6', '邮件设置', '1', '26', '26,90,91,92,93,94,99,549,1', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('7', '导航设置', '1', '384', '384,385,386,387,388,389,390,391,392,1', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('8', '应用管理', '1', '350', '350,381,382,383,401,402,692,693,1', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('9', '页面管理', '1', '318', '318,422,420,421,423,424,425,426,439,440,441,1', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('10', '系统菜单', '1', '2', '2,3,4,5,573,1', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('11', '分类管理', '1', '24', '24,348,349,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,1', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('12', '热门关键字', '1', '39', '39,40,41,42,1', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('13', '网站管理员', '1', '7', '7,8,9,10,11,43,62,427,428,429,430,431,432,433,434,435,436,437,438,1', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('14', '安全设置', '1', '25', '25,31,32,34,35,36,37,1', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('15', '网站配置', '1', '6', '6,12,13,14,413,404,565,566,1', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('16', '行为分析', '15', '461', '461,547,548,15', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('17', '数据清理', '15', '464', '464,15', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('18', '短信营销', '15', '339', '561,560,339,340,341,342,343,344,345,15', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('19', '百度链接提交', '15', '121', '121,15', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('20', '邮件营销', '15', '326', '333,326,334,335,336,337,338,15', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('21', '数据库', '15', '16', '16,17,18,19,20,21,22,23,15', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('22', '支付方式', '15', '50', '50,51,52,53,15', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('23', '计划任务', '15', '63', '63,68,70,71,72,15', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('24', '第三方账号登录', '15', '64', '64,65,66,67,15', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('25', '更新缓存', '15', '319', '319,15', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('26', '风格模板', '15', '320', '332,322,320,331,330,329,328,327,324,323,15', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('27', '招聘会管理', '278', '279', '279,299,300,301,302,303,304,311,312,313,314,315,316,278', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('28', '参会企业', '278', '298', '298,305,306,307,308,309,310,317,278', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('29', '商品列表', '465', '466', '466,467,468,469,465', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('30', '商品分类', '465', '470', '470,471,472,473,557,465', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('31', '订单管理', '465', '474', '474,475,476,477,465', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('32', '热门关键字', '465', '478', '478,479,480,481,465', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('33', '微信公众平台', '251', '252', '252,254,255,256,257,258,259,260,261,262,263,264,265,266,251', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('34', '手机触屏端', '251', '403', '403,251', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('35', '账号申诉', '112', '374', '374,375,376,377,378,112', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('36', '消息', '112', '95', '95,96,97,98,112', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('37', '新闻资讯', '112', '114', '114,122,123,124,125,126,127,128,129,130,132,133,134,112', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('38', '广告管理', '112', '267', '267,112', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('39', '友情链接', '112', '269', '269,270,271,272,539,544,545,546,576,112', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('40', '意见与建议', '112', '120', '120,170,578,112', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('41', '举报信息', '112', '119', '119,168,169,112', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('42', '帮助中心', '112', '118', '118,160,161,162,163,164,165,166,167,577,112', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('43', 'HR工具箱', '112', '117', '117,152,153,154,155,156,157,158,159,112', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('44', '说明页', '112', '115', '115,135,136,137,141,139,140,142,143,112', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('45', '公告管理', '112', '116', '116,144,145,146,147,148,149,150,151,112', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('46', '管理会员中心', '171', '191', '191,171', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('47', '个人设置', '171', '248', '409,250,567,248,249,406,407,501,536,568,569,570,571,572,171', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('48', '加载委托详情', '171', '190', '190,171', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('49', '加载会员详情', '171', '189', '189,171', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('50', '职位订阅', '171', '325', '325,537,171', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('51', '个人推广', '171', '502', '502,525,526,527,529,530,564,171', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('52', '订单管理', '171', '176', '517,176,514,518,171', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('53', '照片作品', '171', '511', '554,555,511,171', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('54', '个人会员', '171', '179', '562,559,516,179,185,186,187,556,513,485,486,487,488,489,490,491,507,508,509,515,519,520,521,523,524,563,171', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('55', '简历列表', '171', '172', '172,180,183,184,192,531,553,171', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('56', '管理', '194', '550', '550,194', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('57', '企业设置', '194', '240', '240,241,245,243,244,246,247,274,405,408,410,411,412,414,482,483,484,194', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('58', '发票管理', '194', '583', '583,584,585,586,194', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('59', '顾问管理', '194', '204', '204,235,236,237,238,239,683,684,194', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('60', '企业风采', '194', '203', '203,233,234,194', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('61', '增值服务', '194', '512', '512,194', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('62', '企业推广', '194', '202', '202,205,228,229,230,231,194', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('63', '企业列表', '194', '198', '198,214,215,216,552,219,220,453,454,455,495,496,497,498,499,500,194', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('64', '订单管理', '194', '201', '201,534,533,535,194', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('65', '企业会员', '194', '200', '200,221,222,224,225,226,227,444,532,447,448,449,450,451,452,492,493,494,506,505,510,581,582,194', '', '0', '1476849611', '1476849611');
INSERT INTO `qs_admin_auth_group` VALUES ('66', '职位列表', '194', '195', '195,210,211,212,458,194', '', '0', '1476849611', '1476849611');

-- ----------------------------
-- Table structure for qs_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `qs_admin_log`;
CREATE TABLE `qs_admin_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(20) NOT NULL,
  `add_time` int(10) NOT NULL,
  `log_value` text,
  `log_ip` varchar(20) NOT NULL,
  `log_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for qs_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `qs_admin_role`;
CREATE TABLE `qs_admin_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `groups` varchar(500) NOT NULL,
  `mids` varchar(500) NOT NULL,
  `remark` text NOT NULL,
  `ordid` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_admin_role
-- ----------------------------
INSERT INTO `qs_admin_role` VALUES ('1', '超级管理员', '', '', '超级管理员', '0', '1');
INSERT INTO `qs_admin_role` VALUES ('2', '管理员', '', '', '', '0', '1');

-- ----------------------------
-- Table structure for qs_ad_category
-- ----------------------------
DROP TABLE IF EXISTS `qs_ad_category`;
CREATE TABLE `qs_ad_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `theme` varchar(30) NOT NULL,
  `org` varchar(10) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `categoryname` varchar(100) NOT NULL,
  `width` smallint(5) NOT NULL,
  `height` smallint(5) NOT NULL,
  `float` tinyint(1) NOT NULL,
  `floating_left` smallint(5) NOT NULL,
  `floating_right` smallint(5) NOT NULL,
  `floating_top` smallint(5) NOT NULL,
  `admin_set` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ad_num` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_ad_category
-- ----------------------------
INSERT INTO `qs_ad_category` VALUES ('19', 'default', 'Home', 'QS_news_index_top', '2', '职场资讯首页顶部广告位(860*280)', '860', '280', '0', '0', '0', '0', '1', '0');
INSERT INTO `qs_ad_category` VALUES ('18', 'default', 'Home', 'QS_jobs_list_right', '2', '职位列表页右侧广告位(230*175)', '230', '175', '0', '0', '0', '0', '1', '0');
INSERT INTO `qs_ad_category` VALUES ('17', 'default', 'Home', 'QS_indexcenterrecommend', '2', '首页中部名企推荐广告位(188*78)', '188', '78', '0', '0', '0', '0', '1', '0');
INSERT INTO `qs_ad_category` VALUES ('16', 'default', 'Home', 'QS_indexcentrefocus', '2', '首页中部焦点图广告(300*175)', '300', '175', '0', '0', '0', '0', '1', '0');
INSERT INTO `qs_ad_category` VALUES ('15', 'default', 'Home', 'QS_indextopimg', '2', '首页上方横幅广告位(1200*80)', '1200', '80', '0', '0', '0', '0', '1', '0');
INSERT INTO `qs_ad_category` VALUES ('14', 'default', 'Home', 'QS_indexrecommend', '2', '首页上部名企推荐广告位(150*150)', '150', '150', '0', '0', '0', '0', '1', '0');
INSERT INTO `qs_ad_category` VALUES ('13', 'default', 'Home', 'QS_indexcenter', '2', '首页中部横幅广告(1200*80)', '1200', '80', '0', '0', '0', '0', '1', '0');
INSERT INTO `qs_ad_category` VALUES ('12', 'default', 'Home', 'QS_indexcentreimg', '2', '首页中部格子广告(590*80)', '590', '80', '0', '0', '0', '0', '1', '0');
INSERT INTO `qs_ad_category` VALUES ('11', 'default', 'Home', 'QS_indexfocus', '2', '首页图片轮番广告(605*260)', '605', '260', '0', '0', '0', '0', '1', '0');
INSERT INTO `qs_ad_category` VALUES ('20', 'default', 'Home', 'QS_news_right', '2', '职场资讯右侧广告位(315*165)', '315', '165', '0', '0', '0', '0', '1', '0');

-- ----------------------------
-- Table structure for qs_apply
-- ----------------------------
DROP TABLE IF EXISTS `qs_apply`;
CREATE TABLE `qs_apply` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `alias` varchar(30) NOT NULL,
  `module_name` varchar(30) NOT NULL,
  `version` varchar(20) NOT NULL,
  `is_create_table` tinyint(1) NOT NULL,
  `is_insert_data` tinyint(1) NOT NULL,
  `is_exe` tinyint(1) NOT NULL,
  `is_delete_data` tinyint(1) NOT NULL,
  `update_time` varchar(20) NOT NULL,
  `setup_time` int(10) NOT NULL,
  `explain` text NOT NULL,
  `versioning` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_apply
-- ----------------------------
INSERT INTO `qs_apply` VALUES ('1', 'Home', 'Mr jobs人才系统核心模块', '4.2.3', '0', '0', '0', '0', '2017-04-05 15:00', '1496653083', '此模块为Mr jobs人才系统基础模块，安装其他周边模块必须在此模块的基础上增加，模块包含了系统的招聘求职等核心功能。', '基础版升级日志', '1');

-- ----------------------------
-- Table structure for qs_article
-- ----------------------------
DROP TABLE IF EXISTS `qs_article`;
CREATE TABLE `qs_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` smallint(5) unsigned NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `tit_color` varchar(10) DEFAULT NULL,
  `tit_b` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Small_img` varchar(80) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `focos` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_display` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_url` varchar(200) NOT NULL DEFAULT '0',
  `seo_keywords` varchar(100) DEFAULT NULL,
  `seo_description` varchar(200) DEFAULT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL,
  `article_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `robot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`,`article_order`,`id`),
  KEY `click` (`click`),
  KEY `focos_article_order` (`focos`,`article_order`,`id`),
  KEY `addtime` (`addtime`),
  KEY `parentid` (`parentid`,`article_order`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_article
-- ----------------------------

-- ----------------------------
-- Table structure for qs_article_category
-- ----------------------------
DROP TABLE IF EXISTS `qs_article_category`;
CREATE TABLE `qs_article_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL,
  `categoryname` varchar(80) NOT NULL,
  `category_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `admin_set` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_article_category
-- ----------------------------
INSERT INTO `qs_article_category` VALUES ('1', '0', '资讯中心', '0', '资讯中心', '', '', '1');
INSERT INTO `qs_article_category` VALUES ('2', '1', '职业指导', '0', '', '', '', '1');
INSERT INTO `qs_article_category` VALUES ('3', '1', '简历指南', '0', '', '', '', '1');
INSERT INTO `qs_article_category` VALUES ('4', '1', '面试宝典', '0', '', '', '', '1');
INSERT INTO `qs_article_category` VALUES ('5', '1', '职场八卦', '0', '', '', '', '1');
INSERT INTO `qs_article_category` VALUES ('6', '1', '劳动法苑', '0', '', '', '', '1');
INSERT INTO `qs_article_category` VALUES ('7', '1', '职场观察', '0', '', '', '', '1');

-- ----------------------------
-- Table structure for qs_article_property
-- ----------------------------
DROP TABLE IF EXISTS `qs_article_property`;
CREATE TABLE `qs_article_property` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(30) NOT NULL,
  `category_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_set` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_article_property
-- ----------------------------
INSERT INTO `qs_article_property` VALUES ('1', '普通资讯', '0', '1');
INSERT INTO `qs_article_property` VALUES ('2', '头条资讯', '0', '1');
INSERT INTO `qs_article_property` VALUES ('3', '焦点新闻', '0', '1');
INSERT INTO `qs_article_property` VALUES ('4', '推荐资讯', '0', '1');

-- ----------------------------
-- Table structure for qs_audit_reason
-- ----------------------------
DROP TABLE IF EXISTS `qs_audit_reason`;
CREATE TABLE `qs_audit_reason` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jobs_id` int(10) unsigned NOT NULL DEFAULT '0',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0',
  `resume_id` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(30) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `audit_man` varchar(30) NOT NULL,
  `famous` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_id` (`jobs_id`),
  KEY `company_id` (`company_id`),
  KEY `resume_id` (`resume_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_audit_reason
-- ----------------------------

-- ----------------------------
-- Table structure for qs_badword
-- ----------------------------
DROP TABLE IF EXISTS `qs_badword`;
CREATE TABLE `qs_badword` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `badword` varchar(100) NOT NULL COMMENT '原始数据',
  `replace` varchar(100) NOT NULL COMMENT '替换数据',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否激活',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_badword
-- ----------------------------

-- ----------------------------
-- Table structure for qs_baiduxml
-- ----------------------------
DROP TABLE IF EXISTS `qs_baiduxml`;
CREATE TABLE `qs_baiduxml` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_baiduxml
-- ----------------------------
INSERT INTO `qs_baiduxml` VALUES ('1', 'order', '1');
INSERT INTO `qs_baiduxml` VALUES ('2', 'xmlmax', '0');
INSERT INTO `qs_baiduxml` VALUES ('3', 'xmlpagesize', '3000');
INSERT INTO `qs_baiduxml` VALUES ('4', 'xmlpre', 'li_');
INSERT INTO `qs_baiduxml` VALUES ('5', 'xmldir', 'baiduxml/');
INSERT INTO `qs_baiduxml` VALUES ('6', 'indexname', 'index.xml');
INSERT INTO `qs_baiduxml` VALUES ('7', 'indexdir', 'baiduxml/');

-- ----------------------------
-- Table structure for qs_baidu_submiturl
-- ----------------------------
DROP TABLE IF EXISTS `qs_baidu_submiturl`;
CREATE TABLE `qs_baidu_submiturl` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_baidu_submiturl
-- ----------------------------
INSERT INTO `qs_baidu_submiturl` VALUES ('1', 'token', '');
INSERT INTO `qs_baidu_submiturl` VALUES ('2', 'addcompany', '0');
INSERT INTO `qs_baidu_submiturl` VALUES ('3', 'addjob', '0');
INSERT INTO `qs_baidu_submiturl` VALUES ('4', 'addresume', '0');
INSERT INTO `qs_baidu_submiturl` VALUES ('5', 'addjobfair', '0');
INSERT INTO `qs_baidu_submiturl` VALUES ('6', 'addarticle', '0');
INSERT INTO `qs_baidu_submiturl` VALUES ('7', 'addexplain', '0');
INSERT INTO `qs_baidu_submiturl` VALUES ('8', 'addnotice', '0');

-- ----------------------------
-- Table structure for qs_category
-- ----------------------------
DROP TABLE IF EXISTS `qs_category`;
CREATE TABLE `qs_category` (
  `c_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `c_parentid` int(10) unsigned NOT NULL,
  `c_alias` char(30) NOT NULL,
  `c_name` char(30) NOT NULL,
  `c_order` int(10) NOT NULL,
  `c_index` char(1) NOT NULL,
  `c_note` char(60) NOT NULL,
  `stat_jobs` char(15) NOT NULL,
  `stat_resume` char(15) NOT NULL,
  PRIMARY KEY (`c_id`),
  KEY `c_alias` (`c_alias`)
) ENGINE=MyISAM AUTO_INCREMENT=301 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_category
-- ----------------------------
INSERT INTO `qs_category` VALUES ('1', '0', 'QS_trade', '计算机软件/硬件', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('2', '0', 'QS_trade', '计算机系统/维修', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('3', '0', 'QS_trade', '通信(设备/运营/服务)', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('4', '0', 'QS_trade', '互联网/电子商务', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('5', '0', 'QS_trade', '网络游戏', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('6', '0', 'QS_trade', '电子/半导体/集成电路', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('7', '0', 'QS_trade', '仪器仪表/工业自动化', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('8', '0', 'QS_trade', '会计/审计', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('9', '0', 'QS_trade', '金融(投资/证券', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('10', '0', 'QS_trade', '金融(银行/保险)', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('11', '0', 'QS_trade', '贸易/进出口', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('12', '0', 'QS_trade', '批发/零售', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('13', '0', 'QS_trade', '消费品(食/饮/烟酒)', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('14', '0', 'QS_trade', '服装/纺织/皮革', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('15', '0', 'QS_trade', '家具/家电/工艺品/玩具', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('16', '0', 'QS_trade', '办公用品及设备', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('17', '0', 'QS_trade', '机械/设备/重工', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('18', '0', 'QS_trade', '汽车/摩托车/零配件', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('19', '0', 'QS_trade', '制药/生物工程', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('20', '0', 'QS_trade', '医疗/美容/保健/卫生', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('21', '0', 'QS_trade', '医疗设备/器械', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('22', '0', 'QS_trade', '广告/市场推广', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('23', '0', 'QS_trade', '会展/博览', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('24', '0', 'QS_trade', '影视/媒体/艺术/出版', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('25', '0', 'QS_trade', '印刷/包装/造纸', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('26', '0', 'QS_trade', '房地产开发', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('27', '0', 'QS_trade', '建筑与工程', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('28', '0', 'QS_trade', '家居/室内设计/装潢', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('29', '0', 'QS_trade', '物业管理/商业中心', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('30', '0', 'QS_trade', '中介服务/家政服务', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('31', '0', 'QS_trade', '专业服务/财会/法律', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('32', '0', 'QS_trade', '检测/认证', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('33', '0', 'QS_trade', '教育/培训', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('34', '0', 'QS_trade', '学术/科研', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('35', '0', 'QS_trade', '餐饮/娱乐/休闲', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('36', '0', 'QS_trade', '酒店/旅游', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('37', '0', 'QS_trade', '交通/运输/物流', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('38', '0', 'QS_trade', '航天/航空', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('39', '0', 'QS_trade', '能源(石油/化工/矿产)', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('40', '0', 'QS_trade', '能源(采掘/冶炼/原材料)', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('41', '0', 'QS_trade', '电力/水利/新能源', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('42', '0', 'QS_trade', '政府部门/事业单位', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('43', '0', 'QS_trade', '非盈利机构/行业协会', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('44', '0', 'QS_trade', '农业/渔业/林业/牧业', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('45', '0', 'QS_trade', '其他行业', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('46', '0', 'QS_company_type', '国企', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('47', '0', 'QS_company_type', '民营', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('48', '0', 'QS_company_type', '合资', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('49', '0', 'QS_company_type', '外商独资', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('50', '0', 'QS_company_type', '股份制企业', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('51', '0', 'QS_company_type', '上市公司', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('52', '0', 'QS_company_type', '国家机关', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('53', '0', 'QS_company_type', '事业单位', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('54', '0', 'QS_company_type', '其它', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('56', '0', 'QS_wage', '1000~1500/月', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('57', '0', 'QS_wage', '1500~2000/月', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('58', '0', 'QS_wage', '2000~3000/月', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('59', '0', 'QS_wage', '3000~5000/月', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('60', '0', 'QS_wage', '5000~10000/月', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('61', '0', 'QS_wage', '10000以上/月', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('62', '0', 'QS_jobs_nature', '全职', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('63', '0', 'QS_jobs_nature', '兼职', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('64', '0', 'QS_jobs_nature', '实习', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('65', '0', 'QS_education', '初中', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('66', '0', 'QS_education', '高中', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('67', '0', 'QS_education', '中技', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('68', '0', 'QS_education', '中专', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('69', '0', 'QS_education', '大专', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('70', '0', 'QS_education', '本科', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('71', '0', 'QS_education', '硕士', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('72', '0', 'QS_education', '博士', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('73', '0', 'QS_education', '博后', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('74', '0', 'QS_experience', '无经验', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('75', '0', 'QS_experience', '1年以下', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('76', '0', 'QS_experience', '1-3年', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('77', '0', 'QS_experience', '3-5年', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('78', '0', 'QS_experience', '5-10年', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('79', '0', 'QS_experience', '10年以上', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('80', '0', 'QS_scale', '20人以下', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('81', '0', 'QS_scale', '20-99人', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('82', '0', 'QS_scale', '100-499人', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('83', '0', 'QS_scale', '500-999人', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('84', '0', 'QS_scale', '1000-9999人', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('85', '0', 'QS_scale', '10000人以上', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('145', '0', 'QS_jobtag', '环境好', '0', 'h', '0', '', '');
INSERT INTO `qs_category` VALUES ('146', '0', 'QS_jobtag', '年终奖', '0', 'n', '0', '', '');
INSERT INTO `qs_category` VALUES ('147', '0', 'QS_jobtag', '双休', '0', 's', '0', '', '');
INSERT INTO `qs_category` VALUES ('148', '0', 'QS_jobtag', '五险一金', '0', 'w', '0', '', '');
INSERT INTO `qs_category` VALUES ('149', '0', 'QS_jobtag', '加班费', '0', 'j', '0', '', '');
INSERT INTO `qs_category` VALUES ('150', '0', 'QS_jobtag', '朝九晚五', '0', 'c', '0', '', '');
INSERT INTO `qs_category` VALUES ('151', '0', 'QS_jobtag', '交通方便', '0', 'm', '0', '', '');
INSERT INTO `qs_category` VALUES ('152', '0', 'QS_jobtag', '加班补助', '0', 's', '0', '', '');
INSERT INTO `qs_category` VALUES ('153', '0', 'QS_jobtag', '包食宿', '0', 'b', '0', '', '');
INSERT INTO `qs_category` VALUES ('154', '0', 'QS_jobtag', '管理规范', '0', 'g', '0', '', '');
INSERT INTO `qs_category` VALUES ('155', '0', 'QS_jobtag', '有提成', '0', 'y', '0', '', '');
INSERT INTO `qs_category` VALUES ('156', '0', 'QS_jobtag', '全勤奖', '0', 'q', '0', '', '');
INSERT INTO `qs_category` VALUES ('157', '0', 'QS_jobtag', '有年假', '0', 'y', '0', '', '');
INSERT INTO `qs_category` VALUES ('158', '0', 'QS_jobtag', '专车接送', '0', 'z', '0', '', '');
INSERT INTO `qs_category` VALUES ('159', '0', 'QS_jobtag', '有补助', '0', 'y', '0', '', '');
INSERT INTO `qs_category` VALUES ('160', '0', 'QS_jobtag', '晋升快', '0', 'j', '0', '', '');
INSERT INTO `qs_category` VALUES ('161', '0', 'QS_jobtag', '车贴', '0', 'c', '0', '', '');
INSERT INTO `qs_category` VALUES ('162', '0', 'QS_jobtag', '房贴', '0', 'f', '0', '', '');
INSERT INTO `qs_category` VALUES ('163', '0', 'QS_jobtag', '压力小', '0', 'y', '0', '', '');
INSERT INTO `qs_category` VALUES ('164', '0', 'QS_jobtag', '技术培训', '0', 'j', '0', '', '');
INSERT INTO `qs_category` VALUES ('165', '0', 'QS_jobtag', '旅游', '0', 'l', '0', '', '');
INSERT INTO `qs_category` VALUES ('166', '0', 'QS_resumetag', '形象好', '0', 'x', '0', '', '');
INSERT INTO `qs_category` VALUES ('167', '0', 'QS_resumetag', '气质佳', '0', 'q', '0', '', '');
INSERT INTO `qs_category` VALUES ('168', '0', 'QS_resumetag', '能出差', '0', 'n', '0', '', '');
INSERT INTO `qs_category` VALUES ('169', '0', 'QS_resumetag', '很幽默', '0', 'h', '0', '', '');
INSERT INTO `qs_category` VALUES ('170', '0', 'QS_resumetag', '技术精悍', '0', 'j', '0', '', '');
INSERT INTO `qs_category` VALUES ('171', '0', 'QS_resumetag', '有亲和力', '0', 'y', '0', '', '');
INSERT INTO `qs_category` VALUES ('172', '0', 'QS_resumetag', '高学历', '0', 's', '0', '', '');
INSERT INTO `qs_category` VALUES ('173', '0', 'QS_resumetag', '经验丰富', '0', 'j', '0', '', '');
INSERT INTO `qs_category` VALUES ('174', '0', 'QS_resumetag', '能加班', '0', 'n', '0', '', '');
INSERT INTO `qs_category` VALUES ('175', '0', 'QS_resumetag', '海归', '0', 'h', '0', '', '');
INSERT INTO `qs_category` VALUES ('176', '0', 'QS_resumetag', '会开车', '0', 'h', '0', '', '');
INSERT INTO `qs_category` VALUES ('177', '0', 'QS_resumetag', '口才好', '0', 'k', '0', '', '');
INSERT INTO `qs_category` VALUES ('178', '0', 'QS_resumetag', '声音甜美', '0', 's', '0', '', '');
INSERT INTO `qs_category` VALUES ('179', '0', 'QS_resumetag', '会应酬', '0', 'h', '0', '', '');
INSERT INTO `qs_category` VALUES ('180', '0', 'QS_resumetag', '诚实守信', '0', 'c', '0', '', '');
INSERT INTO `qs_category` VALUES ('181', '0', 'QS_resumetag', '外语好', '0', 'w', '0', '', '');
INSERT INTO `qs_category` VALUES ('182', '0', 'QS_resumetag', '性格开朗', '0', 'x', '0', '', '');
INSERT INTO `qs_category` VALUES ('183', '0', 'QS_resumetag', '有上进心', '0', 'y', '0', '', '');
INSERT INTO `qs_category` VALUES ('184', '0', 'QS_resumetag', '人脉广', '0', 'r', '0', '', '');
INSERT INTO `qs_category` VALUES ('185', '0', 'QS_resumetag', '知识丰富', '0', 'z', '0', '', '');
INSERT INTO `qs_category` VALUES ('186', '0', 'QS_resumetag', '才艺多', '0', 'c', '0', '', '');
INSERT INTO `qs_category` VALUES ('208', '0', 'QS_language', '普通话', '0', '', '0', '', '');
INSERT INTO `qs_category` VALUES ('209', '0', 'QS_language', '粤语', '0', '', '0', '', '');
INSERT INTO `qs_category` VALUES ('210', '0', 'QS_language', '英语', '0', '', '0', '', '');
INSERT INTO `qs_category` VALUES ('211', '0', 'QS_language', '法语', '0', '', '0', '', '');
INSERT INTO `qs_category` VALUES ('212', '0', 'QS_language', '日语', '0', '', '0', '', '');
INSERT INTO `qs_category` VALUES ('213', '0', 'QS_language', '其他', '0', '', '0', '', '');
INSERT INTO `qs_category` VALUES ('241', '0', 'QS_current', '我目前已离职，可快速到岗', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('242', '0', 'QS_current', '我目前在职，但考虑换个新环境', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('243', '0', 'QS_current', '观望有好的机会再考虑', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('244', '0', 'QS_current', '目前暂无跳槽打算', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('245', '0', 'QS_current', '应届毕业生', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('291', '0', 'QS_language_level', '入门', '0', 'r', '', '', '');
INSERT INTO `qs_category` VALUES ('292', '0', 'QS_language_level', '熟练', '0', 's', '', '', '');
INSERT INTO `qs_category` VALUES ('293', '0', 'QS_language_level', '精通', '0', 'j', '', '', '');
INSERT INTO `qs_category` VALUES ('296', '0', 'QS_age', '16-20岁', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('297', '0', 'QS_age', '21-30岁', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('298', '0', 'QS_age', '31-40岁', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('299', '0', 'QS_age', '41-50岁', '0', '', '', '', '');
INSERT INTO `qs_category` VALUES ('300', '0', 'QS_age', '50岁以上', '0', '', '', '', '');

-- ----------------------------
-- Table structure for qs_category_district
-- ----------------------------
DROP TABLE IF EXISTS `qs_category_district`;
CREATE TABLE `qs_category_district` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `categoryname` varchar(30) NOT NULL,
  `category_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stat_jobs` varchar(15) NOT NULL,
  `stat_resume` varchar(15) NOT NULL,
  `spell` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=798 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_category_district
-- ----------------------------
INSERT INTO `qs_category_district` VALUES ('1', '0', '南京', '0', '', '', 'nanjing');
INSERT INTO `qs_category_district` VALUES ('2', '0', '无锡', '0', '', '', 'wuxi');
INSERT INTO `qs_category_district` VALUES ('3', '0', '苏州', '0', '', '', 'suzhou');
INSERT INTO `qs_category_district` VALUES ('4', '0', '徐州', '0', '', '', 'xuzhou');
INSERT INTO `qs_category_district` VALUES ('5', '0', '常州', '0', '', '', 'changzhou');
INSERT INTO `qs_category_district` VALUES ('6', '0', '南通', '0', '', '', 'nantong');
INSERT INTO `qs_category_district` VALUES ('7', '0', '连云港', '0', '', '', 'lianyungang');
INSERT INTO `qs_category_district` VALUES ('8', '0', '淮安', '0', '', '', 'huaian');
INSERT INTO `qs_category_district` VALUES ('9', '0', '盐城', '0', '', '', 'yancheng');
INSERT INTO `qs_category_district` VALUES ('10', '0', '扬州', '0', '', '', 'yangzhou');
INSERT INTO `qs_category_district` VALUES ('11', '0', '镇江', '0', '', '', 'zhenjiang');
INSERT INTO `qs_category_district` VALUES ('12', '0', '泰州', '0', '', '', 'taizhou');
INSERT INTO `qs_category_district` VALUES ('13', '0', '宿迁', '0', '', '', 'suqian');
INSERT INTO `qs_category_district` VALUES ('14', '1', '玄武区', '0', '', '', 'xuanwuqu');
INSERT INTO `qs_category_district` VALUES ('15', '1', '鼓楼区', '0', '', '', 'gulouqu');
INSERT INTO `qs_category_district` VALUES ('16', '1', '建邺区', '0', '', '', 'jianyequ');
INSERT INTO `qs_category_district` VALUES ('17', '1', '白下区', '0', '', '', 'baixiaqu');
INSERT INTO `qs_category_district` VALUES ('18', '1', '秦淮区', '0', '', '', 'qinhuaiqu');
INSERT INTO `qs_category_district` VALUES ('19', '1', '下关区', '0', '', '', 'xiaguanqu');
INSERT INTO `qs_category_district` VALUES ('20', '1', '雨花台区', '0', '', '', 'yuhuataiqu');
INSERT INTO `qs_category_district` VALUES ('21', '1', '浦口区', '0', '', '', 'pukouqu');
INSERT INTO `qs_category_district` VALUES ('22', '1', '栖霞区', '0', '', '', 'qixiaqu');
INSERT INTO `qs_category_district` VALUES ('23', '1', '江宁区', '0', '', '', 'jiangningqu');
INSERT INTO `qs_category_district` VALUES ('24', '1', '六合区', '0', '', '', 'liuhequ');
INSERT INTO `qs_category_district` VALUES ('25', '1', '高淳县', '0', '', '', 'gaochunxian');
INSERT INTO `qs_category_district` VALUES ('26', '1', '溧水县', '0', '', '', 'lishuixian');
INSERT INTO `qs_category_district` VALUES ('27', '1', '大厂', '0', '', '', 'dachang');
INSERT INTO `qs_category_district` VALUES ('28', '1', '南京周边', '0', '', '', 'nanjingzhoubian');
INSERT INTO `qs_category_district` VALUES ('29', '2', '崇安区', '0', '', '', 'chonganqu');
INSERT INTO `qs_category_district` VALUES ('30', '2', '南长区', '0', '', '', 'nanchangqu');
INSERT INTO `qs_category_district` VALUES ('31', '2', '北塘区', '0', '', '', 'beitangqu');
INSERT INTO `qs_category_district` VALUES ('32', '2', '锡山区', '0', '', '', 'xishanqu');
INSERT INTO `qs_category_district` VALUES ('33', '2', '惠山区', '0', '', '', 'huishanqu');
INSERT INTO `qs_category_district` VALUES ('34', '2', '滨湖区', '0', '', '', 'binhuqu');
INSERT INTO `qs_category_district` VALUES ('35', '2', '新区', '0', '', '', 'xinqu');
INSERT INTO `qs_category_district` VALUES ('36', '2', '江阴', '0', '', '', 'jiangyin');
INSERT INTO `qs_category_district` VALUES ('37', '2', '宜兴', '0', '', '', 'yixing');
INSERT INTO `qs_category_district` VALUES ('38', '2', '无锡周边', '0', '', '', 'wuxizhoubian');
INSERT INTO `qs_category_district` VALUES ('39', '3', '沧浪区', '0', '', '', 'canglangqu');
INSERT INTO `qs_category_district` VALUES ('40', '3', '相城区', '0', '', '', 'xiangchengqu');
INSERT INTO `qs_category_district` VALUES ('41', '3', '平江区', '0', '', '', 'pingjiangqu');
INSERT INTO `qs_category_district` VALUES ('42', '3', '金阊区', '0', '', '', 'jinchangqu');
INSERT INTO `qs_category_district` VALUES ('43', '3', '工业园区', '0', '', '', 'szgongyeyuanqu');
INSERT INTO `qs_category_district` VALUES ('44', '3', '吴中区', '0', '', '', 'wuzhongqu');
INSERT INTO `qs_category_district` VALUES ('45', '3', '吴江区', '0', '', '', 'wujiangqu');
INSERT INTO `qs_category_district` VALUES ('46', '3', '高新区', '0', '', '', 'szgaoxinqu');
INSERT INTO `qs_category_district` VALUES ('47', '3', '虎丘区', '0', '', '', 'huqiuqu');
INSERT INTO `qs_category_district` VALUES ('48', '3', '昆山', '0', '', '', 'kunshan');
INSERT INTO `qs_category_district` VALUES ('49', '3', '常熟', '0', '', '', 'changshu');
INSERT INTO `qs_category_district` VALUES ('50', '3', '张家港', '0', '', '', 'zhangjiagang');
INSERT INTO `qs_category_district` VALUES ('51', '3', '太仓', '0', '', '', 'taicang');
INSERT INTO `qs_category_district` VALUES ('52', '4', '云龙区', '0', '', '', 'yunlongqu');
INSERT INTO `qs_category_district` VALUES ('53', '4', '鼓楼区', '0', '', '', 'xzgulouqu');
INSERT INTO `qs_category_district` VALUES ('54', '4', '贾汪区', '0', '', '', 'jiawangqu');
INSERT INTO `qs_category_district` VALUES ('55', '4', '泉山区', '0', '', '', 'quanshanqu');
INSERT INTO `qs_category_district` VALUES ('56', '4', '铜山区', '0', '', '', 'tongshanqu');
INSERT INTO `qs_category_district` VALUES ('57', '4', '金山桥开发区', '0', '', '', 'jinshanqiaokaifaqu');
INSERT INTO `qs_category_district` VALUES ('58', '4', '新城区', '0', '', '', 'xzxinchengqu');
INSERT INTO `qs_category_district` VALUES ('59', '4', '睢宁县', '0', '', '', 'suiningxian');
INSERT INTO `qs_category_district` VALUES ('60', '4', '丰县', '0', '', '', 'fengxian');
INSERT INTO `qs_category_district` VALUES ('61', '4', '沛县', '0', '', '', 'peixian');
INSERT INTO `qs_category_district` VALUES ('62', '4', '邳州', '0', '', '', 'pizhou');
INSERT INTO `qs_category_district` VALUES ('63', '4', '新沂', '0', '', '', 'xinyi');
INSERT INTO `qs_category_district` VALUES ('64', '4', '徐州周边', '0', '', '', 'xuzhouzhoubian');
INSERT INTO `qs_category_district` VALUES ('65', '3', '苏州周边', '0', '', '', 'suzhouzhoubian');
INSERT INTO `qs_category_district` VALUES ('66', '5', '天宁区', '0', '', '', 'tianningqu');
INSERT INTO `qs_category_district` VALUES ('67', '5', '武进区', '0', '', '', 'wujinqu');
INSERT INTO `qs_category_district` VALUES ('68', '5', '钟楼区', '0', '', '', 'czzhonglouqu');
INSERT INTO `qs_category_district` VALUES ('69', '5', '新北区', '0', '', '', 'xinbeiqu');
INSERT INTO `qs_category_district` VALUES ('70', '5', '金坛区', '0', '', '', 'jintanqu');
INSERT INTO `qs_category_district` VALUES ('71', '5', '溧阳', '0', '', '', 'liyang');
INSERT INTO `qs_category_district` VALUES ('72', '5', '常州周边', '0', '', '', 'changzhouzhoubian');
INSERT INTO `qs_category_district` VALUES ('73', '6', '崇川区', '0', '', '', 'chongchuanqu');
INSERT INTO `qs_category_district` VALUES ('74', '6', '通州区', '0', '', '', 'tongzhouqu');
INSERT INTO `qs_category_district` VALUES ('75', '6', '港闸区', '0', '', '', 'gangzhaqu');
INSERT INTO `qs_category_district` VALUES ('76', '6', '开发区', '0', '', '', 'ntkaifaqu');
INSERT INTO `qs_category_district` VALUES ('77', '6', '如东县', '0', '', '', 'rudongxian');
INSERT INTO `qs_category_district` VALUES ('78', '6', '海安县', '0', '', '', 'haianxian');
INSERT INTO `qs_category_district` VALUES ('79', '6', '如皋', '0', '', '', 'rugao');
INSERT INTO `qs_category_district` VALUES ('80', '6', '海门', '0', '', '', 'haimen');
INSERT INTO `qs_category_district` VALUES ('81', '6', '启东', '0', '', '', 'qidong');
INSERT INTO `qs_category_district` VALUES ('82', '6', '南通周边', '0', '', '', 'nantongzhoubian');
INSERT INTO `qs_category_district` VALUES ('83', '7', '新浦区', '0', '', '', 'xinpuqu');
INSERT INTO `qs_category_district` VALUES ('84', '7', '连云区', '0', '', '', 'lianyunqu');
INSERT INTO `qs_category_district` VALUES ('85', '7', '海州区', '0', '', '', 'haizhouqu');
INSERT INTO `qs_category_district` VALUES ('86', '7', '赣榆县', '0', '', '', 'ganyuxian');
INSERT INTO `qs_category_district` VALUES ('87', '7', '灌云县', '0', '', '', 'guanyunxian');
INSERT INTO `qs_category_district` VALUES ('88', '7', '灌南县', '0', '', '', 'guannanxian');
INSERT INTO `qs_category_district` VALUES ('89', '7', '连云港周边', '0', '', '', 'lianyungangzhoubian');
INSERT INTO `qs_category_district` VALUES ('90', '8', '清河区', '0', '', '', 'qinghequ');
INSERT INTO `qs_category_district` VALUES ('91', '8', '清浦区', '0', '', '', 'qingpuqu');
INSERT INTO `qs_category_district` VALUES ('92', '8', '淮阴区', '0', '', '', 'huaiyinqu');
INSERT INTO `qs_category_district` VALUES ('93', '8', '淮安区', '0', '', '', 'huaianqu');
INSERT INTO `qs_category_district` VALUES ('94', '8', '经济开发区', '0', '', '', 'hajingjikaifaqu');
INSERT INTO `qs_category_district` VALUES ('95', '8', '涟水县', '0', '', '', 'lianshuixian');
INSERT INTO `qs_category_district` VALUES ('96', '8', '洪泽县', '0', '', '', 'hongzexian');
INSERT INTO `qs_category_district` VALUES ('97', '8', '金湖县', '0', '', '', 'jinhuxian');
INSERT INTO `qs_category_district` VALUES ('98', '8', '盱眙县', '0', '', '', 'xuyuxian');
INSERT INTO `qs_category_district` VALUES ('99', '8', '淮安周边', '0', '', '', 'huaianzhoubian');
INSERT INTO `qs_category_district` VALUES ('100', '9', '亭湖区', '0', '', '', 'tinghuqu');
INSERT INTO `qs_category_district` VALUES ('101', '9', '盐都区', '0', '', '', 'yanduqu');
INSERT INTO `qs_category_district` VALUES ('102', '9', '大丰区', '0', '', '', 'dafengqu');
INSERT INTO `qs_category_district` VALUES ('103', '9', '阜宁县', '0', '', '', 'funingxian');
INSERT INTO `qs_category_district` VALUES ('104', '9', '射阳县', '0', '', '', 'sheyangxian');
INSERT INTO `qs_category_district` VALUES ('105', '9', '滨海县', '0', '', '', 'binhaixian');
INSERT INTO `qs_category_district` VALUES ('106', '9', '响水县', '0', '', '', 'xiangshuixian');
INSERT INTO `qs_category_district` VALUES ('107', '9', '建湖县', '0', '', '', 'jianhuxian');
INSERT INTO `qs_category_district` VALUES ('108', '9', '东台', '0', '', '', 'dongtai');
INSERT INTO `qs_category_district` VALUES ('109', '9', '盐城周边', '0', '', '', 'yanchengzhoubian');
INSERT INTO `qs_category_district` VALUES ('110', '10', '广陵区', '0', '', '', 'guanglingqu');
INSERT INTO `qs_category_district` VALUES ('111', '10', '邗江区', '0', '', '', 'hanjiangqu');
INSERT INTO `qs_category_district` VALUES ('112', '10', '江都区', '0', '', '', 'jiangduqu');
INSERT INTO `qs_category_district` VALUES ('113', '10', '宝应县', '0', '', '', 'baoyingxian');
INSERT INTO `qs_category_district` VALUES ('114', '10', '仪征', '0', '', '', 'yizheng');
INSERT INTO `qs_category_district` VALUES ('115', '10', '高邮', '0', '', '', 'gaoyou');
INSERT INTO `qs_category_district` VALUES ('116', '10', '扬州周边', '0', '', '', 'yangzhouzhoubian');
INSERT INTO `qs_category_district` VALUES ('117', '11', '京口区', '0', '', '', 'jingkouqu');
INSERT INTO `qs_category_district` VALUES ('118', '11', '润州区', '0', '', '', 'runzhouqu');
INSERT INTO `qs_category_district` VALUES ('119', '11', '丹徒区', '0', '', '', 'dantuqu');
INSERT INTO `qs_category_district` VALUES ('120', '11', '镇江新区', '0', '', '', 'zhenjiangxinqu');
INSERT INTO `qs_category_district` VALUES ('121', '11', '扬中', '0', '', '', 'yangzhong');
INSERT INTO `qs_category_district` VALUES ('122', '11', '句容', '0', '', '', 'jurong');
INSERT INTO `qs_category_district` VALUES ('123', '11', '丹阳', '0', '', '', 'danyang');
INSERT INTO `qs_category_district` VALUES ('124', '11', '镇江周边', '0', '', '', 'zhenjiangzhoubian');
INSERT INTO `qs_category_district` VALUES ('125', '12', '海陵区', '0', '', '', 'hailingqu');
INSERT INTO `qs_category_district` VALUES ('126', '12', '高港区', '0', '', '', 'gaogangqu');
INSERT INTO `qs_category_district` VALUES ('127', '12', '姜堰', '0', '', '', 'jiangyanqu');
INSERT INTO `qs_category_district` VALUES ('128', '12', '泰兴', '0', '', '', 'taixing');
INSERT INTO `qs_category_district` VALUES ('129', '12', '靖江', '0', '', '', 'jingjiang');
INSERT INTO `qs_category_district` VALUES ('130', '12', '兴化', '0', '', '', 'xinghua');
INSERT INTO `qs_category_district` VALUES ('131', '12', '泰州周边', '0', '', '', 'taizhouzhoubian');
INSERT INTO `qs_category_district` VALUES ('132', '13', '宿豫区', '0', '', '', 'suyuqu');
INSERT INTO `qs_category_district` VALUES ('133', '13', '宿城区', '0', '', '', 'suchengqu');
INSERT INTO `qs_category_district` VALUES ('134', '13', '经济开发区', '0', '', '', 'sqjingjikaifaqu');
INSERT INTO `qs_category_district` VALUES ('135', '13', '泗洪县', '0', '', '', 'hongxian');
INSERT INTO `qs_category_district` VALUES ('136', '13', '泗阳县', '0', '', '', 'yangxian');
INSERT INTO `qs_category_district` VALUES ('137', '13', '沭阳县', '0', '', '', 'shuyangxian');
INSERT INTO `qs_category_district` VALUES ('138', '13', '宿迁周边', '0', '', '', 'suqianzhoubian');
INSERT INTO `qs_category_district` VALUES ('139', '14', '梅园', '0', '', '', 'meiyuan');
INSERT INTO `qs_category_district` VALUES ('140', '14', '长江路', '0', '', '', 'changjianglu');
INSERT INTO `qs_category_district` VALUES ('141', '14', '丹凤街', '0', '', '', 'danfengjie');
INSERT INTO `qs_category_district` VALUES ('142', '14', '兰园', '0', '', '', 'lanyuan');
INSERT INTO `qs_category_district` VALUES ('143', '14', '珠江路', '0', '', '', 'zhujianglu');
INSERT INTO `qs_category_district` VALUES ('144', '14', '玄武门', '0', '', '', 'xuanwumen');
INSERT INTO `qs_category_district` VALUES ('145', '14', '红山', '0', '', '', 'hongshan');
INSERT INTO `qs_category_district` VALUES ('146', '14', '锁金村', '0', '', '', 'suojincun');
INSERT INTO `qs_category_district` VALUES ('147', '14', '后宰门', '0', '', '', 'houzaimen');
INSERT INTO `qs_category_district` VALUES ('148', '14', '卫岗', '0', '', '', 'weigang');
INSERT INTO `qs_category_district` VALUES ('149', '14', '孝陵卫', '0', '', '', 'xiaolingwei');
INSERT INTO `qs_category_district` VALUES ('150', '14', '月苑', '0', '', '', 'yueyuan');
INSERT INTO `qs_category_district` VALUES ('151', '14', '北京东路', '0', '', '', 'beijingdonglu');
INSERT INTO `qs_category_district` VALUES ('152', '14', '樱驼花园', '0', '', '', 'yingtuohuayuan');
INSERT INTO `qs_category_district` VALUES ('153', '14', '玄武周边', '0', '', '', 'xuanwuzhoubian');
INSERT INTO `qs_category_district` VALUES ('154', '15', '华侨路', '0', '', '', 'huaqiaolu');
INSERT INTO `qs_category_district` VALUES ('155', '15', '宁海路', '0', '', '', 'ninghailu');
INSERT INTO `qs_category_district` VALUES ('156', '15', '湖南路', '0', '', '', 'hunanlu');
INSERT INTO `qs_category_district` VALUES ('157', '15', '中央门', '0', '', '', 'zhongyangmen');
INSERT INTO `qs_category_district` VALUES ('158', '15', '挹江门', '0', '', '', 'yijiangmen');
INSERT INTO `qs_category_district` VALUES ('159', '15', '江东', '0', '', '', 'jiangdong');
INSERT INTO `qs_category_district` VALUES ('160', '15', '莫愁', '0', '', '', 'mochou');
INSERT INTO `qs_category_district` VALUES ('161', '15', '三牌楼', '0', '', '', 'sanpailou');
INSERT INTO `qs_category_district` VALUES ('162', '15', '许府巷', '0', '', '', 'xufuxiang');
INSERT INTO `qs_category_district` VALUES ('163', '15', '凤凰西街', '0', '', '', 'fenghuangxijie');
INSERT INTO `qs_category_district` VALUES ('164', '15', '福建路', '0', '', '', 'fujianlu');
INSERT INTO `qs_category_district` VALUES ('165', '15', '龙江', '0', '', '', 'longjiang');
INSERT INTO `qs_category_district` VALUES ('166', '15', '水佐岗', '0', '', '', 'shuizuogang');
INSERT INTO `qs_category_district` VALUES ('167', '15', '鼓楼周边', '0', '', '', 'gulouzhoubian');
INSERT INTO `qs_category_district` VALUES ('168', '16', '滨湖', '0', '', '', 'binhu');
INSERT INTO `qs_category_district` VALUES ('169', '16', '南湖', '0', '', '', 'nanhu');
INSERT INTO `qs_category_district` VALUES ('170', '16', '南苑', '0', '', '', 'nanyuan');
INSERT INTO `qs_category_district` VALUES ('171', '16', '兴隆', '0', '', '', 'xinglong');
INSERT INTO `qs_category_district` VALUES ('172', '16', '奥体', '0', '', '', 'aoti');
INSERT INTO `qs_category_district` VALUES ('173', '16', '茶南', '0', '', '', 'chanan');
INSERT INTO `qs_category_district` VALUES ('174', '16', '水西门', '0', '', '', 'shuiximen');
INSERT INTO `qs_category_district` VALUES ('175', '16', '应天西路', '0', '', '', 'yingtianxilu');
INSERT INTO `qs_category_district` VALUES ('176', '16', '湖西街', '0', '', '', 'huxijie');
INSERT INTO `qs_category_district` VALUES ('177', '16', '白鹭花园', '0', '', '', 'bailuhuayuan');
INSERT INTO `qs_category_district` VALUES ('178', '16', '建邺周边', '0', '', '', 'jianyezhoubian');
INSERT INTO `qs_category_district` VALUES ('179', '17', '朝天宫', '0', '', '', 'chaotiangong');
INSERT INTO `qs_category_district` VALUES ('180', '17', '止马营', '0', '', '', 'zhimaying');
INSERT INTO `qs_category_district` VALUES ('181', '17', '淮海路', '0', '', '', 'huaihailu');
INSERT INTO `qs_category_district` VALUES ('182', '17', '洪武路', '0', '', '', 'hongwulu');
INSERT INTO `qs_category_district` VALUES ('183', '17', '建康路', '0', '', '', 'jiankanglu');
INSERT INTO `qs_category_district` VALUES ('184', '17', '大光路', '0', '', '', 'daguanglu');
INSERT INTO `qs_category_district` VALUES ('185', '17', '瑞金路', '0', '', '', 'ruijinlu');
INSERT INTO `qs_category_district` VALUES ('186', '17', '新街口', '0', '', '', 'xinjiekou');
INSERT INTO `qs_category_district` VALUES ('187', '17', '苜蓿园', '0', '', '', 'muxuyuan');
INSERT INTO `qs_category_district` VALUES ('188', '17', '光华路', '0', '', '', 'guanghualu');
INSERT INTO `qs_category_district` VALUES ('189', '17', '莫愁路', '0', '', '', 'mochoulu');
INSERT INTO `qs_category_district` VALUES ('190', '17', '常府街', '0', '', '', 'changfujie');
INSERT INTO `qs_category_district` VALUES ('191', '17', '升州路', '0', '', '', 'shengzhoulu');
INSERT INTO `qs_category_district` VALUES ('192', '17', '长白街', '0', '', '', 'changbaijie');
INSERT INTO `qs_category_district` VALUES ('193', '17', '大行宫', '0', '', '', 'daxinggong');
INSERT INTO `qs_category_district` VALUES ('194', '17', '中山门', '0', '', '', 'zhongshanmen');
INSERT INTO `qs_category_district` VALUES ('195', '17', '月牙湖', '0', '', '', 'yueyahu');
INSERT INTO `qs_category_district` VALUES ('196', '17', '光华门', '0', '', '', 'guanghuamen');
INSERT INTO `qs_category_district` VALUES ('197', '17', '白下周边', '0', '', '', 'baixiazhoubian');
INSERT INTO `qs_category_district` VALUES ('198', '18', '夫子庙', '0', '', '', 'fuzimiao');
INSERT INTO `qs_category_district` VALUES ('199', '18', '长乐路', '0', '', '', 'changlelu');
INSERT INTO `qs_category_district` VALUES ('200', '18', '中华门', '0', '', '', 'zhonghuamen');
INSERT INTO `qs_category_district` VALUES ('201', '18', '秦虹', '0', '', '', 'qinhong');
INSERT INTO `qs_category_district` VALUES ('202', '18', '红花', '0', '', '', 'honghua');
INSERT INTO `qs_category_district` VALUES ('203', '18', '洪家园', '0', '', '', 'hongjiayuan');
INSERT INTO `qs_category_district` VALUES ('204', '18', '集庆门', '0', '', '', 'jiqingmen');
INSERT INTO `qs_category_district` VALUES ('205', '18', '来凤', '0', '', '', 'laifeng');
INSERT INTO `qs_category_district` VALUES ('206', '18', '钓鱼台', '0', '', '', 'diaoyutai');
INSERT INTO `qs_category_district` VALUES ('207', '18', '秦淮周边', '0', '', '', 'qinhuaizhoubian');
INSERT INTO `qs_category_district` VALUES ('208', '19', '热河南路', '0', '', '', 'rehenanlu');
INSERT INTO `qs_category_district` VALUES ('209', '19', '建宁路', '0', '', '', 'jianninglu');
INSERT INTO `qs_category_district` VALUES ('210', '19', '阅江楼', '0', '', '', 'yuejianglou');
INSERT INTO `qs_category_district` VALUES ('211', '19', '小市', '0', '', '', 'xiaoshi');
INSERT INTO `qs_category_district` VALUES ('212', '19', '宝塔桥', '0', '', '', 'baotaqiao');
INSERT INTO `qs_category_district` VALUES ('213', '19', '幕府山', '0', '', '', 'mufushan');
INSERT INTO `qs_category_district` VALUES ('214', '19', '金陵小区', '0', '', '', 'jinlingxiaoqu');
INSERT INTO `qs_category_district` VALUES ('215', '19', '惠民桥', '0', '', '', 'huiminqiao');
INSERT INTO `qs_category_district` VALUES ('216', '19', '五塘', '0', '', '', 'wutang');
INSERT INTO `qs_category_district` VALUES ('217', '19', '下关周边', '0', '', '', 'xiaguanzhoubian');
INSERT INTO `qs_category_district` VALUES ('218', '20', '雨花新村', '0', '', '', 'yuhuaxincun');
INSERT INTO `qs_category_district` VALUES ('219', '20', '宁南', '0', '', '', 'ningnan');
INSERT INTO `qs_category_district` VALUES ('220', '20', '铁心桥', '0', '', '', 'tiexinqiao');
INSERT INTO `qs_category_district` VALUES ('221', '20', '西善桥', '0', '', '', 'xishanqiao');
INSERT INTO `qs_category_district` VALUES ('222', '20', '梅山', '0', '', '', 'meishan');
INSERT INTO `qs_category_district` VALUES ('223', '20', '赛虹桥', '0', '', '', 'saihongqiao');
INSERT INTO `qs_category_district` VALUES ('224', '20', '板桥', '0', '', '', 'banqiao');
INSERT INTO `qs_category_district` VALUES ('225', '20', '安德门', '0', '', '', 'andemen');
INSERT INTO `qs_category_district` VALUES ('226', '20', '小行', '0', '', '', 'xiaoxing');
INSERT INTO `qs_category_district` VALUES ('227', '20', '能仁里', '0', '', '', 'nengrenli');
INSERT INTO `qs_category_district` VALUES ('228', '20', '雨花台周边', '0', '', '', 'yuhuataizhoubian');
INSERT INTO `qs_category_district` VALUES ('229', '21', '江浦', '0', '', '', 'jiangpu');
INSERT INTO `qs_category_district` VALUES ('230', '21', '顶山', '0', '', '', 'dingshan');
INSERT INTO `qs_category_district` VALUES ('231', '21', '泰山', '0', '', '', 'taishan');
INSERT INTO `qs_category_district` VALUES ('232', '21', '沿江', '0', '', '', 'yanjiang');
INSERT INTO `qs_category_district` VALUES ('233', '21', '桥北', '0', '', '', 'qiaobei');
INSERT INTO `qs_category_district` VALUES ('234', '21', '高新', '0', '', '', 'gaoxin');
INSERT INTO `qs_category_district` VALUES ('235', '21', '汤泉', '0', '', '', 'tangquan');
INSERT INTO `qs_category_district` VALUES ('236', '21', '盘城', '0', '', '', 'pancheng');
INSERT INTO `qs_category_district` VALUES ('237', '21', '桥林', '0', '', '', 'qiaolin');
INSERT INTO `qs_category_district` VALUES ('238', '21', '浦口周边', '0', '', '', 'pukouzhoubian');
INSERT INTO `qs_category_district` VALUES ('239', '22', '尧化', '0', '', '', 'yaohua');
INSERT INTO `qs_category_district` VALUES ('240', '22', '迈皋桥', '0', '', '', 'maigaoqiao');
INSERT INTO `qs_category_district` VALUES ('241', '22', '燕子矶', '0', '', '', 'yanziji');
INSERT INTO `qs_category_district` VALUES ('242', '22', '龙潭', '0', '', '', 'longtan');
INSERT INTO `qs_category_district` VALUES ('243', '22', '栖霞', '0', '', '', 'qixia');
INSERT INTO `qs_category_district` VALUES ('244', '22', '仙林', '0', '', '', 'xianlin');
INSERT INTO `qs_category_district` VALUES ('245', '22', '马群', '0', '', '', 'maqun');
INSERT INTO `qs_category_district` VALUES ('246', '22', '晓庄', '0', '', '', 'xiaozhuang');
INSERT INTO `qs_category_district` VALUES ('247', '22', '万寿', '0', '', '', 'wanshou');
INSERT INTO `qs_category_district` VALUES ('248', '22', '八卦洲', '0', '', '', 'baguazhou');
INSERT INTO `qs_category_district` VALUES ('249', '22', '栖霞周边', '0', '', '', 'qixiazhoubian');
INSERT INTO `qs_category_district` VALUES ('250', '23', '湖熟', '0', '', '', 'hushu');
INSERT INTO `qs_category_district` VALUES ('251', '23', '东山', '0', '', '', 'dongshan');
INSERT INTO `qs_category_district` VALUES ('252', '23', '上坊', '0', '', '', 'shangfang');
INSERT INTO `qs_category_district` VALUES ('253', '23', '淳化', '0', '', '', 'chunhua');
INSERT INTO `qs_category_district` VALUES ('254', '23', '东善桥', '0', '', '', 'dongshanqiao');
INSERT INTO `qs_category_district` VALUES ('255', '23', '秣陵', '0', '', '', 'moling');
INSERT INTO `qs_category_district` VALUES ('256', '23', '科学园', '0', '', '', 'kexueyuan');
INSERT INTO `qs_category_district` VALUES ('257', '23', '岔路口', '0', '', '', 'chalukou');
INSERT INTO `qs_category_district` VALUES ('258', '23', '将军大道', '0', '', '', 'jiangjundadao');
INSERT INTO `qs_category_district` VALUES ('259', '23', '开发区', '0', '', '', 'jnkaifaqu');
INSERT INTO `qs_category_district` VALUES ('260', '23', '汤山', '0', '', '', 'tangshan');
INSERT INTO `qs_category_district` VALUES ('261', '23', '禄口', '0', '', '', 'lukou');
INSERT INTO `qs_category_district` VALUES ('262', '23', '麒麟门', '0', '', '', 'qilinmen');
INSERT INTO `qs_category_district` VALUES ('263', '23', '江宁镇', '0', '', '', 'jiangningzhen');
INSERT INTO `qs_category_district` VALUES ('264', '23', '滨江开发', '0', '', '', 'binjiangkaifa');
INSERT INTO `qs_category_district` VALUES ('265', '23', '江宁周边', '0', '', '', 'jiangningzhoubian');
INSERT INTO `qs_category_district` VALUES ('266', '24', '雄州', '0', '', '', 'xiongzhou');
INSERT INTO `qs_category_district` VALUES ('267', '24', '龙池', '0', '', '', 'longchi');
INSERT INTO `qs_category_district` VALUES ('268', '24', '长芦', '0', '', '', 'changlu');
INSERT INTO `qs_category_district` VALUES ('269', '24', '葛塘', '0', '', '', 'getang');
INSERT INTO `qs_category_district` VALUES ('270', '24', '山潘', '0', '', '', 'shanpan');
INSERT INTO `qs_category_district` VALUES ('271', '24', '西厂门', '0', '', '', 'xichangmen');
INSERT INTO `qs_category_district` VALUES ('272', '24', '卸甲甸', '0', '', '', 'xiejiadian');
INSERT INTO `qs_category_district` VALUES ('273', '24', '六合周边', '0', '', '', 'liuhezhoubian');
INSERT INTO `qs_category_district` VALUES ('274', '25', '淳城镇', '0', '', '', 'chunchengzhen');
INSERT INTO `qs_category_district` VALUES ('275', '25', '淳溪镇', '0', '', '', 'chunxizhen');
INSERT INTO `qs_category_district` VALUES ('276', '25', '阳江镇', '0', '', '', 'yangjiangzhen');
INSERT INTO `qs_category_district` VALUES ('277', '25', '砖墙镇', '0', '', '', 'zhuanqiangzhen');
INSERT INTO `qs_category_district` VALUES ('278', '25', '古柏镇', '0', '', '', 'gubaizhen');
INSERT INTO `qs_category_district` VALUES ('279', '25', '漆桥镇', '0', '', '', 'qiqiaozhen');
INSERT INTO `qs_category_district` VALUES ('280', '25', '东坝镇', '0', '', '', 'dongbazhen');
INSERT INTO `qs_category_district` VALUES ('281', '25', '固城镇', '0', '', '', 'guchengzhen');
INSERT INTO `qs_category_district` VALUES ('282', '25', '桠溪镇', '0', '', '', 'yaxizhen');
INSERT INTO `qs_category_district` VALUES ('283', '25', '定埠镇', '0', '', '', 'dingbuzhen');
INSERT INTO `qs_category_district` VALUES ('284', '25', '高淳周边', '0', '', '', 'gaochunzhoubian');
INSERT INTO `qs_category_district` VALUES ('285', '26', '永阳镇', '0', '', '', 'yongyangzhen');
INSERT INTO `qs_category_district` VALUES ('286', '26', '洪蓝镇', '0', '', '', 'honglanzhen');
INSERT INTO `qs_category_district` VALUES ('287', '26', '柘塘镇', '0', '', '', 'zhetangzhen');
INSERT INTO `qs_category_district` VALUES ('288', '26', '白马镇', '0', '', '', 'baimazhen');
INSERT INTO `qs_category_district` VALUES ('289', '26', '东屏镇', '0', '', '', 'dongpingzhen');
INSERT INTO `qs_category_district` VALUES ('290', '26', '石湫镇', '0', '', '', 'shiqiuzhen');
INSERT INTO `qs_category_district` VALUES ('291', '26', '晶桥镇', '0', '', '', 'jingqiaozhen');
INSERT INTO `qs_category_district` VALUES ('292', '26', '和凤镇', '0', '', '', 'hefengzhen');
INSERT INTO `qs_category_district` VALUES ('293', '26', '溧水开发区', '0', '', '', 'lishuikaifaqu');
INSERT INTO `qs_category_district` VALUES ('294', '26', '溧水县林', '0', '', '', 'lishuixianlin');
INSERT INTO `qs_category_district` VALUES ('295', '26', '溧水周边', '0', '', '', 'lishuizhoubian');
INSERT INTO `qs_category_district` VALUES ('296', '29', '崇安寺', '0', '', '', 'chongansi');
INSERT INTO `qs_category_district` VALUES ('297', '29', '通江', '0', '', '', 'tongjiang');
INSERT INTO `qs_category_district` VALUES ('298', '29', '广瑞路', '0', '', '', 'guangruilu');
INSERT INTO `qs_category_district` VALUES ('299', '29', '上马墩', '0', '', '', 'shangmadun');
INSERT INTO `qs_category_district` VALUES ('300', '29', '江海', '0', '', '', 'jianghai');
INSERT INTO `qs_category_district` VALUES ('301', '29', '广益', '0', '', '', 'guangyi');
INSERT INTO `qs_category_district` VALUES ('302', '29', '崇安周边', '0', '', '', 'chonganzhoubian');
INSERT INTO `qs_category_district` VALUES ('303', '30', '迎龙桥', '0', '', '', 'yinglongqiao');
INSERT INTO `qs_category_district` VALUES ('304', '30', '南禅寺', '0', '', '', 'nanchansi');
INSERT INTO `qs_category_district` VALUES ('305', '30', '清名桥', '0', '', '', 'qingmingqiao');
INSERT INTO `qs_category_district` VALUES ('306', '30', '金星', '0', '', '', 'jinxing');
INSERT INTO `qs_category_district` VALUES ('307', '30', '金匮', '0', '', '', 'jinkui');
INSERT INTO `qs_category_district` VALUES ('308', '30', '扬名', '0', '', '', 'yangming');
INSERT INTO `qs_category_district` VALUES ('309', '30', '五爱路', '0', '', '', 'wuailu');
INSERT INTO `qs_category_district` VALUES ('310', '30', '南长周边', '0', '', '', 'nanchangzhoubian');
INSERT INTO `qs_category_district` VALUES ('311', '31', '黄巷', '0', '', '', 'huangxiang');
INSERT INTO `qs_category_district` VALUES ('312', '31', '山北', '0', '', '', 'shanbei');
INSERT INTO `qs_category_district` VALUES ('313', '31', '北大街', '0', '', '', 'beidajie');
INSERT INTO `qs_category_district` VALUES ('314', '31', '惠山', '0', '', '', 'huishan');
INSERT INTO `qs_category_district` VALUES ('315', '31', '北塘周边', '0', '', '', 'beitangzhoubian');
INSERT INTO `qs_category_district` VALUES ('316', '32', '东亭', '0', '', '', 'dongting');
INSERT INTO `qs_category_district` VALUES ('317', '32', '安镇', '0', '', '', 'anzhen');
INSERT INTO `qs_category_district` VALUES ('318', '32', '羊尖', '0', '', '', 'yangjian');
INSERT INTO `qs_category_district` VALUES ('319', '32', '鹅湖', '0', '', '', 'ehu');
INSERT INTO `qs_category_district` VALUES ('320', '32', '东北塘', '0', '', '', 'dongbeitang');
INSERT INTO `qs_category_district` VALUES ('321', '32', '鸿山', '0', '', '', 'xshongsan');
INSERT INTO `qs_category_district` VALUES ('322', '32', '锡北', '0', '', '', 'xibei');
INSERT INTO `qs_category_district` VALUES ('323', '32', '东港', '0', '', '', 'donggang');
INSERT INTO `qs_category_district` VALUES ('324', '32', '锡山周边', '0', '', '', 'xishanzhoubian');
INSERT INTO `qs_category_district` VALUES ('325', '33', '堰桥', '0', '', '', 'yanqiao');
INSERT INTO `qs_category_district` VALUES ('326', '33', '长安', '0', '', '', 'changan');
INSERT INTO `qs_category_district` VALUES ('327', '33', '钱桥', '0', '', '', 'qianqiao');
INSERT INTO `qs_category_district` VALUES ('328', '33', '前洲镇', '0', '', '', 'qianzhouzhen');
INSERT INTO `qs_category_district` VALUES ('329', '33', '玉祁镇', '0', '', '', 'yuqizhen');
INSERT INTO `qs_category_district` VALUES ('330', '33', '洛社镇', '0', '', '', 'luoshezhen');
INSERT INTO `qs_category_district` VALUES ('331', '33', '阳山镇', '0', '', '', 'yangshanzhen');
INSERT INTO `qs_category_district` VALUES ('332', '33', '惠山周边', '0', '', '', 'huishanzhoubian');
INSERT INTO `qs_category_district` VALUES ('333', '34', '河埒', '0', '', '', 'helie');
INSERT INTO `qs_category_district` VALUES ('334', '34', '荣巷', '0', '', '', 'rongxiang');
INSERT INTO `qs_category_district` VALUES ('335', '34', '蠡园', '0', '', '', 'liyuan');
INSERT INTO `qs_category_district` VALUES ('336', '34', '蠡湖', '0', '', '', 'lihu');
INSERT INTO `qs_category_district` VALUES ('337', '34', '太湖', '0', '', '', 'taihu');
INSERT INTO `qs_category_district` VALUES ('338', '34', '滨湖', '0', '', '', 'bhbinhu');
INSERT INTO `qs_category_district` VALUES ('339', '34', '华庄', '0', '', '', 'huazhuang');
INSERT INTO `qs_category_district` VALUES ('340', '34', '雪浪', '0', '', '', 'xuelang');
INSERT INTO `qs_category_district` VALUES ('341', '34', '马山镇', '0', '', '', 'mashanzhen');
INSERT INTO `qs_category_district` VALUES ('342', '34', '胡埭镇', '0', '', '', 'hudaizhen');
INSERT INTO `qs_category_district` VALUES ('343', '34', '滨湖周边', '0', '', '', 'binhuzhoubian');
INSERT INTO `qs_category_district` VALUES ('344', '35', '旺庄', '0', '', '', 'wangzhuang');
INSERT INTO `qs_category_district` VALUES ('345', '35', '江溪', '0', '', '', 'jiangxi');
INSERT INTO `qs_category_district` VALUES ('346', '35', '梅村', '0', '', '', 'meicun');
INSERT INTO `qs_category_district` VALUES ('347', '35', '鸿山', '0', '', '', 'xqhongshan');
INSERT INTO `qs_category_district` VALUES ('348', '35', '新安', '0', '', '', 'xinan');
INSERT INTO `qs_category_district` VALUES ('349', '35', '长江路', '0', '', '', 'xqchangjianglu');
INSERT INTO `qs_category_district` VALUES ('350', '35', '生态园', '0', '', '', 'shengtaiyuan');
INSERT INTO `qs_category_district` VALUES ('351', '35', '太湖花园', '0', '', '', 'taihuhuayuan');
INSERT INTO `qs_category_district` VALUES ('352', '35', '硕放', '0', '', '', 'shuofang');
INSERT INTO `qs_category_district` VALUES ('353', '35', '新区周边', '0', '', '', 'xinquzhoubian');
INSERT INTO `qs_category_district` VALUES ('354', '36', '澄江街道', '0', '', '', 'chengjiangjiedao');
INSERT INTO `qs_category_district` VALUES ('355', '36', '城东街道', '0', '', '', 'chengdongjiedao');
INSERT INTO `qs_category_district` VALUES ('356', '36', '夏港街道', '0', '', '', 'xiagangjiedao');
INSERT INTO `qs_category_district` VALUES ('357', '36', '申港街道', '0', '', '', 'shengangjiedao');
INSERT INTO `qs_category_district` VALUES ('358', '36', '南闸街道', '0', '', '', 'nanzhajiedao');
INSERT INTO `qs_category_district` VALUES ('359', '36', '云亭街道', '0', '', '', 'yuntingjiedao');
INSERT INTO `qs_category_district` VALUES ('360', '36', '璜土镇', '0', '', '', 'huangtuzhen');
INSERT INTO `qs_category_district` VALUES ('361', '36', '利港镇', '0', '', '', 'ligangzhen');
INSERT INTO `qs_category_district` VALUES ('362', '36', '月城镇', '0', '', '', 'yuechengzhen');
INSERT INTO `qs_category_district` VALUES ('363', '36', '青阳镇', '0', '', '', 'qingyangzhen');
INSERT INTO `qs_category_district` VALUES ('364', '36', '徐霞客镇', '0', '', '', 'xuxiakezhen');
INSERT INTO `qs_category_district` VALUES ('365', '36', '华士镇', '0', '', '', 'huashizhen');
INSERT INTO `qs_category_district` VALUES ('366', '36', '周庄镇', '0', '', '', 'zhouzhuangzhen');
INSERT INTO `qs_category_district` VALUES ('367', '36', '新桥镇', '0', '', '', 'xinqiaozhen');
INSERT INTO `qs_category_district` VALUES ('368', '36', '长泾镇', '0', '', '', 'changjingzhen');
INSERT INTO `qs_category_district` VALUES ('369', '36', '顾山镇', '0', '', '', 'gushanzhen');
INSERT INTO `qs_category_district` VALUES ('370', '36', '祝塘镇', '0', '', '', 'zhutangzhen');
INSERT INTO `qs_category_district` VALUES ('371', '36', '江阴周边', '0', '', '', 'jiangyinzhoubian');
INSERT INTO `qs_category_district` VALUES ('372', '37', '宜城街道', '0', '', '', 'yichengjiedao');
INSERT INTO `qs_category_district` VALUES ('373', '37', '屺亭街道', '0', '', '', 'qitingjiedao');
INSERT INTO `qs_category_district` VALUES ('374', '37', '新街街道', '0', '', '', 'xinjiejiedao');
INSERT INTO `qs_category_district` VALUES ('375', '37', '新庄街道', '0', '', '', 'xinzhuangjiedao');
INSERT INTO `qs_category_district` VALUES ('376', '37', '张渚镇', '0', '', '', 'zhangzhuzhen');
INSERT INTO `qs_category_district` VALUES ('377', '37', '西渚镇', '0', '', '', 'xizhuzhen');
INSERT INTO `qs_category_district` VALUES ('378', '37', '太华镇', '0', '', '', 'taihuazhen');
INSERT INTO `qs_category_district` VALUES ('379', '37', '徐舍镇', '0', '', '', 'xushezhen');
INSERT INTO `qs_category_district` VALUES ('380', '37', '官林镇', '0', '', '', 'guanlinzhen');
INSERT INTO `qs_category_district` VALUES ('381', '37', '杨巷镇', '0', '', '', 'yangxiangzhen');
INSERT INTO `qs_category_district` VALUES ('382', '37', '新建镇', '0', '', '', 'xinjianzhen');
INSERT INTO `qs_category_district` VALUES ('383', '37', '和桥镇', '0', '', '', 'heqiaozhen');
INSERT INTO `qs_category_district` VALUES ('384', '37', '高塍镇', '0', '', '', 'gaochengzhen');
INSERT INTO `qs_category_district` VALUES ('385', '37', '万石镇', '0', '', '', 'wanshizhen');
INSERT INTO `qs_category_district` VALUES ('386', '37', '周铁镇', '0', '', '', 'zhoutiezhen');
INSERT INTO `qs_category_district` VALUES ('387', '37', '芳桥镇', '0', '', '', 'fangqiaozhen');
INSERT INTO `qs_category_district` VALUES ('388', '37', '丁蜀镇', '0', '', '', 'dingshuzhen');
INSERT INTO `qs_category_district` VALUES ('389', '37', '湖父镇', '0', '', '', 'hufuzhen');
INSERT INTO `qs_category_district` VALUES ('390', '37', '宜兴周边', '0', '', '', 'yixingzhoubian');
INSERT INTO `qs_category_district` VALUES ('391', '39', '双塔', '0', '', '', 'shuangta');
INSERT INTO `qs_category_district` VALUES ('392', '39', '南门', '0', '', '', 'nanmen');
INSERT INTO `qs_category_district` VALUES ('393', '39', '胥江', '0', '', '', 'xujiang');
INSERT INTO `qs_category_district` VALUES ('394', '39', '吴门桥', '0', '', '', 'wumenqiao');
INSERT INTO `qs_category_district` VALUES ('395', '39', '葑门', '0', '', '', 'fengmen');
INSERT INTO `qs_category_district` VALUES ('396', '39', '友新', '0', '', '', 'youxin');
INSERT INTO `qs_category_district` VALUES ('397', '39', '沧浪新城', '0', '', '', 'canglangxincheng');
INSERT INTO `qs_category_district` VALUES ('398', '39', '沧浪周边', '0', '', '', 'canglangzhoubian');
INSERT INTO `qs_category_district` VALUES ('399', '40', '元和', '0', '', '', 'yuanhe');
INSERT INTO `qs_category_district` VALUES ('400', '40', '太平', '0', '', '', 'taiping');
INSERT INTO `qs_category_district` VALUES ('401', '40', '黄桥', '0', '', '', 'huangqiao');
INSERT INTO `qs_category_district` VALUES ('402', '40', '北桥', '0', '', '', 'beiqiao');
INSERT INTO `qs_category_district` VALUES ('403', '40', '望亭', '0', '', '', 'wangting');
INSERT INTO `qs_category_district` VALUES ('404', '40', '黄埭', '0', '', '', 'huangdai');
INSERT INTO `qs_category_district` VALUES ('405', '40', '渭塘', '0', '', '', 'weitang');
INSERT INTO `qs_category_district` VALUES ('406', '40', '阳澄湖', '0', '', '', 'yangchenghu');
INSERT INTO `qs_category_district` VALUES ('407', '40', '陆幕', '0', '', '', 'lumu');
INSERT INTO `qs_category_district` VALUES ('408', '40', '相城周边', '0', '', '', 'xiangchengzhoubian');
INSERT INTO `qs_category_district` VALUES ('409', '41', '平江', '0', '', '', 'pingjiang');
INSERT INTO `qs_category_district` VALUES ('410', '41', '桃花坞', '0', '', '', 'taohuawu');
INSERT INTO `qs_category_district` VALUES ('411', '41', '城北', '0', '', '', 'chengbei');
INSERT INTO `qs_category_district` VALUES ('412', '41', '娄门', '0', '', '', 'loumen');
INSERT INTO `qs_category_district` VALUES ('413', '41', '观前', '0', '', '', 'guanqian');
INSERT INTO `qs_category_district` VALUES ('414', '41', '苏锦', '0', '', '', 'sujin');
INSERT INTO `qs_category_district` VALUES ('415', '41', '平江新城', '0', '', '', 'pingjiangxincheng');
INSERT INTO `qs_category_district` VALUES ('416', '41', '万达', '0', '', '', 'wanda');
INSERT INTO `qs_category_district` VALUES ('417', '41', '平江周边', '0', '', '', 'pingjiangzhoubian');
INSERT INTO `qs_category_district` VALUES ('418', '42', '石路', '0', '', '', 'shilu');
INSERT INTO `qs_category_district` VALUES ('419', '42', '彩香', '0', '', '', 'caixiang');
INSERT INTO `qs_category_district` VALUES ('420', '42', '留园', '0', '', '', 'liuyuan');
INSERT INTO `qs_category_district` VALUES ('421', '42', '白洋湾', '0', '', '', 'baiyangwan');
INSERT INTO `qs_category_district` VALUES ('422', '42', '金阊新城', '0', '', '', 'jinchangxincheng');
INSERT INTO `qs_category_district` VALUES ('423', '42', '西园', '0', '', '', 'xiyuan');
INSERT INTO `qs_category_district` VALUES ('424', '42', '金阊周边', '0', '', '', 'jinchangzhoubian');
INSERT INTO `qs_category_district` VALUES ('425', '43', '娄葑', '0', '', '', 'loufeng');
INSERT INTO `qs_category_district` VALUES ('426', '43', '唯亭', '0', '', '', 'weiting');
INSERT INTO `qs_category_district` VALUES ('427', '43', '胜浦', '0', '', '', 'shengpu');
INSERT INTO `qs_category_district` VALUES ('428', '43', '湖西', '0', '', '', 'huxi');
INSERT INTO `qs_category_district` VALUES ('429', '43', '湖东', '0', '', '', 'hudong');
INSERT INTO `qs_category_district` VALUES ('430', '43', '东环', '0', '', '', 'donghuan');
INSERT INTO `qs_category_district` VALUES ('431', '43', '斜塘', '0', '', '', 'xietang');
INSERT INTO `qs_category_district` VALUES ('432', '43', '独墅湖', '0', '', '', 'dushuhu');
INSERT INTO `qs_category_district` VALUES ('433', '43', '青剑湖', '0', '', '', 'qingjianhu');
INSERT INTO `qs_category_district` VALUES ('434', '43', '师惠', '0', '', '', 'shihui');
INSERT INTO `qs_category_district` VALUES ('435', '43', '贵都', '0', '', '', 'guidu');
INSERT INTO `qs_category_district` VALUES ('436', '43', '玲珑', '0', '', '', 'linglong');
INSERT INTO `qs_category_district` VALUES ('437', '43', '工业园周边', '0', '', '', 'gongyeyuanzhoubian');
INSERT INTO `qs_category_district` VALUES ('438', '44', '苏苑', '0', '', '', 'suyuan');
INSERT INTO `qs_category_district` VALUES ('439', '44', '长桥', '0', '', '', 'changqiao');
INSERT INTO `qs_category_district` VALUES ('440', '44', '龙西', '0', '', '', 'longxi');
INSERT INTO `qs_category_district` VALUES ('441', '44', '城南', '0', '', '', 'chengnan');
INSERT INTO `qs_category_district` VALUES ('442', '44', '越溪', '0', '', '', 'yuexi');
INSERT INTO `qs_category_district` VALUES ('443', '44', '横泾', '0', '', '', 'hengjing');
INSERT INTO `qs_category_district` VALUES ('444', '44', '郭巷', '0', '', '', 'guoxiang');
INSERT INTO `qs_category_district` VALUES ('445', '44', '木渎', '0', '', '', 'mudu');
INSERT INTO `qs_category_district` VALUES ('446', '44', '香山', '0', '', '', 'xiangshan');
INSERT INTO `qs_category_district` VALUES ('447', '44', '甪直', '0', '', '', 'luzhi');
INSERT INTO `qs_category_district` VALUES ('448', '44', '胥口', '0', '', '', 'xukou');
INSERT INTO `qs_category_district` VALUES ('449', '44', '临湖镇', '0', '', '', 'linhuzhen');
INSERT INTO `qs_category_district` VALUES ('450', '44', '桃源', '0', '', '', 'taoyuan');
INSERT INTO `qs_category_district` VALUES ('451', '44', '震泽', '0', '', '', 'zhenze');
INSERT INTO `qs_category_district` VALUES ('452', '44', '光福', '0', '', '', 'guangfu');
INSERT INTO `qs_category_district` VALUES ('453', '44', '吴中周边', '0', '', '', 'wuzhongzhoubian');
INSERT INTO `qs_category_district` VALUES ('454', '45', '松陵', '0', '', '', 'songling');
INSERT INTO `qs_category_district` VALUES ('455', '45', '同里', '0', '', '', 'tongli');
INSERT INTO `qs_category_district` VALUES ('456', '45', '盛泽', '0', '', '', 'shengze');
INSERT INTO `qs_category_district` VALUES ('457', '45', '平望', '0', '', '', 'pingwang');
INSERT INTO `qs_category_district` VALUES ('458', '45', '汾湖', '0', '', '', 'fenhu');
INSERT INTO `qs_category_district` VALUES ('459', '45', '芦墟', '0', '', '', 'luxu');
INSERT INTO `qs_category_district` VALUES ('460', '45', '吴江周边', '0', '', '', 'wujiangzhoubian');
INSERT INTO `qs_category_district` VALUES ('461', '46', '横塘', '0', '', '', 'hengtang');
INSERT INTO `qs_category_district` VALUES ('462', '46', '狮山', '0', '', '', 'shishan');
INSERT INTO `qs_category_district` VALUES ('463', '46', '枫桥', '0', '', '', 'fengqiao');
INSERT INTO `qs_category_district` VALUES ('464', '46', '镇湖', '0', '', '', 'zhenhu');
INSERT INTO `qs_category_district` VALUES ('465', '46', '浒墅关', '0', '', '', 'xushuguan');
INSERT INTO `qs_category_district` VALUES ('466', '46', '通安', '0', '', '', 'tongan');
INSERT INTO `qs_category_district` VALUES ('467', '46', '虎丘', '0', '', '', 'huqiu');
INSERT INTO `qs_category_district` VALUES ('468', '46', '东渚', '0', '', '', 'dongzhu');
INSERT INTO `qs_category_district` VALUES ('469', '46', '玉山', '0', '', '', 'yushan');
INSERT INTO `qs_category_district` VALUES ('470', '46', '高新区周边', '0', '', '', 'gaoxinquzhoubian');
INSERT INTO `qs_category_district` VALUES ('471', '48', '玉山城南', '0', '', '', 'yushanchengnan');
INSERT INTO `qs_category_district` VALUES ('472', '48', '玉山城西', '0', '', '', 'yushanchengxi');
INSERT INTO `qs_category_district` VALUES ('473', '48', '玉山城东', '0', '', '', 'yushanchengdong');
INSERT INTO `qs_category_district` VALUES ('474', '48', '玉山城北', '0', '', '', 'yushanchengbei');
INSERT INTO `qs_category_district` VALUES ('475', '48', '周市', '0', '', '', 'zhoushi');
INSERT INTO `qs_category_district` VALUES ('476', '48', '巴城', '0', '', '', 'bacheng');
INSERT INTO `qs_category_district` VALUES ('477', '48', '张浦', '0', '', '', 'zhangpu');
INSERT INTO `qs_category_district` VALUES ('478', '48', '陆家', '0', '', '', 'lujia');
INSERT INTO `qs_category_district` VALUES ('479', '48', '花桥', '0', '', '', 'huaqiao');
INSERT INTO `qs_category_district` VALUES ('480', '48', '千灯', '0', '', '', 'qiandeng');
INSERT INTO `qs_category_district` VALUES ('481', '48', '老城区', '0', '', '', 'laochengqu');
INSERT INTO `qs_category_district` VALUES ('482', '48', '蓬朗镇', '0', '', '', 'penglangzhen');
INSERT INTO `qs_category_district` VALUES ('483', '48', '锦溪', '0', '', '', 'jinxi');
INSERT INTO `qs_category_district` VALUES ('484', '48', '周庄', '0', '', '', 'zhouzhuang');
INSERT INTO `qs_category_district` VALUES ('485', '48', '淀山湖', '0', '', '', 'dianshanhu');
INSERT INTO `qs_category_district` VALUES ('486', '48', '昆山周边', '0', '', '', 'kunshanzhoubian');
INSERT INTO `qs_category_district` VALUES ('487', '49', '虞山', '0', '', '', 'csyushan');
INSERT INTO `qs_category_district` VALUES ('488', '49', '梅李', '0', '', '', 'meili');
INSERT INTO `qs_category_district` VALUES ('489', '49', '海虞', '0', '', '', 'haiyu');
INSERT INTO `qs_category_district` VALUES ('490', '49', '古里', '0', '', '', 'guli');
INSERT INTO `qs_category_district` VALUES ('491', '49', '沙家浜', '0', '', '', 'shajiabang');
INSERT INTO `qs_category_district` VALUES ('492', '49', '支塘', '0', '', '', 'zhitang');
INSERT INTO `qs_category_district` VALUES ('493', '49', '董浜', '0', '', '', 'dongbang');
INSERT INTO `qs_category_district` VALUES ('494', '49', '尚湖', '0', '', '', 'shanghu');
INSERT INTO `qs_category_district` VALUES ('495', '49', '辛庄', '0', '', '', 'xinzhuang');
INSERT INTO `qs_category_district` VALUES ('496', '49', '碧溪', '0', '', '', 'bixi');
INSERT INTO `qs_category_district` VALUES ('497', '49', '常熟周边', '0', '', '', 'changshuzhoubian');
INSERT INTO `qs_category_district` VALUES ('498', '50', '市中心', '0', '', '', 'zjgshizhongxin');
INSERT INTO `qs_category_district` VALUES ('499', '50', '城东', '0', '', '', 'zjgchengdong');
INSERT INTO `qs_category_district` VALUES ('500', '50', '城南', '0', '', '', 'zjgchengnan');
INSERT INTO `qs_category_district` VALUES ('501', '50', '城西', '0', '', '', 'zjgchengxi');
INSERT INTO `qs_category_district` VALUES ('502', '50', '城北', '0', '', '', 'zjgchengbei');
INSERT INTO `qs_category_district` VALUES ('503', '50', '张家港周边', '0', '', '', 'zhangjiagangzhoubian');
INSERT INTO `qs_category_district` VALUES ('504', '52', '民营工业', '0', '', '', 'minyinggongye');
INSERT INTO `qs_category_district` VALUES ('505', '52', '绿地世纪', '0', '', '', 'lvdishiji');
INSERT INTO `qs_category_district` VALUES ('506', '52', '九七医院', '0', '', '', 'jiuqiyiyuan');
INSERT INTO `qs_category_district` VALUES ('507', '52', '楚王陵', '0', '', '', 'chuwangling');
INSERT INTO `qs_category_district` VALUES ('508', '52', '天桥东', '0', '', '', 'tianqiaodong');
INSERT INTO `qs_category_district` VALUES ('509', '52', '戏马台', '0', '', '', 'ximatai');
INSERT INTO `qs_category_district` VALUES ('510', '52', '沃尔玛', '0', '', '', 'woerma');
INSERT INTO `qs_category_district` VALUES ('511', '52', '宣武市场', '0', '', '', 'xuanwushichang');
INSERT INTO `qs_category_district` VALUES ('512', '52', '丰储街', '0', '', '', 'fengchujie');
INSERT INTO `qs_category_district` VALUES ('513', '52', '火车站', '0', '', '', 'huochezhan');
INSERT INTO `qs_category_district` VALUES ('514', '52', '郭庄路', '0', '', '', 'guozhuanglu');
INSERT INTO `qs_category_district` VALUES ('515', '52', '青年路', '0', '', '', 'qingnianlu');
INSERT INTO `qs_category_district` VALUES ('516', '52', '尚仕名邸', '0', '', '', 'shangshiming');
INSERT INTO `qs_category_district` VALUES ('517', '52', '师大北门', '0', '', '', 'shidabeimen');
INSERT INTO `qs_category_district` VALUES ('518', '52', '彭城路', '0', '', '', 'pengchenglu');
INSERT INTO `qs_category_district` VALUES ('519', '52', '户部山', '0', '', '', 'hubushan');
INSERT INTO `qs_category_district` VALUES ('520', '52', '汽车客运', '0', '', '', 'qichekeyun');
INSERT INTO `qs_category_district` VALUES ('521', '52', '世茂广场', '0', '', '', 'shimaoguangchang');
INSERT INTO `qs_category_district` VALUES ('522', '52', '食品城', '0', '', '', 'shipincheng');
INSERT INTO `qs_category_district` VALUES ('523', '52', '御景湾', '0', '', '', 'yujingwan');
INSERT INTO `qs_category_district` VALUES ('524', '52', '黄山新村', '0', '', '', 'huangshanxincun');
INSERT INTO `qs_category_district` VALUES ('525', '52', '云龙华府', '0', '', '', 'yunlonghuafu');
INSERT INTO `qs_category_district` VALUES ('526', '52', '民富园', '0', '', '', 'minfuyuan');
INSERT INTO `qs_category_district` VALUES ('527', '52', '万达广场', '0', '', '', 'wandaguangchang');
INSERT INTO `qs_category_district` VALUES ('528', '52', '云龙周边', '0', '', '', 'yunlongzhoubian');
INSERT INTO `qs_category_district` VALUES ('529', '53', '九里', '0', '', '', 'jiuli');
INSERT INTO `qs_category_district` VALUES ('530', '53', '金山桥', '0', '', '', 'jinshanqiao');
INSERT INTO `qs_category_district` VALUES ('531', '53', '彭城广场', '0', '', '', 'pengchengguangchang');
INSERT INTO `qs_category_district` VALUES ('532', '53', '四道街', '0', '', '', 'sidaojie');
INSERT INTO `qs_category_district` VALUES ('533', '53', '中枢街', '0', '', '', 'zhongshujie');
INSERT INTO `qs_category_district` VALUES ('534', '53', '大马路', '0', '', '', 'damalu');
INSERT INTO `qs_category_district` VALUES ('535', '53', '下淀路', '0', '', '', 'xiadianlu');
INSERT INTO `qs_category_district` VALUES ('536', '53', '民主北路', '0', '', '', 'minzhubeilu');
INSERT INTO `qs_category_district` VALUES ('537', '53', '庆云桥西', '0', '', '', 'qingyunqiaoxi');
INSERT INTO `qs_category_district` VALUES ('538', '53', '堤北', '0', '', '', 'dibei');
INSERT INTO `qs_category_district` VALUES ('539', '53', '清水湾', '0', '', '', 'qingshuiwan');
INSERT INTO `qs_category_district` VALUES ('540', '53', '锦绣山水', '0', '', '', 'jinxiushanshui');
INSERT INTO `qs_category_district` VALUES ('541', '53', '祥和小区', '0', '', '', 'xianghexiaoqu');
INSERT INTO `qs_category_district` VALUES ('542', '53', '荆马河', '0', '', '', 'jingmahe');
INSERT INTO `qs_category_district` VALUES ('543', '53', '和风雅致', '0', '', '', 'hefengyazhi');
INSERT INTO `qs_category_district` VALUES ('544', '53', '下淀', '0', '', '', 'xiadian');
INSERT INTO `qs_category_district` VALUES ('545', '53', '杨庄', '0', '', '', 'yangzhuang');
INSERT INTO `qs_category_district` VALUES ('546', '53', '煤港路', '0', '', '', 'meiganglu');
INSERT INTO `qs_category_district` VALUES ('547', '53', '1818', '0', '', '', 'yibayiba');
INSERT INTO `qs_category_district` VALUES ('548', '53', '祥和路', '0', '', '', 'xianghelu');
INSERT INTO `qs_category_district` VALUES ('549', '53', '古彭广场', '0', '', '', 'gupengguangchang');
INSERT INTO `qs_category_district` VALUES ('550', '53', '响山路', '0', '', '', 'xiangshanlu');
INSERT INTO `qs_category_district` VALUES ('551', '53', '东站', '0', '', '', 'dongzhan');
INSERT INTO `qs_category_district` VALUES ('552', '53', '华联商厦', '0', '', '', 'hualianshangxia');
INSERT INTO `qs_category_district` VALUES ('553', '53', '富国街', '0', '', '', 'fuguojie');
INSERT INTO `qs_category_district` VALUES ('554', '53', '鼓楼花园', '0', '', '', 'gulouhuayuan');
INSERT INTO `qs_category_district` VALUES ('555', '53', '鼓楼广场', '0', '', '', 'gulouguangchang');
INSERT INTO `qs_category_district` VALUES ('556', '53', '富源国际', '0', '', '', 'fuyuanguoji');
INSERT INTO `qs_category_district` VALUES ('557', '53', '九龙湖', '0', '', '', 'jiulonghu');
INSERT INTO `qs_category_district` VALUES ('558', '53', '鼓楼周边', '0', '', '', 'xzgulouzhoubian');
INSERT INTO `qs_category_district` VALUES ('559', '54', '人民公园', '0', '', '', 'renmingongyuan');
INSERT INTO `qs_category_district` VALUES ('560', '54', '步行街', '0', '', '', 'buxingjie');
INSERT INTO `qs_category_district` VALUES ('561', '54', '世纪西路', '0', '', '', 'shijixilu');
INSERT INTO `qs_category_district` VALUES ('562', '54', '青山泉镇', '0', '', '', 'qingshanquanzhen');
INSERT INTO `qs_category_district` VALUES ('563', '54', '新夏路口', '0', '', '', 'xinxialukou');
INSERT INTO `qs_category_district` VALUES ('564', '54', '贾汪周边', '0', '', '', 'jiawangzhoubian');
INSERT INTO `qs_category_district` VALUES ('565', '55', '贵邦财富', '0', '', '', 'guibangcaifu');
INSERT INTO `qs_category_district` VALUES ('566', '55', '大润发', '0', '', '', 'darunfa');
INSERT INTO `qs_category_district` VALUES ('567', '55', '永安广场', '0', '', '', 'yonganguangchang');
INSERT INTO `qs_category_district` VALUES ('568', '55', '易初爱莲', '0', '', '', 'yichuailian');
INSERT INTO `qs_category_district` VALUES ('569', '55', '香港名店', '0', '', '', 'xianggangmingdian');
INSERT INTO `qs_category_district` VALUES ('570', '55', '夹河街东', '0', '', '', 'jiahejiedong');
INSERT INTO `qs_category_district` VALUES ('571', '55', '建国西路', '0', '', '', 'jianguoxilu');
INSERT INTO `qs_category_district` VALUES ('572', '55', '奎园西门', '0', '', '', 'kuiyuanximen');
INSERT INTO `qs_category_district` VALUES ('573', '55', '凤鸣路', '0', '', '', 'fengminglu');
INSERT INTO `qs_category_district` VALUES ('574', '55', '矿业大学', '0', '', '', 'kuangyedaxue');
INSERT INTO `qs_category_district` VALUES ('575', '55', '泉山周边', '0', '', '', 'quanshanzhoubian');
INSERT INTO `qs_category_district` VALUES ('576', '56', '铜山新区', '0', '', '', 'tongshanxinqu');
INSERT INTO `qs_category_district` VALUES ('577', '56', '文泰康城', '0', '', '', 'wentaikangcheng');
INSERT INTO `qs_category_district` VALUES ('578', '56', '铜山万达', '0', '', '', 'tongshanwanda');
INSERT INTO `qs_category_district` VALUES ('579', '56', '国基城邦', '0', '', '', 'guojichengbang');
INSERT INTO `qs_category_district` VALUES ('580', '56', '久隆凤凰', '0', '', '', 'jiulongfenghuang');
INSERT INTO `qs_category_district` VALUES ('581', '56', '檀香山', '0', '', '', 'tanxiangshan');
INSERT INTO `qs_category_district` VALUES ('582', '56', '居乐园', '0', '', '', 'juleyuan');
INSERT INTO `qs_category_district` VALUES ('583', '56', '铜山周边', '0', '', '', 'tongshanzhoubian');
INSERT INTO `qs_category_district` VALUES ('584', '57', '高铁站', '0', '', '', 'gaotiezhan');
INSERT INTO `qs_category_district` VALUES ('585', '57', '金龙湖', '0', '', '', 'jinlonghu');
INSERT INTO `qs_category_district` VALUES ('586', '57', '泰隆商业', '0', '', '', 'tailongshangye');
INSERT INTO `qs_category_district` VALUES ('587', '57', '碧螺山庄', '0', '', '', 'biluoshanzhuang');
INSERT INTO `qs_category_district` VALUES ('588', '57', '蟠桃花园', '0', '', '', 'pantaohuayuan');
INSERT INTO `qs_category_district` VALUES ('589', '57', '城置国际', '0', '', '', 'chengzhiguoji');
INSERT INTO `qs_category_district` VALUES ('590', '57', '金山开发区周边·', '0', '', '', 'jskaifaquzhoubian');
INSERT INTO `qs_category_district` VALUES ('591', '58', '新市政府', '0', '', '', 'xinshizhengfu');
INSERT INTO `qs_category_district` VALUES ('592', '58', '青年路小', '0', '', '', 'qingnianluxiao');
INSERT INTO `qs_category_district` VALUES ('593', '58', '奥体中心', '0', '', '', 'aotizhongxin');
INSERT INTO `qs_category_district` VALUES ('594', '58', '大龙湖', '0', '', '', 'dalonghu');
INSERT INTO `qs_category_district` VALUES ('595', '58', '龙湖国际', '0', '', '', 'longhuguoji');
INSERT INTO `qs_category_district` VALUES ('596', '58', '绿地商务', '0', '', '', 'lvdishangwu');
INSERT INTO `qs_category_district` VALUES ('597', '58', '人才家园', '0', '', '', 'rencaijiayuan');
INSERT INTO `qs_category_district` VALUES ('598', '58', '临春河', '0', '', '', 'linchunhe');
INSERT INTO `qs_category_district` VALUES ('599', '58', '月川路', '0', '', '', 'yuechuanlu');
INSERT INTO `qs_category_district` VALUES ('600', '58', '凤凰路', '0', '', '', 'fenghuanglu');
INSERT INTO `qs_category_district` VALUES ('601', '58', '春光路', '0', '', '', 'chunguanglu');
INSERT INTO `qs_category_district` VALUES ('602', '58', '月川中路', '0', '', '', 'yuechuanzhonglu');
INSERT INTO `qs_category_district` VALUES ('603', '58', '新城周边', '0', '', '', 'xzxinchengzhoubian');
INSERT INTO `qs_category_district` VALUES ('604', '66', '红梅', '0', '', '', 'hongmei');
INSERT INTO `qs_category_district` VALUES ('605', '66', '兰陵', '0', '', '', 'lanling');
INSERT INTO `qs_category_district` VALUES ('606', '66', '青龙', '0', '', '', 'qinglong');
INSERT INTO `qs_category_district` VALUES ('607', '66', '清凉', '0', '', '', 'qingliang');
INSERT INTO `qs_category_district` VALUES ('608', '66', '丽华', '0', '', '', 'lihua');
INSERT INTO `qs_category_district` VALUES ('609', '66', '北环路', '0', '', '', 'beihuanlu');
INSERT INTO `qs_category_district` VALUES ('610', '66', '文化宫', '0', '', '', 'wenhuagong');
INSERT INTO `qs_category_district` VALUES ('611', '66', '朝阳', '0', '', '', 'chaoyang');
INSERT INTO `qs_category_district` VALUES ('612', '66', '青山湾', '0', '', '', 'qingshanwan');
INSERT INTO `qs_category_district` VALUES ('613', '66', '中凉', '0', '', '', 'zhongliang');
INSERT INTO `qs_category_district` VALUES ('614', '66', '翠竹', '0', '', '', 'cuizhu');
INSERT INTO `qs_category_district` VALUES ('615', '66', '天宁周边', '0', '', '', 'tianningzhoubian');
INSERT INTO `qs_category_district` VALUES ('616', '67', '遥观', '0', '', '', 'yaoguan');
INSERT INTO `qs_category_district` VALUES ('617', '67', '滆湖', '0', '', '', 'gehu');
INSERT INTO `qs_category_district` VALUES ('618', '67', '湖塘', '0', '', '', 'hutang');
INSERT INTO `qs_category_district` VALUES ('619', '67', '大学城', '0', '', '', 'daxuecheng');
INSERT INTO `qs_category_district` VALUES ('620', '67', '高新区', '0', '', '', 'wjgaoxinqu');
INSERT INTO `qs_category_district` VALUES ('621', '67', '横山桥', '0', '', '', 'hengshanqiao');
INSERT INTO `qs_category_district` VALUES ('622', '67', '湖塘乐购', '0', '', '', 'hutanglegou');
INSERT INTO `qs_category_district` VALUES ('623', '67', '邹区', '0', '', '', 'zouqu');
INSERT INTO `qs_category_district` VALUES ('624', '67', '西太湖', '0', '', '', 'xitaihu');
INSERT INTO `qs_category_district` VALUES ('625', '67', '马杭', '0', '', '', 'mahang');
INSERT INTO `qs_category_district` VALUES ('626', '67', '花园街', '0', '', '', 'huayuanjie');
INSERT INTO `qs_category_district` VALUES ('627', '67', '横林镇', '0', '', '', 'henglinzhen');
INSERT INTO `qs_category_district` VALUES ('628', '67', '马杭里', '0', '', '', 'mahangli');
INSERT INTO `qs_category_district` VALUES ('629', '67', '武进周边', '0', '', '', 'wujinzhoubian');
INSERT INTO `qs_category_district` VALUES ('630', '68', '西林', '0', '', '', 'xilin');
INSERT INTO `qs_category_district` VALUES ('631', '68', '清潭', '0', '', '', 'qingtan');
INSERT INTO `qs_category_district` VALUES ('632', '68', '怀德路', '0', '', '', 'huaidelu');
INSERT INTO `qs_category_district` VALUES ('633', '68', '西新桥', '0', '', '', 'xixinqiao');
INSERT INTO `qs_category_district` VALUES ('634', '68', '荆川公园', '0', '', '', 'jingchuangongyuan');
INSERT INTO `qs_category_district` VALUES ('635', '68', '莱蒙都会', '0', '', '', 'laimengduhui');
INSERT INTO `qs_category_district` VALUES ('636', '68', '清枫公园', '0', '', '', 'qingfenggongyuan');
INSERT INTO `qs_category_district` VALUES ('637', '68', '新闸', '0', '', '', 'xinzha');
INSERT INTO `qs_category_district` VALUES ('638', '68', '花园', '0', '', '', 'huayuan');
INSERT INTO `qs_category_district` VALUES ('639', '68', '钟楼周边', '0', '', '', 'czzhonglouzhoubian');
INSERT INTO `qs_category_district` VALUES ('640', '69', '龙虎塘', '0', '', '', 'longhutang');
INSERT INTO `qs_category_district` VALUES ('641', '69', '新区公园', '0', '', '', 'xinqugongyuan');
INSERT INTO `qs_category_district` VALUES ('642', '69', '薛家', '0', '', '', 'xuanjia');
INSERT INTO `qs_category_district` VALUES ('643', '69', '飞龙路', '0', '', '', 'feilonglu');
INSERT INTO `qs_category_district` VALUES ('644', '69', '新龙', '0', '', '', 'xinlong');
INSERT INTO `qs_category_district` VALUES ('645', '69', '万达', '0', '', '', 'czwanda');
INSERT INTO `qs_category_district` VALUES ('646', '69', '市政府', '0', '', '', 'czshizhengfu');
INSERT INTO `qs_category_district` VALUES ('647', '69', '恐龙园', '0', '', '', 'konglongyuan');
INSERT INTO `qs_category_district` VALUES ('648', '69', '新桥', '0', '', '', 'xinqiao');
INSERT INTO `qs_category_district` VALUES ('649', '69', '新北周边', '0', '', '', 'xinbeizhoubian');
INSERT INTO `qs_category_district` VALUES ('650', '73', '城东板块', '0', '', '', 'chengdongbankuai');
INSERT INTO `qs_category_district` VALUES ('651', '73', '城南板块', '0', '', '', 'chengnanbankuai');
INSERT INTO `qs_category_district` VALUES ('652', '73', '城西板块', '0', '', '', 'chengxibankuai');
INSERT INTO `qs_category_district` VALUES ('653', '73', '城北板块', '0', '', '', 'chengbeibankuai');
INSERT INTO `qs_category_district` VALUES ('654', '73', '观音山板', '0', '', '', 'guanyinshanban');
INSERT INTO `qs_category_district` VALUES ('655', '73', '狼山版块', '0', '', '', 'langshanbankuai');
INSERT INTO `qs_category_district` VALUES ('656', '73', '市中心', '0', '', '', 'ntshizhongxin');
INSERT INTO `qs_category_district` VALUES ('657', '73', '崇川周边', '0', '', '', 'chongchuanzhoubian');
INSERT INTO `qs_category_district` VALUES ('658', '75', '唐闸版块', '0', '', '', 'tangzhabankuai');
INSERT INTO `qs_category_district` VALUES ('659', '75', '永兴版块', '0', '', '', 'yongxingbankuai');
INSERT INTO `qs_category_district` VALUES ('660', '75', '其他乡镇', '0', '', '', 'qitaxiangzhen');
INSERT INTO `qs_category_district` VALUES ('661', '75', '港闸周边', '0', '', '', 'gangzhazhoubian');
INSERT INTO `qs_category_district` VALUES ('662', '76', '小海版块', '0', '', '', 'xiaohaibankuai');
INSERT INTO `qs_category_district` VALUES ('663', '76', '乡镇版块', '0', '', '', 'xiangzhenbankuai');
INSERT INTO `qs_category_district` VALUES ('664', '76', '开发区周边', '0', '', '', 'ntkaifaquzhoubian');
INSERT INTO `qs_category_district` VALUES ('665', '90', '万达周边', '0', '', '', 'wandazhoubian');
INSERT INTO `qs_category_district` VALUES ('666', '90', '新亚', '0', '', '', 'xinya');
INSERT INTO `qs_category_district` VALUES ('667', '90', '金马广场', '0', '', '', 'jinmaguangchang');
INSERT INTO `qs_category_district` VALUES ('668', '90', '上海路', '0', '', '', 'shanghailu');
INSERT INTO `qs_category_district` VALUES ('669', '90', '健康东路', '0', '', '', 'jiankangdonglu');
INSERT INTO `qs_category_district` VALUES ('670', '90', '健康西路', '0', '', '', 'jiankangxilu');
INSERT INTO `qs_category_district` VALUES ('671', '90', '生态新城', '0', '', '', 'shengtaixincheng');
INSERT INTO `qs_category_district` VALUES ('672', '90', '水渡广场', '0', '', '', 'shuiduguangchang');
INSERT INTO `qs_category_district` VALUES ('673', '90', '淮海西路', '0', '', '', 'huaihaixilu');
INSERT INTO `qs_category_district` VALUES ('674', '90', '淮海东路', '0', '', '', 'huaihaidonglu');
INSERT INTO `qs_category_district` VALUES ('675', '90', '水渡口大', '0', '', '', 'shuidukouda');
INSERT INTO `qs_category_district` VALUES ('676', '90', '北京路', '0', '', '', 'beijinglu');
INSERT INTO `qs_category_district` VALUES ('677', '90', '西安路', '0', '', '', 'xianlu');
INSERT INTO `qs_category_district` VALUES ('678', '90', '清河周边', '0', '', '', 'qinghezhoubian');
INSERT INTO `qs_category_district` VALUES ('679', '91', '东大街', '0', '', '', 'dongdajie');
INSERT INTO `qs_category_district` VALUES ('680', '91', '西大街', '0', '', '', 'xidajie');
INSERT INTO `qs_category_district` VALUES ('681', '91', '解放东路', '0', '', '', 'jiefangdonglu');
INSERT INTO `qs_category_district` VALUES ('682', '91', '解放西路', '0', '', '', 'jiefangxilu');
INSERT INTO `qs_category_district` VALUES ('683', '91', '大学城', '0', '', '', 'hadaxuecheng');
INSERT INTO `qs_category_district` VALUES ('684', '91', '前进东路', '0', '', '', 'qianjindonglu');
INSERT INTO `qs_category_district` VALUES ('685', '91', '前进西路', '0', '', '', 'qianjinxilu');
INSERT INTO `qs_category_district` VALUES ('686', '91', '延安东路', '0', '', '', 'yanandonglu');
INSERT INTO `qs_category_district` VALUES ('687', '91', '延安西路', '0', '', '', 'yananxilu');
INSERT INTO `qs_category_district` VALUES ('688', '91', '天津路', '0', '', '', 'tianjinlu');
INSERT INTO `qs_category_district` VALUES ('689', '91', '柯山路', '0', '', '', 'keshanlu');
INSERT INTO `qs_category_district` VALUES ('690', '91', '人民南路', '0', '', '', 'renminnanlu');
INSERT INTO `qs_category_district` VALUES ('691', '91', '正大路', '0', '', '', 'zhengdalu');
INSERT INTO `qs_category_district` VALUES ('692', '91', '楚秀园', '0', '', '', 'chuxiuyuan');
INSERT INTO `qs_category_district` VALUES ('693', '91', '承德南路', '0', '', '', 'chengdenanlu');
INSERT INTO `qs_category_district` VALUES ('694', '91', '清浦周边', '0', '', '', 'qingpuzhoubian');
INSERT INTO `qs_category_district` VALUES ('695', '92', '小营广场', '0', '', '', 'xiaoyingguangchang');
INSERT INTO `qs_category_district` VALUES ('696', '92', '黄河东路', '0', '', '', 'huanghedonglu');
INSERT INTO `qs_category_district` VALUES ('697', '92', '黄河西路', '0', '', '', 'huanghexilu');
INSERT INTO `qs_category_district` VALUES ('698', '92', '长江东路', '0', '', '', 'changjiangdonglu');
INSERT INTO `qs_category_district` VALUES ('699', '92', '长江西路', '0', '', '', 'changjiangxilu');
INSERT INTO `qs_category_district` VALUES ('700', '92', '汽车北站', '0', '', '', 'qichebeizhan');
INSERT INTO `qs_category_district` VALUES ('701', '92', '樱花园', '0', '', '', 'yinghuayuan');
INSERT INTO `qs_category_district` VALUES ('702', '92', '大润发', '0', '', '', 'hadarunfa');
INSERT INTO `qs_category_district` VALUES ('703', '92', '北京东路', '0', '', '', 'habeijingdonglu');
INSERT INTO `qs_category_district` VALUES ('704', '92', '北京西路', '0', '', '', 'hzbeijingxilu');
INSERT INTO `qs_category_district` VALUES ('705', '92', '淮阴周边', '0', '', '', 'huaiyinzhoubian');
INSERT INTO `qs_category_district` VALUES ('706', '93', '镇淮楼', '0', '', '', 'zhenhuailou');
INSERT INTO `qs_category_district` VALUES ('707', '93', '金地商业', '0', '', '', 'jindishangye');
INSERT INTO `qs_category_district` VALUES ('708', '93', '梁红玉路', '0', '', '', 'lianghongyulu');
INSERT INTO `qs_category_district` VALUES ('709', '93', '关天培路', '0', '', '', 'guantianpeilu');
INSERT INTO `qs_category_district` VALUES ('710', '93', '东长街', '0', '', '', 'dongchangjie');
INSERT INTO `qs_category_district` VALUES ('711', '93', '西长街', '0', '', '', 'xichangjie');
INSERT INTO `qs_category_district` VALUES ('712', '93', '老西门大', '0', '', '', 'laoximenda');
INSERT INTO `qs_category_district` VALUES ('713', '93', '南门大街', '0', '', '', 'nanmendajie');
INSERT INTO `qs_category_district` VALUES ('714', '93', '北门大街', '0', '', '', 'beimendajie');
INSERT INTO `qs_category_district` VALUES ('715', '93', '城西干道', '0', '', '', 'chengxigandao');
INSERT INTO `qs_category_district` VALUES ('716', '93', '楚州大道', '0', '', '', 'chuzhoudadao');
INSERT INTO `qs_category_district` VALUES ('717', '93', '翔宇大道', '0', '', '', 'xiangyudadao');
INSERT INTO `qs_category_district` VALUES ('718', '93', '华西路', '0', '', '', 'huaxilu');
INSERT INTO `qs_category_district` VALUES ('719', '93', '楚涟路', '0', '', '', 'chulianlu');
INSERT INTO `qs_category_district` VALUES ('720', '93', '康马路', '0', '', '', 'kangmalu');
INSERT INTO `qs_category_district` VALUES ('721', '93', '镇淮东路', '0', '', '', 'zhenhuaidonglu');
INSERT INTO `qs_category_district` VALUES ('722', '93', '镇淮西路', '0', '', '', 'zhenhuaixilu');
INSERT INTO `qs_category_district` VALUES ('723', '93', '淮安区周边', '0', '', '', 'huaianquzhoubian');
INSERT INTO `qs_category_district` VALUES ('724', '94', '威海路', '0', '', '', 'weihailu');
INSERT INTO `qs_category_district` VALUES ('725', '94', '奥体中心', '0', '', '', 'haaotizhongxin');
INSERT INTO `qs_category_district` VALUES ('726', '94', '迎宾大道', '0', '', '', 'yingbindadao');
INSERT INTO `qs_category_district` VALUES ('727', '94', '机场路', '0', '', '', 'jichanglu');
INSERT INTO `qs_category_district` VALUES ('728', '94', '亿丰时代', '0', '', '', 'yifengshidai');
INSERT INTO `qs_category_district` VALUES ('729', '94', '海口路', '0', '', '', 'haikoulu');
INSERT INTO `qs_category_district` VALUES ('730', '94', '深圳路', '0', '', '', 'shenlu');
INSERT INTO `qs_category_district` VALUES ('731', '94', '开发周边', '0', '', '', 'hakaifaquzhoubian');
INSERT INTO `qs_category_district` VALUES ('732', '110', '汽车东站', '0', '', '', 'yzqichedongzhan');
INSERT INTO `qs_category_district` VALUES ('733', '110', '文昌中路', '0', '', '', 'wenchangzhonglu');
INSERT INTO `qs_category_district` VALUES ('734', '110', '江阳东路', '0', '', '', 'jiangyangdonglu');
INSERT INTO `qs_category_district` VALUES ('735', '110', '竹西公园', '0', '', '', 'zhuxigongyuan');
INSERT INTO `qs_category_district` VALUES ('736', '110', '茱萸湾', '0', '', '', 'zhuyuwan');
INSERT INTO `qs_category_district` VALUES ('737', '110', '时代广场', '0', '', '', 'shidaiguangchang');
INSERT INTO `qs_category_district` VALUES ('738', '110', '个园', '0', '', '', 'geyuan');
INSERT INTO `qs_category_district` VALUES ('739', '110', '文昌广场', '0', '', '', 'wenchangguangchang');
INSERT INTO `qs_category_district` VALUES ('740', '110', '文昌阁', '0', '', '', 'wenchangge');
INSERT INTO `qs_category_district` VALUES ('741', '110', '荷花池', '0', '', '', 'hehuachi');
INSERT INTO `qs_category_district` VALUES ('742', '110', '何园', '0', '', '', 'heyuan');
INSERT INTO `qs_category_district` VALUES ('743', '110', '东关街', '0', '', '', 'dongguanjie');
INSERT INTO `qs_category_district` VALUES ('744', '110', '毓贤街', '0', '', '', 'yuxianjie');
INSERT INTO `qs_category_district` VALUES ('745', '110', '广陵周边', '0', '', '', 'guanglingzhoubian');
INSERT INTO `qs_category_district` VALUES ('746', '111', '汊河镇', '0', '', '', 'hezhen');
INSERT INTO `qs_category_district` VALUES ('747', '111', '槐泗镇', '0', '', '', 'huaisizhen');
INSERT INTO `qs_category_district` VALUES ('748', '111', '六圩乡', '0', '', '', 'liuyuxiang');
INSERT INTO `qs_category_district` VALUES ('749', '111', '蜀岗西峰', '0', '', '', 'shugangxifeng');
INSERT INTO `qs_category_district` VALUES ('750', '111', '江阳中路', '0', '', '', 'jiangyangzhonglu');
INSERT INTO `qs_category_district` VALUES ('751', '111', '宋夹城', '0', '', '', 'songjiacheng');
INSERT INTO `qs_category_district` VALUES ('752', '111', '润扬广场', '0', '', '', 'runyangguangchang');
INSERT INTO `qs_category_district` VALUES ('753', '111', '邗江中路', '0', '', '', 'hanjiangzhonglu');
INSERT INTO `qs_category_district` VALUES ('754', '111', '汽车西站', '0', '', '', 'yzqichexizhan');
INSERT INTO `qs_category_district` VALUES ('755', '111', '兴城西路', '0', '', '', 'xingchengxilu');
INSERT INTO `qs_category_district` VALUES ('756', '111', '来鹤台广', '0', '', '', 'laihetaiguang');
INSERT INTO `qs_category_district` VALUES ('757', '111', '润扬湿地', '0', '', '', 'runyangshidi');
INSERT INTO `qs_category_district` VALUES ('758', '111', '汇金谷', '0', '', '', 'huijingu');
INSERT INTO `qs_category_district` VALUES ('759', '111', '明月湖', '0', '', '', 'mingyuehu');
INSERT INTO `qs_category_district` VALUES ('760', '111', '邗江周边', '0', '', '', 'hanjiangzhoubian');
INSERT INTO `qs_category_district` VALUES ('761', '112', '龙川街', '0', '', '', 'longchuanjie');
INSERT INTO `qs_category_district` VALUES ('762', '112', '江都商城', '0', '', '', 'jiangdushangcheng');
INSERT INTO `qs_category_district` VALUES ('763', '112', '金三元广', '0', '', '', 'jinsanyuanguang');
INSERT INTO `qs_category_district` VALUES ('764', '112', '仙城北路', '0', '', '', 'xianchengbeilu');
INSERT INTO `qs_category_district` VALUES ('765', '112', '泰山路', '0', '', '', 'taishanlu');
INSERT INTO `qs_category_district` VALUES ('766', '112', '江都汽车站', '0', '', '', 'jiangduqichezhan');
INSERT INTO `qs_category_district` VALUES ('767', '112', '仙女镇', '0', '', '', 'xiannvzhen');
INSERT INTO `qs_category_district` VALUES ('768', '112', '龙城路', '0', '', '', 'longchenglu');
INSERT INTO `qs_category_district` VALUES ('769', '112', '龙川广场', '0', '', '', 'longchuanguangchang');
INSERT INTO `qs_category_district` VALUES ('770', '112', '江都周边', '0', '', '', 'jiangduzhoubian');
INSERT INTO `qs_category_district` VALUES ('771', '117', '丁卯', '0', '', '', 'dingmao');
INSERT INTO `qs_category_district` VALUES ('772', '117', '学府路', '0', '', '', 'xuefulu');
INSERT INTO `qs_category_district` VALUES ('773', '117', '桃花坞', '0', '', '', 'zjtaohuawu');
INSERT INTO `qs_category_district` VALUES ('774', '117', '花山湾', '0', '', '', 'huashanwan');
INSERT INTO `qs_category_district` VALUES ('775', '117', '东吴路', '0', '', '', 'dongwulu');
INSERT INTO `qs_category_district` VALUES ('776', '117', '焦山', '0', '', '', 'jiaoshan');
INSERT INTO `qs_category_district` VALUES ('777', '117', '大市口周', '0', '', '', 'dashikouzhou');
INSERT INTO `qs_category_district` VALUES ('778', '117', '京口周边', '0', '', '', 'jingkouzhoubian');
INSERT INTO `qs_category_district` VALUES ('779', '118', '黄山北路', '0', '', '', 'huangshanbeilu');
INSERT INTO `qs_category_district` VALUES ('780', '118', '金山', '0', '', '', 'jinshan');
INSERT INTO `qs_category_district` VALUES ('781', '118', '朱方路', '0', '', '', 'zhufanglu');
INSERT INTO `qs_category_district` VALUES ('782', '118', '长江路', '0', '', '', 'zjchangjianglu');
INSERT INTO `qs_category_district` VALUES ('783', '118', '南徐新城', '0', '', '', 'nanxuxincheng');
INSERT INTO `qs_category_district` VALUES ('784', '118', '润山周边', '0', '', '', 'runshanzhoubian');
INSERT INTO `qs_category_district` VALUES ('785', '119', '丹徒新区', '0', '', '', 'dantuxinqu');
INSERT INTO `qs_category_district` VALUES ('786', '119', '丹徒乡镇', '0', '', '', 'dantuxiangzhen');
INSERT INTO `qs_category_district` VALUES ('787', '119', '丹徒周边', '0', '', '', 'dantuzhoubian');
INSERT INTO `qs_category_district` VALUES ('788', '120', '大港新区', '0', '', '', 'dagangxinqu');
INSERT INTO `qs_category_district` VALUES ('789', '120', '新区周边', '0', '', '', 'zjxinquzhoubian');
INSERT INTO `qs_category_district` VALUES ('790', '125', '京泰路', '0', '', '', 'jingtailu');
INSERT INTO `qs_category_district` VALUES ('791', '125', '凤凰路', '0', '', '', 'tzfenghuanglu');
INSERT INTO `qs_category_district` VALUES ('792', '125', '城中', '0', '', '', 'tzchengzhong');
INSERT INTO `qs_category_district` VALUES ('793', '125', '城东', '0', '', '', 'tzchengdong');
INSERT INTO `qs_category_district` VALUES ('794', '125', '城南', '0', '', '', 'tzchengnan');
INSERT INTO `qs_category_district` VALUES ('795', '125', '城西', '0', '', '', 'tzchengxi');
INSERT INTO `qs_category_district` VALUES ('796', '125', '城北', '0', '', '', 'tzchengbei');
INSERT INTO `qs_category_district` VALUES ('797', '125', '海陵周边', '0', '', '', 'hailingzhoubian');

-- ----------------------------
-- Table structure for qs_category_group
-- ----------------------------
DROP TABLE IF EXISTS `qs_category_group`;
CREATE TABLE `qs_category_group` (
  `g_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `g_alias` varchar(60) NOT NULL,
  `g_name` varchar(100) NOT NULL,
  `g_sys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`g_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_category_group
-- ----------------------------
INSERT INTO `qs_category_group` VALUES ('1', 'QS_trade', '行业分类', '1');
INSERT INTO `qs_category_group` VALUES ('2', 'QS_company_type', '企业性质分类', '1');
INSERT INTO `qs_category_group` VALUES ('3', 'QS_wage', '月薪分类', '1');
INSERT INTO `qs_category_group` VALUES ('4', 'QS_jobs_nature', '职位性质分类', '1');
INSERT INTO `qs_category_group` VALUES ('5', 'QS_education', '学历分类', '1');
INSERT INTO `qs_category_group` VALUES ('6', 'QS_experience', '工作经验分类', '1');
INSERT INTO `qs_category_group` VALUES ('7', 'QS_scale', '企业规模', '1');
INSERT INTO `qs_category_group` VALUES ('10', 'QS_jobtag', '职位标签', '1');
INSERT INTO `qs_category_group` VALUES ('11', 'QS_resumetag', '简历标签', '1');
INSERT INTO `qs_category_group` VALUES ('22', 'QS_language', '语言分类', '1');
INSERT INTO `qs_category_group` VALUES ('23', 'QS_language_level', '语言熟练程度', '1');
INSERT INTO `qs_category_group` VALUES ('25', 'QS_current', '目前状态分类', '1');
INSERT INTO `qs_category_group` VALUES ('28', 'QS_age', '年龄段分类', '1');

-- ----------------------------
-- Table structure for qs_category_jobs
-- ----------------------------
DROP TABLE IF EXISTS `qs_category_jobs`;
CREATE TABLE `qs_category_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL,
  `categoryname` varchar(80) NOT NULL,
  `category_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stat_jobs` varchar(15) NOT NULL,
  `stat_resume` varchar(15) NOT NULL,
  `content` text,
  `spell` varchar(200) NOT NULL,
  `relation1` varchar(30) DEFAULT NULL,
  `relation1_cn` varchar(30) DEFAULT NULL,
  `relation2` varchar(30) DEFAULT NULL,
  `relation2_cn` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM AUTO_INCREMENT=497 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_category_jobs
-- ----------------------------
INSERT INTO `qs_category_jobs` VALUES ('1', '0', '生活 | 服务业', '0', '', '', '', 'shenghuofuwu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('2', '0', '人力 | 行政 | 管理', '0', '', '', '', 'renlixingzheng', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('3', '0', '销售 | 客服 | 采购 | 淘宝', '0', '', '', '', 'xiaoshoukefu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('4', '0', '市场 | 媒介 | 广告 | 设计', '0', '', '', '', 'shichangmeijie', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('5', '0', '生产 | 物流 | 质控 | 汽车', '0', '', '', '', 'shengchanwuliu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('6', '0', '网络 | 通信 | 电子', '0', '', '', '', 'wangluotongxin', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('7', '0', '法律 | 教育 | 翻译 | 出版', '0', '', '', '', 'falvjiaoyu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('8', '0', '财会 | 金融 | 保险', '0', '', '', '', 'caikuaijinrong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('9', '0', '医疗 | 制药 | 环保', '0', '', '', '', 'yiliaozhiyao', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('10', '0', '建筑 | 物业 | 农林牧渔 | 其他', '0', '', '', '', 'jianzhuwuye', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('11', '1', '餐饮', '0', '', '', '', 'canyin', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('12', '1', '家政保洁/安保', '0', '', '', '', 'jiazhengbaojie', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('13', '1', '美容/美发', '0', '', '', '', 'meirongmeifa', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('14', '1', '酒店/旅游', '0', '', '', '', 'jiudianlvyou', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('15', '1', '娱乐/休闲', '0', '', '', '', 'yulexiuxian', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('16', '1', '保健按摩', '0', '', '', '', 'baojiananmo', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('17', '1', '运动健身', '0', '', '', '', 'yundongjianshen', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('18', '2', '人事/行政/后勤', '0', '', '', '', 'renshixingzheng', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('19', '2', '司机', '0', '', '', '', 'siji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('20', '2', '高级管理', '0', '', '', '', 'gaojiguanli', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('21', '3', '销售', '0', '', '', '', 'xiaoshou', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('22', '3', '客服', '0', '', '', '', 'kefu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('23', '3', '贸易/采购', '0', '', '', '', 'maoyicaigou', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('24', '3', '超市/百货/零售', '0', '', '', '', 'chaoshibaihuo', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('25', '3', '淘宝职位', '0', '', '', '', 'taobao', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('26', '3', '房产中介', '0', '', '', '', 'fangchanzhongjie', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('27', '4', '市场/媒介/公关', '0', '', '', '', 'shichanggongguan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('28', '4', '广告/会展/咨询', '0', '', '', '', 'guanggaozixun', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('29', '4', '美术/设计/创意', '0', '', '', '', 'meishusheji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('30', '5', '普工/技工', '0', '', '', '', 'pugongjigong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('31', '5', '生产管理/研发', '0', '', '', '', 'shengchanyanfa', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('32', '5', '物流/仓储', '0', '', '', '', 'wuliucangchu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('33', '5', '服装/纺织/食品', '0', '', '', '', 'fuzhuangshipin', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('34', '5', '质控/安防', '0', '', '', '', 'zhikonganfang', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('35', '5', '汽车制造/服务', '0', '', '', '', 'qichezhizao', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('36', '6', '计算机/互联网/通信', '0', '', '', '', 'jisuanji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('37', '6', '电子/电气', '0', '', '', '', 'dianzidianqi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('38', '6', '机械/仪器仪表', '0', '', '', '', 'jixieyiqi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('39', '7', '法律', '0', '', '', '', 'falv', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('40', '7', '教育培训', '0', '', '', '', 'jiaoyupeixun', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('41', '7', '翻译', '0', '', '', '', 'fanyi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('42', '7', '编辑/出版/印刷', '0', '', '', '', 'bianjichuban', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('43', '8', '财务/审计/统计', '0', '', '', '', 'caiwushenji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('44', '8', '金融/银行/证券/投资', '0', '', '', '', 'jinrongtouzi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('45', '8', '保险', '0', '', '', '', 'baoxian', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('46', '9', '医院/医疗/护理', '0', '', '', '', 'yiyuanyiliao', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('47', '9', '制药/生物工程', '0', '', '', '', 'zhiyao', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('48', '9', '环保', '0', '', '', '', 'huanbao', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('49', '10', '建筑', '0', '', '', '', 'jianzhu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('50', '10', '物业管理', '0', '', '', '', 'wuye', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('51', '10', '农/林/牧/渔业', '0', '', '', '', 'nonglinmuyu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('52', '10', '其他招聘信息', '0', '', '', '', 'qita', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('53', '11', '服务员', '0', '', '', '', 'fuwuyuan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('54', '11', '送餐员', '0', '', '', '', 'songcanyuan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('55', '11', '厨师/厨师长', '0', '', '', '', 'chushi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('56', '11', '后厨', '0', '', '', '', 'houchu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('57', '11', '传菜员', '0', '', '', '', 'chuancaiyuan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('58', '11', '配菜/打荷', '0', '', '', '', 'peicai', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('59', '11', '洗碗工', '0', '', '', '', 'xiwangong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('60', '11', '面点师', '0', '', '', '', 'miandianshi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('61', '11', '茶艺师', '0', '', '', '', 'chayishi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('62', '11', '迎宾/接待', '0', '', '', '', 'yingbin', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('63', '11', '大堂经理/领班', '0', '', '', '', 'datangjl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('64', '11', '餐饮管理', '0', '', '', '', 'canyinguanli', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('65', '11', '学徒', '0', '', '', '', 'xuetu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('66', '11', '杂工', '0', '', '', '', 'zagong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('67', '11', '咖啡师', '0', '', '', '', 'kafeishi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('68', '11', '预订员', '0', '', '', '', 'yudingyuan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('69', '12', '保洁', '0', '', '', '', 'baojie', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('70', '12', '保姆', '0', '', '', '', 'baomu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('71', '12', '月嫂', '0', '', '', '', 'yuesao', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('72', '12', '育婴师/保育员', '0', '', '', '', 'yuyingshi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('73', '12', '洗衣工', '0', '', '', '', 'xiyigong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('74', '12', '钟点工', '0', '', '', '', 'zhongdiangong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('75', '12', '保安', '0', '', '', '', 'baoan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('76', '12', '护工', '0', '', '', '', 'hugong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('77', '12', '送水工', '0', '', '', '', 'songshuigong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('78', '13', '发型师', '0', '', '', '', 'faxingshi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('79', '13', '美发助理/学徒', '0', '', '', '', 'meifazhuli', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('80', '13', '洗头工', '0', '', '', '', 'xitougong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('81', '13', '美容导师', '0', '', '', '', 'meirongdaoshi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('82', '13', '美容师', '0', '', '', '', 'meirongshi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('83', '13', '美容助理/学徒', '0', '', '', '', 'meirongzhuli', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('84', '13', '化妆师', '0', '', '', '', 'huazhuangshi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('85', '13', '美甲师', '0', '', '', '', 'meijiashi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('86', '13', '宠物美容', '0', '', '', '', 'chongwumeirong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('87', '13', '美容店长', '0', '', '', '', 'meirongdz', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('88', '13', '美容/瘦身顾问', '0', '', '', '', 'meironggw', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('89', '13', '彩妆培训师', '0', '', '', '', 'caizhuangpeixun', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('90', '13', '美体师', '0', '', '', '', 'meitishi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('91', '14', '酒店前台', '0', '', '', '', 'jiudianqiantai', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('92', '14', '客房服务员', '0', '', '', '', 'kefangfwy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('93', '14', '楼面经理', '0', '', '', '', 'loumianjingli', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('94', '14', '行李员', '0', '', '', '', 'xingliyuan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('95', '14', '救生员', '0', '', '', '', 'jiushengyuan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('96', '14', '酒店管理', '0', '', '', '', 'jiudianguanli', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('97', '14', '订票员', '0', '', '', '', 'dingpiaoyuan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('98', '14', '导游', '0', '', '', '', 'daoyou', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('99', '14', '计调', '0', '', '', '', 'jitiao', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('100', '14', '签证专员', '0', '', '', '', 'qianzheng', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('101', '14', '旅游顾问', '0', '', '', '', 'lvyougw', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('102', '15', '酒吧服务员', '0', '', '', '', 'jiubafwy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('103', '15', '娱乐厅服务员', '0', '', '', '', 'yulefwy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('104', '15', '礼仪/迎宾', '0', '', '', '', 'liyiyingbin', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('105', '15', '主持人', '0', '', '', '', 'zhuchiren', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('106', '15', '调酒师', '0', '', '', '', 'tiaojiushi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('107', '15', '音效师', '0', '', '', '', 'yinxiaoshi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('108', '15', '灯光师', '0', '', '', '', 'dengguang', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('109', '15', '摄影师/摄像师', '0', '', '', '', 'sheyingshi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('110', '15', '影视/后期制作', '0', '', '', '', 'yingshihouqi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('111', '15', '配音员', '0', '', '', '', 'peiyin', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('112', '15', '放映员', '0', '', '', '', 'fangying', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('113', '16', '按摩师', '0', '', '', '', 'anmo', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('114', '16', '足疗师', '0', '', '', '', 'zuliao', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('115', '16', '搓澡工', '0', '', '', '', 'cuozao', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('116', '16', '针灸推拿', '0', '', '', '', 'zhenjiutuina', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('117', '17', '健身教练', '0', '', '', '', 'jianshen', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('118', '17', '瑜伽教练', '0', '', '', '', 'yujia', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('119', '17', '舞蹈老师', '0', '', '', '', 'wudao', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('120', '17', '游泳教练', '0', '', '', '', 'youyong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('121', '17', '台球教练', '0', '', '', '', 'taiqiu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('122', '17', '高尔夫球助理', '0', '', '', '', 'gaoerfu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('123', '18', '文员', '0', '', '', '', 'wenyuan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('124', '18', '前台/总机/接待', '0', '', '', '', 'qiantai', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('125', '18', '人事专员/助理', '0', '', '', '', 'renshizy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('126', '18', '人事经理/主管', '0', '', '', '', 'renshijl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('127', '18', '人事总监', '0', '', '', '', 'renshizj', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('128', '18', '行政专员/助理', '0', '', '', '', 'xingzhengzy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('129', '18', '行政经理/主管', '0', '', '', '', 'xingzhengjl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('130', '18', '行政总监', '0', '', '', '', 'xingzhengzj', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('131', '18', '经理助理/秘书', '0', '', '', '', 'mishu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('132', '18', '薪酬/绩效/员工关系', '0', '', '', '', 'xinchoujixiao', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('133', '18', '猎头顾问', '0', '', '', '', 'lietougw', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('134', '18', '后勤', '0', '', '', '', 'houqin', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('135', '18', '培训专员/助理', '0', '', '', '', 'peixunzy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('136', '18', '培训经理/主管', '0', '', '', '', 'peixunjl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('137', '18', '招聘专员/助理', '0', '', '', '', 'zhaopinzy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('138', '18', '招聘经理/主管', '0', '', '', '', 'zhaopinjl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('139', '19', '商务司机', '0', '', '', '', 'shangwusiji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('140', '19', '客运司机', '0', '', '', '', 'keyunsiji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('141', '19', '货运司机', '0', '', '', '', 'huoyunsiji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('142', '19', '出租车司机', '0', '', '', '', 'chuzuchesiji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('143', '19', '班车司机', '0', '', '', '', 'banchesiji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('144', '19', '特种车司机', '0', '', '', '', 'tezhongchesiji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('145', '19', '驾校教练/陪练', '0', '', '', '', 'jiaoxiaojiaolian', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('146', '20', 'CEO/总裁/总经理', '0', '', '', '', 'ceo', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('147', '20', '首席运营官COO', '0', '', '', '', 'coo', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('148', '20', '首席财务官CFO', '0', '', '', '', 'cfo', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('149', '20', '首席技术官CTO', '0', '', '', '', 'cto', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('150', '20', '副总裁/副总经理', '0', '', '', '', 'fuzongcai', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('151', '20', '总裁助理/总经理助理', '0', '', '', '', 'zongcaizhuli', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('152', '20', '总监', '0', '', '', '', 'zongjian', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('153', '20', '分公司经理', '0', '', '', '', 'fengongsijl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('154', '20', '合伙人', '0', '', '', '', 'hehuoren', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('155', '21', '销售代表', '0', '', '', '', 'xiaoshoudaibiao', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('156', '21', '销售助理', '0', '', '', '', 'xiaoshouzhuli', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('157', '21', '销售经理/主管', '0', '', '', '', 'xiaoshoujl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('158', '21', '销售总监', '0', '', '', '', 'xiaoshouzj', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('159', '21', '电话销售', '0', '', '', '', 'dianhuaxiaoshou', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('160', '21', '销售支持', '0', '', '', '', 'xiaoshouzhichi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('161', '21', '汽车销售', '0', '', '', '', 'qichexiaoshou', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('162', '21', '医药代表', '0', '', '', '', 'yiyaodaibiao', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('163', '21', '医疗器械销售', '0', '', '', '', 'yiliaoqixie', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('164', '21', '网络销售', '0', '', '', '', 'wangluoxiaoshou', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('165', '21', '区域销售', '0', '', '', '', 'quyuxiaoshou', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('166', '21', '渠道专员', '0', '', '', '', 'qudaozy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('167', '21', '渠道经理/总监', '0', '', '', '', 'qudaojl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('168', '21', '客户经理/主管', '0', '', '', '', 'kehujl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('169', '21', '大客户经理', '0', '', '', '', 'dakehujl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('170', '21', '团购业务员/经理', '0', '', '', '', 'tuangouxiaoshou', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('171', '21', '会籍顾问', '0', '', '', '', 'huijigw', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('172', '22', '客服专员/助理', '0', '', '', '', 'kefuzy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('173', '22', '客服经理/主管', '0', '', '', '', 'kefujl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('174', '22', '客服总监', '0', '', '', '', 'kefuzj', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('175', '22', '售前/售后服务', '0', '', '', '', 'shouhoufuwu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('176', '22', '电话客服', '0', '', '', '', 'dianhuakefu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('177', '22', '客户关系管理', '0', '', '', '', 'kehuguanxi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('178', '23', '外贸专员/助理', '0', '', '', '', 'waimaozy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('179', '23', '外贸经理/主管', '0', '', '', '', 'waimaojl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('180', '23', '采购员', '0', '', '', '', 'caigou', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('181', '23', '采购助理', '0', '', '', '', 'caigouzl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('182', '23', '采购经理/总监', '0', '', '', '', 'caigoujl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('183', '23', '报关员', '0', '', '', '', 'baoguanyuan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('184', '23', '商务专员/经理', '0', '', '', '', 'shangwuzy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('185', '23', '买手', '0', '', '', '', 'maishou', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('186', '24', '店员/营业员', '0', '', '', '', 'dianyuan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('187', '24', '收银员', '0', '', '', '', 'shouyin', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('188', '24', '促销/导购员', '0', '', '', '', 'cuxiao', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('189', '24', '理货员/陈列员', '0', '', '', '', 'chenlie', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('190', '24', '防损员/内保', '0', '', '', '', 'fangsun', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('191', '24', '店长/卖场经理', '0', '', '', '', 'dianzhang', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('192', '24', '招商经理/主管', '0', '', '', '', 'zhaoshangjl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('193', '24', '奢侈品业务', '0', '', '', '', 'shechipin', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('194', '24', '品类管理', '0', '', '', '', 'pinleiguanli', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('195', '24', '食品加工/处理', '0', '', '', '', 'shipinjiagong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('196', '24', '督导', '0', '', '', '', 'dudao', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('197', '25', '网店店长', '0', '', '', '', 'taobaodz', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('198', '25', '淘宝客服', '0', '', '', '', 'taobaokefu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('199', '25', '淘宝美工', '0', '', '', '', 'taobaomeigong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('200', '25', '店铺文案编辑', '0', '', '', '', 'taobaowenan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('201', '25', '店铺推广', '0', '', '', '', 'taobaotuiguang', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('202', '25', '活动策划', '0', '', '', '', 'taobaocehua', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('203', '26', '房产经纪人', '0', '', '', '', 'fangchanjjr', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('204', '26', '置业顾问', '0', '', '', '', 'zhiyegw', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('205', '26', '房产店长/经理', '0', '', '', '', 'fangchanjl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('206', '26', '房产店员/助理', '0', '', '', '', 'fangchanzl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('207', '26', '房产客服', '0', '', '', '', 'fangchankefu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('208', '26', '房产内勤', '0', '', '', '', 'fangchanneiqin', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('209', '26', '房产评估师', '0', '', '', '', 'fangchanpinggu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('210', '26', '房产开发/策划', '0', '', '', '', 'fangchankaifa', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('211', '26', '其他房产职位', '0', '', '', '', 'fangchanqita', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('212', '27', '市场专员/助理', '0', '', '', '', 'shichangzy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('213', '27', '市场经理/总监', '0', '', '', '', 'shichangjl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('214', '27', '市场拓展', '0', '', '', '', 'shichangtuozhan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('215', '27', '市场调研', '0', '', '', '', 'shichangdiaoyan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('216', '27', '市场策划', '0', '', '', '', 'shichangcehua', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('217', '27', '媒介专员/助理', '0', '', '', '', 'meijiezy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('218', '27', '媒介经理/主管', '0', '', '', '', 'meijiejl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('219', '27', '会务会展专员/经理', '0', '', '', '', 'huiwujl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('220', '27', '品牌专员/经理', '0', '', '', '', 'pinpaijl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('221', '27', '公关专员/助理', '0', '', '', '', 'gongguanzy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('222', '27', '公关经理/主管', '0', '', '', '', 'gongguanjl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('223', '27', '企划经理/主管', '0', '', '', '', 'qihuajl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('224', '28', '广告文案', '0', '', '', '', 'guanggaowenan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('225', '28', '创意指导/总监', '0', '', '', '', 'chuangyizj', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('226', '28', '广告设计/制作', '0', '', '', '', 'guanggaosheji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('227', '28', '广告创意', '0', '', '', '', 'guanggaocy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('228', '28', '媒介策划/管理', '0', '', '', '', 'meijiecehua', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('229', '28', '会展策划/设计', '0', '', '', '', 'huizhancehua', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('230', '28', '婚礼策划师', '0', '', '', '', 'hunlicehua', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('231', '28', '咨询顾问', '0', '', '', '', 'zixungw', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('232', '28', '咨询经理/主管', '0', '', '', '', 'zixunjl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('233', '28', '客户主管/专员', '0', '', '', '', 'kehuzg', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('234', '28', '企业策划', '0', '', '', '', 'qiyecehua', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('235', '29', '美编/美术设计', '0', '', '', '', 'meibian', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('236', '29', '服装设计', '0', '', '', '', 'fuzhuangsheji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('237', '29', '家具/家居用品设计', '0', '', '', '', 'jiajusheji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('238', '29', '平面设计', '0', '', '', '', 'pingmiansheji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('239', '29', '美术指导', '0', '', '', '', 'meishuzhidao', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('240', '29', '店面/陈列/展览设计', '0', '', '', '', 'zhanlansheji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('241', '29', '工艺/珠宝设计', '0', '', '', '', 'zhubaosheji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('242', '29', '多媒体/动画设计', '0', '', '', '', 'duomeiti', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('243', '29', '产品/包装设计', '0', '', '', '', 'baozhuangsheji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('244', '29', '装修装潢设计', '0', '', '', '', 'shineisheji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('245', '29', 'CAD设计/制图', '0', '', '', '', 'shejizhitu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('246', '30', '普工', '0', '', '', '', 'pugong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('247', '30', '综合维修工', '0', '', '', '', 'zongheweixiu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('248', '30', '制冷/水暖工', '0', '', '', '', 'shuinuangong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('249', '30', '电工', '0', '', '', '', 'diangong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('250', '30', '木工', '0', '', '', '', 'mugong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('251', '30', '钳工', '0', '', '', '', 'qiangong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('252', '30', '切割/焊工', '0', '', '', '', 'hangong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('253', '30', '钣金工', '0', '', '', '', 'banjingong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('254', '30', '油漆工', '0', '', '', '', 'youqigong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('255', '30', '缝纫工', '0', '', '', '', 'fengrengong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('256', '30', '锅炉工', '0', '', '', '', 'guolugong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('257', '30', '车工/铣工', '0', '', '', '', 'chegong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('258', '30', '铲车/叉车工', '0', '', '', '', 'chachegong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('259', '30', '铸造/注塑/模具工', '0', '', '', '', 'mujugong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('260', '30', '电梯工', '0', '', '', '', 'diantigong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('261', '30', '操作工', '0', '', '', '', 'caozuogong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('262', '30', '包装工', '0', '', '', '', 'baozhuanggong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('263', '30', '手机维修', '0', '', '', '', 'shoujiweixiu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('264', '30', '水泥工', '0', '', '', '', 'shuinigong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('265', '30', '钢筋工', '0', '', '', '', 'gangjingong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('266', '30', '管道工', '0', '', '', '', 'guandaogong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('267', '30', '瓦工', '0', '', '', '', 'wagong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('268', '30', '组装工', '0', '', '', '', 'zuzhuanggong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('269', '30', '样衣工', '0', '', '', '', 'yangyigong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('270', '30', '染工', '0', '', '', '', 'rangong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('271', '30', '纺织工', '0', '', '', '', 'fangzhigong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('272', '30', '印花工', '0', '', '', '', 'yinhuagong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('273', '30', '压熨工', '0', '', '', '', 'yayungong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('274', '31', '质量管理', '0', '', '', '', 'zhilianggl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('275', '31', '总工程师/副总工程师', '0', '', '', '', 'zonggong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('276', '31', '设备管理维护', '0', '', '', '', 'shebeigl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('277', '31', '工艺设计', '0', '', '', '', 'gongyisheji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('278', '31', '车间主任', '0', '', '', '', 'chejianzhuren', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('279', '31', '生产计划', '0', '', '', '', 'shengchanjihua', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('280', '31', '化验/检验', '0', '', '', '', 'huayan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('281', '31', '厂长/副厂长', '0', '', '', '', 'changzhang', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('282', '31', '生产总监', '0', '', '', '', 'shengchanzj', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('283', '31', '维修工程师', '0', '', '', '', 'weixiugcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('284', '31', '工业工程师', '0', '', '', '', 'gongyegcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('285', '31', '材料工程师', '0', '', '', '', 'cailiaogcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('286', '31', '技术工程师', '0', '', '', '', 'jishugcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('287', '31', '生产主管/组长', '0', '', '', '', 'shengchanzg', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('288', '32', '物流专员/助理', '0', '', '', '', 'wuliuzy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('289', '32', '物流经理/主管', '0', '', '', '', 'wuliujl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('290', '32', '物流总监', '0', '', '', '', 'wuliuzj', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('291', '32', '调度员', '0', '', '', '', 'diaodu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('292', '32', '快递员', '0', '', '', '', 'kuaidi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('293', '32', '仓库管理员', '0', '', '', '', 'kuguan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('294', '32', '仓库经理/主管', '0', '', '', '', 'cangkujl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('295', '32', '装卸/搬运工', '0', '', '', '', 'zhuangxie', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('296', '32', '供应链管理', '0', '', '', '', 'gongyinglian', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('297', '32', '单证员', '0', '', '', '', 'danzheng', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('298', '32', '国际货运', '0', '', '', '', 'guojihuoyun', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('299', '33', '服装设计师', '0', '', '', '', 'fuzhuangsjs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('300', '33', '纺织品设计师', '0', '', '', '', 'fangzhipinsjs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('301', '33', '服装打样/制版', '0', '', '', '', 'fuzhuangdayang', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('302', '33', '生产管理', '0', '', '', '', 'shengchangl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('303', '33', '样衣工', '0', '', '', '', 'yangyi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('304', '33', '食品/饮料研发/检验', '0', '', '', '', 'shipinyanfa', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('305', '33', '板房/底格出格师', '0', '', '', '', 'chugeshi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('306', '33', '电脑放码员', '0', '', '', '', 'fangmayuan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('307', '33', '纸样师/车板工', '0', '', '', '', 'zhiyangshi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('308', '34', '质量检验员/测试员', '0', '', '', '', 'zhiliangjianyan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('309', '34', '质量管理/测试经理', '0', '', '', '', 'ceshijl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('310', '34', '测试工程师', '0', '', '', '', 'ceshigcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('311', '34', '安全消防', '0', '', '', '', 'anquanxiaofang', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('312', '34', '认证工程师/审核员', '0', '', '', '', 'renzhenggcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('313', '34', '安全管理', '0', '', '', '', 'anquanguanli', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('314', '35', '汽车设计工程师', '0', '', '', '', 'qichesheji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('315', '35', '装配工艺工程师', '0', '', '', '', 'zhuangpeigy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('316', '35', '汽车/摩托车修理', '0', '', '', '', 'qicheweixiu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('317', '35', '汽车机械工程师', '0', '', '', '', 'qichejixie', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('318', '35', '汽车电子工程师', '0', '', '', '', 'qichedianzi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('319', '35', '4S店管理', '0', '', '', '', '4sdiangl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('320', '35', '汽车检验/检测', '0', '', '', '', 'qichejianyan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('321', '35', '汽车美容', '0', '', '', '', 'qichemeirong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('322', '35', '二手车评估师', '0', '', '', '', 'ershouchepg', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('323', '35', '发动机/总装工程师', '0', '', '', '', 'zongzhuanggcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('324', '35', '安全性能工程师', '0', '', '', '', 'anquangcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('325', '35', '理赔专员/顾问', '0', '', '', '', 'lipeizy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('326', '35', '洗车工', '0', '', '', '', 'xichegong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('327', '35', '停车管理员', '0', '', '', '', 'tingchegly', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('328', '35', '加油站工作员', '0', '', '', '', 'jiayougong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('329', '35', '轮胎工', '0', '', '', '', 'luntaigong', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('330', '36', '技术总监/经理', '0', '', '', '', 'jishuzj', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('331', '36', '技术支持/维护', '0', '', '', '', 'jishuzhichi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('332', '36', '技术专员/助理', '0', '', '', '', 'jishuzy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('333', '36', '软件工程师', '0', '', '', '', 'ruanjiangcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('334', '36', '程序员', '0', '', '', '', 'chengxuyuan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('335', '36', '硬件工程师', '0', '', '', '', 'yingjiangcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('336', '36', '质量工程师', '0', '', '', '', 'zhilianggcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('337', '36', '测试工程师', '0', '', '', '', 'ruanjianceshi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('338', '36', '系统架构师', '0', '', '', '', 'xitongjiagou', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('339', '36', '数据库管理/DBA', '0', '', '', '', 'dba', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('340', '36', '游戏设计/开发', '0', '', '', '', 'youxikaifa', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('341', '36', '网页设计/制作', '0', '', '', '', 'wangyesheji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('342', '36', '语音/视频/图形', '0', '', '', '', 'yuyinshipin', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('343', '36', '项目经理/主管', '0', '', '', '', 'xiangmujl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('344', '36', '产品经理/专员', '0', '', '', '', 'chanpinjl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('345', '36', '网站运营', '0', '', '', '', 'wangzhanyunying', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('346', '36', '网站编辑', '0', '', '', '', 'wangzhanbianji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('347', '36', '网络管理员', '0', '', '', '', 'wangguan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('348', '36', '网络与信息安全工程师', '0', '', '', '', 'wangluoanquan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('349', '36', '实施工程师', '0', '', '', '', 'shishigcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('350', '36', '通信技术工程师', '0', '', '', '', 'tongxinjishu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('351', '36', '网站策划', '0', '', '', '', 'wangzhancehua', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('352', '37', '自动化工程师', '0', '', '', '', 'zidonghuagcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('353', '37', '电子/电气工程师', '0', '', '', '', 'dianqigcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('354', '37', '电路工程师/技术员', '0', '', '', '', 'dianlugcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('355', '37', '无线电工程师', '0', '', '', '', 'wuxiangcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('356', '37', '测试/可靠性工程师', '0', '', '', '', 'kekaoxinggcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('357', '37', '产品工艺/规划工程师', '0', '', '', '', 'guihuagcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('358', '37', '音频/视频工程师', '0', '', '', '', 'shipingcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('359', '37', '灯光/照明设计工程师', '0', '', '', '', 'zhaomingsheji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('360', '37', '研发工程师', '0', '', '', '', 'yanfagcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('361', '37', '电子/电器维修', '0', '', '', '', 'dianqiweixiu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('362', '38', '机电工程师', '0', '', '', '', 'jidiangcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('363', '38', '机械工程师', '0', '', '', '', 'jixiegcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('364', '38', '研发工程师', '0', '', '', '', 'jixieyanfagcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('365', '38', '测试/可靠性工程师', '0', '', '', '', 'jixieceshigcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('366', '38', '版图设计工程师', '0', '', '', '', 'bantushejigcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('367', '38', '仪器/仪表/计量', '0', '', '', '', 'yiqiyibiao', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('368', '39', '律师/法律顾问', '0', '', '', '', 'lvshi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('369', '39', '律师助理', '0', '', '', '', 'lvshizl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('370', '39', '法务专员/主管', '0', '', '', '', 'fawuzy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('371', '39', '产权/专利顾问', '0', '', '', '', 'zhuanligw', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('372', '39', '合规管理', '0', '', '', '', 'heguiguanli', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('373', '40', '教师/助教', '0', '', '', '', 'jiaoshi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('374', '40', '家教', '0', '', '', '', 'jiajiao', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('375', '40', '幼教/早教', '0', '', '', '', 'zaojiao', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('376', '40', '培训师/讲师', '0', '', '', '', 'jiangshi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('377', '40', '培训策划', '0', '', '', '', 'peixuncehua', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('378', '40', '培训助理', '0', '', '', '', 'peixunzl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('379', '40', '教学/教务管理', '0', '', '', '', 'jiaowu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('380', '40', '教育产品开发', '0', '', '', '', 'jiaoyukaifa', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('381', '40', '学术研究/科研', '0', '', '', '', 'keyan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('382', '40', '招生/课程顾问', '0', '', '', '', 'zhaosheng', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('383', '40', '校长', '0', '', '', '', 'xiaozhang', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('384', '40', '野外拓展训练师', '0', '', '', '', 'tuozhanshi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('385', '41', '英语翻译', '0', '', '', '', 'yingyufy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('386', '41', '日语翻译', '0', '', '', '', 'riyufy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('387', '41', '韩语翻译', '0', '', '', '', 'hanyufy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('388', '41', '法语翻译', '0', '', '', '', 'fanyufy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('389', '41', '俄语翻译', '0', '', '', '', 'eyufy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('390', '41', '德语翻译', '0', '', '', '', 'deyufy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('391', '41', '西班牙语翻译', '0', '', '', '', 'xibanyayufy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('392', '41', '意大利语翻译', '0', '', '', '', 'yidaliyufy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('393', '41', '葡萄牙语翻译', '0', '', '', '', 'putaoyayufy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('394', '41', '阿拉伯语翻译', '0', '', '', '', 'alaboyufy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('395', '41', '小语种翻译', '0', '', '', '', 'xiaoyuzhongfy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('396', '42', '总编/副总编/主编', '0', '', '', '', 'zhubian', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('397', '42', '编辑/撰稿', '0', '', '', '', 'bianji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('398', '42', '记者/采编', '0', '', '', '', 'jizhe', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('399', '42', '出版/发行', '0', '', '', '', 'chuban', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('400', '42', '排版设计/制作', '0', '', '', '', 'paiban', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('401', '42', '印刷操作', '0', '', '', '', 'yinshua', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('402', '42', '装订/烫金', '0', '', '', '', 'zhuangding', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('403', '43', '财务经理/主管', '0', '', '', '', 'caiwujl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('404', '43', '财务总监', '0', '', '', '', 'caiwuzj', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('405', '43', '会计/会计师', '0', '', '', '', 'kuaiji', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('406', '43', '财务/会计助理', '0', '', '', '', 'kuaijizl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('407', '43', '出纳', '0', '', '', '', 'chuna', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('408', '43', '审计专员/助理', '0', '', '', '', 'shenjizy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('409', '43', '审计经理/主管', '0', '', '', '', 'shenjijl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('410', '43', '统计员', '0', '', '', '', 'tongjiyuan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('411', '43', '税务专员/助理', '0', '', '', '', 'shuiwuzy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('412', '43', '税务经理/主管', '0', '', '', '', 'shuiwujl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('413', '43', '财务分析员', '0', '', '', '', 'caiwufenxi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('414', '43', '成本管理员', '0', '', '', '', 'chengbengl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('415', '44', '证券/期货/外汇经纪人', '0', '', '', '', 'zhengquanjjr', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('416', '44', '证券经理/总监', '0', '', '', '', 'zhengquanjl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('417', '44', '证券分析/金融研究', '0', '', '', '', 'zhengquanfenxi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('418', '44', '信用卡/银行卡业务', '0', '', '', '', 'xinyongka', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('419', '44', '银行经理/主任', '0', '', '', '', 'yinhangjl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('420', '44', '银行会计/柜员', '0', '', '', '', 'guiyuan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('421', '44', '信贷管理/资信评估', '0', '', '', '', 'xindaigl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('422', '44', '资产评估', '0', '', '', '', 'zichanpg', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('423', '44', '担保/拍卖/典当', '0', '', '', '', 'danbaopaimai', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('424', '44', '拍卖师', '0', '', '', '', 'paimaishi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('425', '44', '外汇/基金/国债经理人', '0', '', '', '', 'waihuijl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('426', '44', '投资/理财顾问', '0', '', '', '', 'licaigw', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('427', '44', '融资专员', '0', '', '', '', 'rongzizy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('428', '44', '融资经理/总监', '0', '', '', '', 'rongzijl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('429', '44', '风险管理/控制', '0', '', '', '', 'fengxiankongzhi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('430', '44', '股票交易员', '0', '', '', '', 'caopanshou', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('431', '45', '储备经理人', '0', '', '', '', 'chubeijlr', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('432', '45', '保险客户经理', '0', '', '', '', 'baoxiankehujl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('433', '45', '车险专员', '0', '', '', '', 'chexianzy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('434', '45', '保险内勤', '0', '', '', '', 'baoxianneiqin', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('435', '45', '保险培训师', '0', '', '', '', 'baoxianpxs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('436', '45', '保险客服', '0', '', '', '', 'baoxiankefu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('437', '45', '保险顾问', '0', '', '', '', 'baoxiangw', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('438', '45', '保险经纪人', '0', '', '', '', 'baoxianjjr', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('439', '45', '保险项目经理', '0', '', '', '', 'baoxianxiangmujl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('440', '45', '保险精算师', '0', '', '', '', 'baoxianjingsuan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('441', '45', '保险其他职位', '0', '', '', '', 'baoxianqita', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('442', '46', '医生', '0', '', '', '', 'yisheng', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('443', '46', '保健医生', '0', '', '', '', 'baojianys', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('444', '46', '心理医生', '0', '', '', '', 'xinliys', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('445', '46', '护士/护理', '0', '', '', '', 'hushi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('446', '46', '护理主任/护士长', '0', '', '', '', 'hushizhang', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('447', '46', '导医', '0', '', '', '', 'daoyi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('448', '46', '药剂师', '0', '', '', '', 'yaojishi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('449', '46', '理疗师', '0', '', '', '', 'liliaoshi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('450', '46', '医药质检', '0', '', '', '', 'yiyaozhijian', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('451', '46', '医疗管理', '0', '', '', '', 'yiliaogl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('452', '46', '美容整形师', '0', '', '', '', 'meirongzxs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('453', '46', '验光师', '0', '', '', '', 'yanguangshi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('454', '46', '营养师', '0', '', '', '', 'yingyangshi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('455', '46', '宠物护理/兽医', '0', '', '', '', 'shouyi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('456', '47', '医药研发/生产/注册', '0', '', '', '', 'yiyaoyanfa', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('457', '47', '临床研究/协调', '0', '', '', '', 'linchuangyanjiu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('458', '47', '生物工程/生物制药', '0', '', '', '', 'shengwugc', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('459', '47', '医疗器械研发/维修', '0', '', '', '', 'yiliaoyanfa', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('460', '48', '污水处理工程师', '0', '', '', '', 'wushuichuli', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('461', '48', '环境工程技术', '0', '', '', '', 'huanjinggc', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('462', '48', '环境管理/保护', '0', '', '', '', 'huanjingbaohu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('463', '48', '环保技术', '0', '', '', '', 'huanbaojishu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('464', '48', 'EHS管理', '0', '', '', '', 'ehsguanli', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('465', '48', '环保工程师', '0', '', '', '', 'huanbaogcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('466', '48', '环保检测', '0', '', '', '', 'huanbaojiance', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('467', '48', '水质检测员', '0', '', '', '', 'shuizhijiance', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('468', '48', '环境绿化', '0', '', '', '', 'huanjinglvhua', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('469', '49', '工程项目管理', '0', '', '', '', 'gongchengxmgl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('470', '49', '工程监理', '0', '', '', '', 'gongchengjianli', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('471', '49', '建筑工程师/总工', '0', '', '', '', 'jianzhugcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('472', '49', '土木/土建工程师', '0', '', '', '', 'tujiangcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('473', '49', '造价师/预算师', '0', '', '', '', 'zaojiashi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('474', '49', '幕墙工程师', '0', '', '', '', 'muqianggcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('475', '49', '安防工程师', '0', '', '', '', 'anfanggcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('476', '49', '安全管理/安全员', '0', '', '', '', 'anquanyuan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('477', '49', '道路桥梁技术', '0', '', '', '', 'daoluqiaoliang', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('478', '49', '给排水/制冷/暖通', '0', '', '', '', 'jipaishui', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('479', '49', '测绘/测量', '0', '', '', '', 'cehuiceliang', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('480', '49', '园林/景观设计', '0', '', '', '', 'yuanlinjingguan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('481', '49', '资料员', '0', '', '', '', 'ziliaoyuan', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('482', '49', '市政工程师', '0', '', '', '', 'shizhenggcs', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('483', '49', '综合布线/弱电', '0', '', '', '', 'buxianruodian', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('484', '50', '物业管理员', '0', '', '', '', 'wuyeguanli', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('485', '50', '物业维修', '0', '', '', '', 'wuyeweixiu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('486', '50', '物业经理/主管', '0', '', '', '', 'wuyejl', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('487', '50', '合共管理', '0', '', '', '', 'hetongguanli', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('488', '50', '招商经理/主管', '0', '', '', '', 'zhaoshangzg', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('489', '51', '饲料业务', '0', '', '', '', 'siliaoyewu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('490', '51', '养殖人员', '0', '', '', '', 'yangzhizy', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('491', '51', '农艺师/花艺师', '0', '', '', '', 'nongyishi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('492', '51', '畜牧师', '0', '', '', '', 'xumushi', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('493', '51', '场长', '0', '', '', '', 'nongchangzhu', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('494', '51', '养殖部主管', '0', '', '', '', 'xumubuzg', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('495', '51', '动物营养/饲料研发', '0', '', '', '', 'siliaoyanfa', '', '', '', '');
INSERT INTO `qs_category_jobs` VALUES ('496', '52', '其他职位', '0', '', '', '', 'qitazhiwei', '', '', '', '');

-- ----------------------------
-- Table structure for qs_category_major
-- ----------------------------
DROP TABLE IF EXISTS `qs_category_major`;
CREATE TABLE `qs_category_major` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(10) NOT NULL,
  `categoryname` varchar(50) NOT NULL,
  `category_order` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_category_major
-- ----------------------------
INSERT INTO `qs_category_major` VALUES ('1', '0', '工科类', '0');
INSERT INTO `qs_category_major` VALUES ('2', '0', '理科类', '0');
INSERT INTO `qs_category_major` VALUES ('3', '0', '农学类', '0');
INSERT INTO `qs_category_major` VALUES ('4', '0', '医学类', '0');
INSERT INTO `qs_category_major` VALUES ('5', '0', '管理学', '0');
INSERT INTO `qs_category_major` VALUES ('6', '0', '法学类', '0');
INSERT INTO `qs_category_major` VALUES ('7', '0', '文学类', '1');
INSERT INTO `qs_category_major` VALUES ('8', '0', '其他类', '0');
INSERT INTO `qs_category_major` VALUES ('9', '1', '电气信息类', '0');
INSERT INTO `qs_category_major` VALUES ('12', '1', '材料类', '0');
INSERT INTO `qs_category_major` VALUES ('10', '1', '电气信息类', '0');
INSERT INTO `qs_category_major` VALUES ('11', '1', '地矿类', '0');
INSERT INTO `qs_category_major` VALUES ('13', '1', '机械类', '0');
INSERT INTO `qs_category_major` VALUES ('14', '1', '仪器仪表类', '0');
INSERT INTO `qs_category_major` VALUES ('15', '1', '能源动力类', '0');
INSERT INTO `qs_category_major` VALUES ('16', '1', '土建类', '0');
INSERT INTO `qs_category_major` VALUES ('17', '1', '水利类', '0');
INSERT INTO `qs_category_major` VALUES ('18', '1', '测绘类', '0');
INSERT INTO `qs_category_major` VALUES ('19', '1', '环境与安全类', '0');
INSERT INTO `qs_category_major` VALUES ('20', '1', '化工与制药类', '0');
INSERT INTO `qs_category_major` VALUES ('21', '1', '交通运输类', '0');
INSERT INTO `qs_category_major` VALUES ('22', '1', '海洋工程类', '0');
INSERT INTO `qs_category_major` VALUES ('23', '1', '轻工纺织食品类', '0');
INSERT INTO `qs_category_major` VALUES ('24', '1', '航空航天类', '0');
INSERT INTO `qs_category_major` VALUES ('25', '1', '武器类', '0');
INSERT INTO `qs_category_major` VALUES ('26', '1', '工程力学类', '0');
INSERT INTO `qs_category_major` VALUES ('27', '1', '生物工程类', '0');
INSERT INTO `qs_category_major` VALUES ('28', '1', '农业工程类', '0');
INSERT INTO `qs_category_major` VALUES ('29', '1', '林业工程类', '0');
INSERT INTO `qs_category_major` VALUES ('30', '1', '公安技术类', '0');
INSERT INTO `qs_category_major` VALUES ('31', '2', '数学类', '0');
INSERT INTO `qs_category_major` VALUES ('32', '2', '物理学类', '0');
INSERT INTO `qs_category_major` VALUES ('33', '2', '化学类', '0');
INSERT INTO `qs_category_major` VALUES ('34', '2', '生物科学类', '0');
INSERT INTO `qs_category_major` VALUES ('35', '2', '天文学类', '0');
INSERT INTO `qs_category_major` VALUES ('36', '2', '地质学类', '0');
INSERT INTO `qs_category_major` VALUES ('37', '2', '地理科学类', '0');
INSERT INTO `qs_category_major` VALUES ('38', '2', '地球物理学类', '0');
INSERT INTO `qs_category_major` VALUES ('39', '2', '大气科学类', '0');
INSERT INTO `qs_category_major` VALUES ('40', '2', '海洋科学类', '0');
INSERT INTO `qs_category_major` VALUES ('41', '2', '力学类', '0');
INSERT INTO `qs_category_major` VALUES ('42', '2', '电子信息科学类', '0');
INSERT INTO `qs_category_major` VALUES ('43', '2', '材料科学类', '0');
INSERT INTO `qs_category_major` VALUES ('44', '2', '环境科学类', '0');
INSERT INTO `qs_category_major` VALUES ('45', '2', '心理学类', '0');
INSERT INTO `qs_category_major` VALUES ('46', '2', '统计学类', '0');
INSERT INTO `qs_category_major` VALUES ('47', '3', '植物生产类', '0');
INSERT INTO `qs_category_major` VALUES ('48', '3', '草业科学类', '0');
INSERT INTO `qs_category_major` VALUES ('49', '3', '森林资源类', '0');
INSERT INTO `qs_category_major` VALUES ('50', '3', '环境生态类', '0');
INSERT INTO `qs_category_major` VALUES ('51', '3', '动物生产类', '0');
INSERT INTO `qs_category_major` VALUES ('52', '3', '动物医学类', '0');
INSERT INTO `qs_category_major` VALUES ('53', '3', '水产类', '0');
INSERT INTO `qs_category_major` VALUES ('54', '4', '基础医学类', '0');
INSERT INTO `qs_category_major` VALUES ('55', '4', '预防医学类', '0');
INSERT INTO `qs_category_major` VALUES ('56', '4', '临床医学与医学技术类', '0');
INSERT INTO `qs_category_major` VALUES ('57', '4', '口腔医学类', '0');
INSERT INTO `qs_category_major` VALUES ('58', '4', '中医学类', '0');
INSERT INTO `qs_category_major` VALUES ('59', '4', '法医学类', '0');
INSERT INTO `qs_category_major` VALUES ('60', '4', '护理学类', '0');
INSERT INTO `qs_category_major` VALUES ('61', '4', '药学类', '0');
INSERT INTO `qs_category_major` VALUES ('62', '5', '管理科学与工程类', '0');
INSERT INTO `qs_category_major` VALUES ('63', '5', '工商管理类', '0');
INSERT INTO `qs_category_major` VALUES ('64', '5', '公共管理类', '0');
INSERT INTO `qs_category_major` VALUES ('65', '5', '农业经济管理类', '0');
INSERT INTO `qs_category_major` VALUES ('66', '5', '图书档案学类', '0');
INSERT INTO `qs_category_major` VALUES ('67', '6', '法学类', '0');
INSERT INTO `qs_category_major` VALUES ('68', '6', '马克思主义理论类', '0');
INSERT INTO `qs_category_major` VALUES ('69', '6', '社会学类', '0');
INSERT INTO `qs_category_major` VALUES ('70', '6', '政治学类', '0');
INSERT INTO `qs_category_major` VALUES ('71', '6', '公安学类', '0');
INSERT INTO `qs_category_major` VALUES ('72', '7', '中国语言文学类', '0');
INSERT INTO `qs_category_major` VALUES ('73', '7', '外国语言文学类', '0');
INSERT INTO `qs_category_major` VALUES ('74', '7', '新闻传播学类', '0');
INSERT INTO `qs_category_major` VALUES ('75', '7', '艺术类', '0');
INSERT INTO `qs_category_major` VALUES ('76', '8', '哲学类', '0');
INSERT INTO `qs_category_major` VALUES ('77', '8', '经济学类', '0');
INSERT INTO `qs_category_major` VALUES ('78', '8', '教育学类', '0');
INSERT INTO `qs_category_major` VALUES ('79', '8', '体育学类', '0');
INSERT INTO `qs_category_major` VALUES ('80', '8', '历史学类', '0');
INSERT INTO `qs_category_major` VALUES ('81', '8', '未划分专业', '0');
INSERT INTO `qs_category_major` VALUES ('82', '8', '其他类', '0');

-- ----------------------------
-- Table structure for qs_company_down_resume
-- ----------------------------
DROP TABLE IF EXISTS `qs_company_down_resume`;
CREATE TABLE `qs_company_down_resume` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resume_id` int(10) unsigned NOT NULL,
  `resume_name` varchar(60) NOT NULL,
  `resume_uid` int(10) unsigned NOT NULL,
  `company_uid` int(10) unsigned NOT NULL,
  `company_name` varchar(60) NOT NULL,
  `down_addtime` int(10) unsigned NOT NULL,
  `is_reply` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`did`),
  KEY `resume_uid_rid` (`resume_uid`,`resume_id`),
  KEY `down_addtime` (`down_addtime`),
  KEY `company_uid_addtime` (`company_uid`,`down_addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_company_down_resume
-- ----------------------------

-- ----------------------------
-- Table structure for qs_company_favorites
-- ----------------------------
DROP TABLE IF EXISTS `qs_company_favorites`;
CREATE TABLE `qs_company_favorites` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resume_id` int(10) unsigned NOT NULL,
  `company_uid` int(10) unsigned NOT NULL,
  `favorites_addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`did`),
  KEY `company_uid` (`company_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_company_favorites
-- ----------------------------

-- ----------------------------
-- Table structure for qs_company_img
-- ----------------------------
DROP TABLE IF EXISTS `qs_company_img`;
CREATE TABLE `qs_company_img` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `title` varchar(200) NOT NULL,
  `img` varchar(120) NOT NULL,
  `addtime` int(100) unsigned NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `company_id` (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_company_img
-- ----------------------------

-- ----------------------------
-- Table structure for qs_company_interview
-- ----------------------------
DROP TABLE IF EXISTS `qs_company_interview`;
CREATE TABLE `qs_company_interview` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resume_id` int(10) unsigned NOT NULL,
  `resume_name` varchar(30) NOT NULL,
  `resume_addtime` int(10) NOT NULL,
  `resume_uid` int(10) unsigned NOT NULL,
  `jobs_id` int(10) unsigned NOT NULL,
  `jobs_name` varchar(60) NOT NULL,
  `jobs_addtime` int(10) NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `company_name` varchar(60) NOT NULL,
  `company_addtime` int(10) NOT NULL,
  `company_uid` int(10) unsigned NOT NULL,
  `interview_addtime` int(10) unsigned NOT NULL,
  `notes` varchar(255) NOT NULL DEFAULT '',
  `personal_look` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `interview_time` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL,
  `contact` varchar(60) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  PRIMARY KEY (`did`),
  KEY `resume_uid_resumeid` (`resume_uid`,`resume_id`),
  KEY `company_uid_jobid` (`company_uid`,`jobs_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_company_interview
-- ----------------------------

-- ----------------------------
-- Table structure for qs_company_praise
-- ----------------------------
DROP TABLE IF EXISTS `qs_company_praise`;
CREATE TABLE `qs_company_praise` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `click_type` tinyint(1) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_company_praise
-- ----------------------------

-- ----------------------------
-- Table structure for qs_company_profile
-- ----------------------------
DROP TABLE IF EXISTS `qs_company_profile`;
CREATE TABLE `qs_company_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `tpl` varchar(60) NOT NULL,
  `companyname` varchar(60) NOT NULL,
  `nature` smallint(5) unsigned NOT NULL,
  `nature_cn` varchar(30) NOT NULL,
  `trade` smallint(5) unsigned NOT NULL,
  `trade_cn` varchar(30) NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `tdistrict` smallint(5) unsigned NOT NULL,
  `district_cn` varchar(100) NOT NULL DEFAULT '',
  `street` smallint(5) unsigned NOT NULL,
  `street_cn` varchar(50) NOT NULL,
  `scale` smallint(5) unsigned NOT NULL,
  `scale_cn` varchar(30) NOT NULL,
  `registered` varchar(150) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `address` varchar(250) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `telephone` varchar(130) NOT NULL,
  `landline_tel` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `companyname_full` varchar(50) NOT NULL,
  `legal_person` varchar(30) NOT NULL,
  `license` varchar(120) NOT NULL,
  `certificate_img` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `contents` text NOT NULL,
  `setmeal_id` smallint(5) unsigned NOT NULL,
  `setmeal_name` varchar(30) NOT NULL,
  `audit` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `map_open` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `map_x` decimal(9,6) NOT NULL,
  `map_y` decimal(9,6) NOT NULL,
  `map_zoom` tinyint(3) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `contact_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `telephone_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `email_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `landline_tel_show` tinyint(1) NOT NULL,
  `robot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment` int(10) unsigned NOT NULL,
  `resume_processing` tinyint(3) NOT NULL DEFAULT '100',
  `tag` varchar(60) NOT NULL,
  `wzp_tpl` tinyint(1) NOT NULL DEFAULT '0',
  `jobs` int(10) unsigned NOT NULL,
  `replys` int(10) unsigned NOT NULL,
  `famous` tinyint(1) unsigned NOT NULL,
  `qq` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `audit` (`audit`),
  KEY `companyname` (`companyname`),
  KEY `addtime` (`addtime`),
  KEY `jobs_rtime` (`jobs`,`refreshtime`),
  KEY `setmeal_id` (`setmeal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_company_profile
-- ----------------------------

-- ----------------------------
-- Table structure for qs_company_statistics
-- ----------------------------
DROP TABLE IF EXISTS `qs_company_statistics`;
CREATE TABLE `qs_company_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `source` tinyint(1) unsigned NOT NULL COMMENT '1pc 2触屏 3移动',
  `jobid` int(10) unsigned NOT NULL,
  `apply` tinyint(1) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `viewtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comid_apply_addtime_source_jobid` (`comid`,`apply`,`addtime`,`source`,`jobid`),
  KEY `comid_apply_addtime_jobid` (`comid`,`apply`,`addtime`,`jobid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_company_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for qs_company_tpl
-- ----------------------------
DROP TABLE IF EXISTS `qs_company_tpl`;
CREATE TABLE `qs_company_tpl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `tplid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_company_tpl
-- ----------------------------

-- ----------------------------
-- Table structure for qs_config
-- ----------------------------
DROP TABLE IF EXISTS `qs_config`;
CREATE TABLE `qs_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  `note` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_config
-- ----------------------------
INSERT INTO `qs_config` VALUES ('1', 'site_name', 'Mr jobs人才系统', '网站名称', '');
INSERT INTO `qs_config` VALUES ('2', 'site_domain', 'http://139.199.59.73', '网站域名', '');
INSERT INTO `qs_config` VALUES ('3', 'site_dir', '/qishi/upload/', '网站安装目录', '');
INSERT INTO `qs_config` VALUES ('4', 'template_dir', 'default', '默认主题', '');
INSERT INTO `qs_config` VALUES ('5', 'top_tel', '000-00000000', '顶部联系电话', '');
INSERT INTO `qs_config` VALUES ('6', 'bootom_tel', '000-00000000', '底部联系电话', '');
INSERT INTO `qs_config` VALUES ('7', 'address', '00省00市00路00号0大厦00楼', '联系地址', '');
INSERT INTO `qs_config` VALUES ('8', 'bottom_other', 'Copyright © 2016 jobs.kalichimall.com All Right Reserved ', '底部其他', '');
INSERT INTO `qs_config` VALUES ('9', 'icp', 'icp000000000', '备案信息', '');
INSERT INTO `qs_config` VALUES ('10', 'logo_home', '', '站点主LOGO', '');
INSERT INTO `qs_config` VALUES ('11', 'isclose', '0', '站点是否关闭', '');
INSERT INTO `qs_config` VALUES ('12', 'close_reason', '', '站点关闭原因', '');
INSERT INTO `qs_config` VALUES ('13', 'statistics', '', '站点统计', '');
INSERT INTO `qs_config` VALUES ('14', 'closereg', '0', '关闭注册', '');
INSERT INTO `qs_config` VALUES ('15', 'showjobcontact', '1', '企业联系方式显示规则', '');
INSERT INTO `qs_config` VALUES ('16', 'showresumecontact', '2', '简历联系方式显示规则', '');
INSERT INTO `qs_config` VALUES ('17', 'points_byname', '积分', '积分代名词', '');
INSERT INTO `qs_config` VALUES ('18', 'points_quantifier', '点', '积分单位', '');
INSERT INTO `qs_config` VALUES ('19', 'resume_display', '2', '简历显示方式', '');
INSERT INTO `qs_config` VALUES ('20', 'audit_verifycom_editjob', '-1', '已认证企业修改职位审核状态', '');
INSERT INTO `qs_config` VALUES ('21', 'resume_img_display', '2', '简历照片显示方式', '');
INSERT INTO `qs_config` VALUES ('22', 'audit_unexaminedcom_editjob', '-1', '未认证企业修改职位审核状态', '');
INSERT INTO `qs_config` VALUES ('23', 'companyimg_display', '2', '企业风采显示规则', '');
INSERT INTO `qs_config` VALUES ('24', 'jobs_display', '2', '职位显示规则', '');
INSERT INTO `qs_config` VALUES ('25', 'company_repeat', '1', '是否允许公司名称重复', '');
INSERT INTO `qs_config` VALUES ('26', 'jobs_list_max', '1000', '职位列表数最大', '');
INSERT INTO `qs_config` VALUES ('27', 'certificate_max_size', '2000', '上传营业执照文件限制', '');
INSERT INTO `qs_config` VALUES ('28', 'payment_rate', '10', '充值比例', '');
INSERT INTO `qs_config` VALUES ('29', 'resume_max', '3', '个人会员允许发布简历', '');
INSERT INTO `qs_config` VALUES ('30', 'resumesearch_key_first_choice', '1', '简历关键字搜索首选类型', '');
INSERT INTO `qs_config` VALUES ('31', 'resume_list_max', '1000', '简历列表数最大', '');
INSERT INTO `qs_config` VALUES ('32', 'resume_photo_max', '500', '上传简历照片大小', '');
INSERT INTO `qs_config` VALUES ('33', 'down_resume_limit', '2', '简历下载要求', '');
INSERT INTO `qs_config` VALUES ('34', 'logo_max_size', '500', '企业LOGO文件限制', '');
INSERT INTO `qs_config` VALUES ('35', 'apply_jobs_max', '30', '每天允许申请职位数', '');
INSERT INTO `qs_config` VALUES ('36', 'audit_edit_resume', '-1', '修改简历默认审核状态', '');
INSERT INTO `qs_config` VALUES ('37', 'audit_edit_com', '-1', '修改企业资料后认证状态', '');
INSERT INTO `qs_config` VALUES ('38', 'map_zoom', '14', '默认地区zoom', '');
INSERT INTO `qs_config` VALUES ('39', 'map_center_x', '112.570966', '默认地图x', '');
INSERT INTO `qs_config` VALUES ('40', 'map_center_y', '37.84836', '默认地图y', '');
INSERT INTO `qs_config` VALUES ('41', 'map_ak', 'YpHFdZwwQ6fZefPqXRUw9gBh', '百度地图密钥', '');
INSERT INTO `qs_config` VALUES ('42', 'badword_status', '1', '是否开启敏感词过滤', '');
INSERT INTO `qs_config` VALUES ('43', 'filter_ip', '', '禁止IP', '');
INSERT INTO `qs_config` VALUES ('44', 'filter_ip_tips', '您的IP已经被锁定禁止访问，请联系网站管理员。', '禁止IP提示', '');
INSERT INTO `qs_config` VALUES ('45', 'meal_min_remind', '10', '服务到期时间提前几天提醒', '');
INSERT INTO `qs_config` VALUES ('46', 'reg_service', '1', '新注册会员赠送服务id', '');
INSERT INTO `qs_config` VALUES ('47', 'tpl_company', 'default', '默认企业主题模板', '');
INSERT INTO `qs_config` VALUES ('48', 'tpl_personal', 'default', '默认简历主题模板', '');
INSERT INTO `qs_config` VALUES ('49', 'enable_com_buy_points', '1', '是否允许企业充值积分', '');
INSERT INTO `qs_config` VALUES ('50', 'login_com_audit_mobile', '0', '强制企业会员认证手机', '');
INSERT INTO `qs_config` VALUES ('51', 'fulltext_orderby', '1', '全文搜索默认排序', '');
INSERT INTO `qs_config` VALUES ('52', 'login_per_audit_mobile', '0', '强制个人会员认证手机', '');
INSERT INTO `qs_config` VALUES ('53', 'jobsearch_type', '1', '职位搜索模式', '');
INSERT INTO `qs_config` VALUES ('54', 'resumesearch_type', '1', '简历搜索模式', '');
INSERT INTO `qs_config` VALUES ('55', 'contact_img_com', '1', '企业联系方式图形化', '');
INSERT INTO `qs_config` VALUES ('56', 'contact_img_resume', '1', '简历联系方式图形化', '');
INSERT INTO `qs_config` VALUES ('57', 'download_resume_price', '5', '下载简历所需人民币', '');
INSERT INTO `qs_config` VALUES ('58', 'category_district_level', '3', '地区分类层级', '');
INSERT INTO `qs_config` VALUES ('59', 'avatar_size', '50,150', '头像上传尺寸', '');
INSERT INTO `qs_config` VALUES ('60', 'refresh_jobs_by_points', '0', '刷新职位时是否允许使用积分消费', '');
INSERT INTO `qs_config` VALUES ('61', 'refresh_jobs_price', '2', '刷新职位所需人民币', '');
INSERT INTO `qs_config` VALUES ('62', 'match_type', '0', 'MYSQL全文搜索是否开启盲查询', '');
INSERT INTO `qs_config` VALUES ('63', 'per_refresh_resume_space', '1', '刷新简历时间间隔', '');
INSERT INTO `qs_config` VALUES ('64', 'per_refresh_resume_time', '6', '每天刷新简历次数限制', '');
INSERT INTO `qs_config` VALUES ('65', 'closetime', '0', '是否关闭更新时间', '');
INSERT INTO `qs_config` VALUES ('66', 'weixin_apiopen', '0', '开启微信', '');
INSERT INTO `qs_config` VALUES ('67', 'weixin_appsecret', '', '微信appsecret', '');
INSERT INTO `qs_config` VALUES ('68', 'weixin_img', 'weixin_img.jpg', '微信二维码', '');
INSERT INTO `qs_config` VALUES ('69', 'weixin_first_pic', 'weixin_first_pic.gif', '微信头条信息大图', '');
INSERT INTO `qs_config` VALUES ('70', 'weixin_default_pic', 'weixin_default_pic.png', '微信列表小图', '');
INSERT INTO `qs_config` VALUES ('71', 'weixin_apptoken', '', '微信apptoken', '');
INSERT INTO `qs_config` VALUES ('72', 'weixin_appid', '', '微信appid', '');
INSERT INTO `qs_config` VALUES ('73', 'access_token', '', '微信accesstoken', '');
INSERT INTO `qs_config` VALUES ('74', 'expires_addtime', '', '微信accesstoken存活时间', '');
INSERT INTO `qs_config` VALUES ('75', 'weixin_scan_reg', '0', '是否开启微信扫描注册', '');
INSERT INTO `qs_config` VALUES ('76', 'weixin_scan_bind', '0', '是否开启微信扫描绑定', '');
INSERT INTO `qs_config` VALUES ('77', 'weixin_mpname', 'Mr jobs人才系统', '微信公众号名称', '');
INSERT INTO `qs_config` VALUES ('78', 'weixin_mpnumber', 'demoMr jobs', '微信号', '');
INSERT INTO `qs_config` VALUES ('79', 'weixin_scan_login', '0', '是否开启微信扫描登录', '');
INSERT INTO `qs_config` VALUES ('80', 'weixin_encoding_aes_key', '', '微信消息加解密密钥', '');
INSERT INTO `qs_config` VALUES ('81', 'showresumecontact_wap', '2', '触屏版简历联系方式显示规则', '');
INSERT INTO `qs_config` VALUES ('82', 'showjobcontact_wap', '1', '触屏版职位联系方式显示规则', '');
INSERT INTO `qs_config` VALUES ('83', 'is_superposition', '0', '重新开通服务时是否叠加服务项目', '');
INSERT INTO `qs_config` VALUES ('84', 'check_reg_email', '0', '邮件注册会员激活', '');
INSERT INTO `qs_config` VALUES ('85', 'site_introduce', '', '站点介绍', '');
INSERT INTO `qs_config` VALUES ('86', 'company_sms', '1', '是否开启企业短信', '');
INSERT INTO `qs_config` VALUES ('87', 'login_com_audit_certificate', '0', '强制企业会员认证营业执照', '');
INSERT INTO `qs_config` VALUES ('88', 'reg_prefix', 'sp_', '手机注册用户名前缀', '');
INSERT INTO `qs_config` VALUES ('89', 'reg_password_tpye', '1', '快速注册生成密码', '');
INSERT INTO `qs_config` VALUES ('90', 'reg_weixin_password', '123456', '微信注册指定密码', '');
INSERT INTO `qs_config` VALUES ('91', 'email_reg_prefix', 'em_', '邮箱注册用户名前缀', '');
INSERT INTO `qs_config` VALUES ('92', 'third_reg_prefix', 'third_', '第三方注册生成用户名', '');
INSERT INTO `qs_config` VALUES ('93', 'sms_open', '0', '是否开启短信模块', '');
INSERT INTO `qs_config` VALUES ('94', 'sms_captcha_service', 'qscms', '验证码类短信服务商', '');
INSERT INTO `qs_config` VALUES ('95', 'sms_notice_service', 'qscms', '通知类短信服务商', '');
INSERT INTO `qs_config` VALUES ('96', 'sms_other_service', 'qscms', '其它类短信服务商', '');
INSERT INTO `qs_config` VALUES ('97', 'sms_default_service', 'qscms', '默认短信服务商', '');
INSERT INTO `qs_config` VALUES ('98', 'captcha_config', 'a:5:{s:10:\"varify_reg\";s:1:\"1\";s:13:\"varify_mobile\";s:1:\"1\";s:14:\"varify_suggest\";s:1:\"1\";s:10:\"user_login\";s:1:\"3\";s:11:\"admin_login\";s:1:\"3\";}', '验证次数规则', '');
INSERT INTO `qs_config` VALUES ('99', 'attr_allow_exts', 'bmp,png,gif,jpeg,jpg,doc', '允许的附件扩展', '');
INSERT INTO `qs_config` VALUES ('100', 'attach_path', 'data/upload/', '附件地址', '');
INSERT INTO `qs_config` VALUES ('101', 'resume_img_size', '50,150', '简历图片尺寸', '');
INSERT INTO `qs_config` VALUES ('102', 'subscribe_period', '7', '职位订阅频率', '');
INSERT INTO `qs_config` VALUES ('103', 'subscribe_num', '5', '职位订阅最大数', '');
INSERT INTO `qs_config` VALUES ('104', 'company_img_max', '800', '企业风采最大限制', '');
INSERT INTO `qs_config` VALUES ('105', 'captcha', 'a:2:{s:2:\"id\";s:32:\"b46d1900d0a894591916ea94ea91bd2c\";s:3:\"key\";s:32:\"36fc3fe98530eea08dfc6ce76e3d24c4\";}', '验证账号PC设置', '');
INSERT INTO `qs_config` VALUES ('106', 'is_superposition_time', '0', '重新开通服务时是否叠加服务时间', '');
INSERT INTO `qs_config` VALUES ('107', 'hold_beyond_jobs', '0', '重新开通服务时是否保留超出限额的在招职位', '');
INSERT INTO `qs_config` VALUES ('108', 'refresh_jobs_space', '1', '刷新职位时间间隔', '');
INSERT INTO `qs_config` VALUES ('109', 'famous_company_img', '', '名企保障默认图', '');
INSERT INTO `qs_config` VALUES ('110', 'famous_company_price', '1000', '名企保障默认价格', '');
INSERT INTO `qs_config` VALUES ('111', 'logo_user', '', '网站会员中心Logo', '');
INSERT INTO `qs_config` VALUES ('112', 'logo_other', '', '网站其它页Logo', '');
INSERT INTO `qs_config` VALUES ('113', 'category_jobs_level', '3', '职位分类层级', '');
INSERT INTO `qs_config` VALUES ('114', 'captcha_open', '1', '是否开启PC端极验', '');
INSERT INTO `qs_config` VALUES ('115', 'jobsearch_key_first_choice', '0', '职位关键字搜索首选类型', '');
INSERT INTO `qs_config` VALUES ('116', 'jobsearch_key_open_jobcategory', '0', '职位搜索开启职位分类', '');
INSERT INTO `qs_config` VALUES ('117', 'resumesearch_key_open_jobcategory', '0', '简历搜索开启职位分类', '');
INSERT INTO `qs_config` VALUES ('118', 'rewrite_type', 'normal', '伪静态规则', '');
INSERT INTO `qs_config` VALUES ('119', 'site_title', 'Mr jobs人才系统', '默认网站seo_title', '');
INSERT INTO `qs_config` VALUES ('120', 'site_keyword', 'Mr jobs', '默认网站seo_keyword', '');
INSERT INTO `qs_config` VALUES ('121', 'site_description', 'Mr jobs', '默认网站seo_description', '');
INSERT INTO `qs_config` VALUES ('122', 'contact_email', '', '网站联系邮箱', '');
INSERT INTO `qs_config` VALUES ('123', 'com_buy_points_max', '10000', '企业充值积分上限', '');
INSERT INTO `qs_config` VALUES ('124', 'suggest_verify', '0', '意见反馈验证开关', '');
INSERT INTO `qs_config` VALUES ('125', 'ios_download', '', 'app下载链接ios', '');
INSERT INTO `qs_config` VALUES ('126', 'android_download', '', 'app下载链接android', '');
INSERT INTO `qs_config` VALUES ('127', 'setmeal_by_points', '1', '购买套餐是否允许使用积分抵现', '');
INSERT INTO `qs_config` VALUES ('128', 'key_urlencode', '0', '是否开启关键词URL编码', '');
INSERT INTO `qs_config` VALUES ('129', 'down_resume_by_points', '0', '下载简历时是否允许使用积分消费', '');
INSERT INTO `qs_config` VALUES ('130', 'wage_unit', '1', '薪资单位', '');
INSERT INTO `qs_config` VALUES ('131', 'resumesearch_mod', '0', '简历数据模式', '');
INSERT INTO `qs_config` VALUES ('132', 'com_buy_points_min', '0', '企业充值积分下限', '');
INSERT INTO `qs_config` VALUES ('133', 'open_invoice', '1', '是否开启订单发票', '');
INSERT INTO `qs_config` VALUES ('134', 'default_display_name', '1', '简历姓名默认显示方式', '');
INSERT INTO `qs_config` VALUES ('135', 'resume_download_quick', '1', '是否开启下载简历快捷消费', '');

-- ----------------------------
-- Table structure for qs_consultant
-- ----------------------------
DROP TABLE IF EXISTS `qs_consultant`;
CREATE TABLE `qs_consultant` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `pic` text,
  `qq` varchar(15) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `tel` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_consultant
-- ----------------------------

-- ----------------------------
-- Table structure for qs_consultant_complaint
-- ----------------------------
DROP TABLE IF EXISTS `qs_consultant_complaint`;
CREATE TABLE `qs_consultant_complaint` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(30) NOT NULL,
  `consultant_id` int(10) unsigned NOT NULL,
  `consultant_name` varchar(30) NOT NULL,
  `notes` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `audit` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_consultant_complaint
-- ----------------------------

-- ----------------------------
-- Table structure for qs_crons
-- ----------------------------
DROP TABLE IF EXISTS `qs_crons`;
CREATE TABLE `qs_crons` (
  `cronid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `available` tinyint(1) unsigned NOT NULL,
  `admin_set` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `filename` varchar(60) NOT NULL,
  `lastrun` int(10) unsigned NOT NULL,
  `nextrun` int(10) unsigned NOT NULL,
  `weekday` tinyint(1) NOT NULL,
  `day` tinyint(2) NOT NULL,
  `hour` tinyint(2) NOT NULL,
  `minute` varchar(60) NOT NULL,
  PRIMARY KEY (`cronid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_crons
-- ----------------------------
INSERT INTO `qs_crons` VALUES ('1', '1', '1', '每周清除缓存文件', 'ClearCache', '0', '0', '5', '-1', '1', '0');
INSERT INTO `qs_crons` VALUES ('2', '1', '1', '限时推广清理', 'ClearPromotion', '0', '0', '-1', '-1', '-1', '1');
INSERT INTO `qs_crons` VALUES ('3', '1', '1', '职位订阅发送邮件', 'JobSubscribe', '0', '0', '0', '-1', '0', '');
INSERT INTO `qs_crons` VALUES ('4', '1', '1', '委托简历自动申请职位', 'AutoApplyJobs', '0', '0', '-1', '-1', '0', '1');
INSERT INTO `qs_crons` VALUES ('5', '1', '1', '每小时自动刷新简历', 'AutoRefreshResume', '0', '0', '-1', '-1', '-1', '10');
INSERT INTO `qs_crons` VALUES ('6', '1', '1', '每小时自动刷新预约刷新的职位', 'AutoRefreshJobs', '0', '0', '-1', '-1', '-1', '10');
INSERT INTO `qs_crons` VALUES ('7', '1', '1', '每小时清除过期套餐及职位', 'ClearExpiredSetmeal', '0', '0', '-1', '-1', '-1', '1');
INSERT INTO `qs_crons` VALUES ('8', '1', '1', '每天处理未支付订单', 'ClearOrder', '0', '0', '-1', '-1', '0', '1');

-- ----------------------------
-- Table structure for qs_explain
-- ----------------------------
DROP TABLE IF EXISTS `qs_explain`;
CREATE TABLE `qs_explain` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` smallint(5) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `tit_color` varchar(10) DEFAULT NULL,
  `tit_b` tinyint(1) NOT NULL DEFAULT '0',
  `is_display` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_url` varchar(200) NOT NULL DEFAULT '0',
  `seo_keywords` varchar(100) DEFAULT NULL,
  `seo_description` varchar(200) DEFAULT NULL,
  `click` int(11) NOT NULL DEFAULT '1',
  `addtime` int(10) NOT NULL,
  `show_order` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_explain
-- ----------------------------
INSERT INTO `qs_explain` VALUES ('1', '1', '网站介绍', '', '', '0', '1', 'http://', '', '', '1', '1264332774', '0');
INSERT INTO `qs_explain` VALUES ('4', '1', '产品服务', '', '', '0', '1', 'http://', '', '', '1', '1264332774', '0');
INSERT INTO `qs_explain` VALUES ('5', '1', '法律申明', '', '', '0', '1', 'http://', '', '', '1', '1264332774', '0');
INSERT INTO `qs_explain` VALUES ('6', '1', '推广合作', '', '', '0', '1', 'http://', '', '', '1', '1264332774', '0');
INSERT INTO `qs_explain` VALUES ('7', '1', '联系我们', '', '', '0', '1', 'http://', '', '', '1', '1264332774', '0');
INSERT INTO `qs_explain` VALUES ('8', '1', '招贤纳士', '', '', '0', '1', 'http://', '', '', '1', '1264332774', '0');

-- ----------------------------
-- Table structure for qs_explain_category
-- ----------------------------
DROP TABLE IF EXISTS `qs_explain_category`;
CREATE TABLE `qs_explain_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(80) NOT NULL,
  `category_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_set` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_explain_category
-- ----------------------------
INSERT INTO `qs_explain_category` VALUES ('1', '关于我们', '0', '1');

-- ----------------------------
-- Table structure for qs_feedback
-- ----------------------------
DROP TABLE IF EXISTS `qs_feedback`;
CREATE TABLE `qs_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `infotype` tinyint(3) unsigned NOT NULL,
  `feedback` varchar(250) NOT NULL,
  `addtime` int(10) NOT NULL,
  `tel` varchar(255) NOT NULL DEFAULT '',
  `audit` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for qs_help
-- ----------------------------
DROP TABLE IF EXISTS `qs_help`;
CREATE TABLE `qs_help` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` smallint(5) unsigned NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) unsigned NOT NULL,
  `ordid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`,`ordid`,`id`),
  KEY `focos_article_order` (`ordid`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_help
-- ----------------------------

-- ----------------------------
-- Table structure for qs_help_category
-- ----------------------------
DROP TABLE IF EXISTS `qs_help_category`;
CREATE TABLE `qs_help_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL,
  `categoryname` varchar(80) NOT NULL,
  `category_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_help_category
-- ----------------------------
INSERT INTO `qs_help_category` VALUES ('1', '0', '个人求职', '0');
INSERT INTO `qs_help_category` VALUES ('2', '0', '企业招聘', '0');
INSERT INTO `qs_help_category` VALUES ('3', '1', '常见问题', '0');
INSERT INTO `qs_help_category` VALUES ('4', '1', '新手上路', '0');
INSERT INTO `qs_help_category` VALUES ('5', '1', '账号管理', '0');
INSERT INTO `qs_help_category` VALUES ('6', '1', '简历管理', '0');
INSERT INTO `qs_help_category` VALUES ('7', '1', '职位搜索', '0');
INSERT INTO `qs_help_category` VALUES ('8', '1', '求职管理', '0');
INSERT INTO `qs_help_category` VALUES ('9', '1', '订阅&amp;关注', '0');
INSERT INTO `qs_help_category` VALUES ('10', '1', '增值服务', '0');
INSERT INTO `qs_help_category` VALUES ('11', '1', '其它问题', '0');
INSERT INTO `qs_help_category` VALUES ('12', '2', '常见问题', '0');
INSERT INTO `qs_help_category` VALUES ('13', '2', '新手上路', '0');
INSERT INTO `qs_help_category` VALUES ('14', '2', '帐号管理', '0');
INSERT INTO `qs_help_category` VALUES ('15', '2', '资料管理', '0');
INSERT INTO `qs_help_category` VALUES ('16', '2', '职位管理', '0');
INSERT INTO `qs_help_category` VALUES ('17', '2', '简历搜索', '0');
INSERT INTO `qs_help_category` VALUES ('18', '2', '简历管理', '0');
INSERT INTO `qs_help_category` VALUES ('19', '2', '会员服务', '0');
INSERT INTO `qs_help_category` VALUES ('20', '2', '招聘会', '0');
INSERT INTO `qs_help_category` VALUES ('21', '2', '微信招聘', '0');
INSERT INTO `qs_help_category` VALUES ('22', '2', '招聘技巧', '0');
INSERT INTO `qs_help_category` VALUES ('23', '2', '其它问题', '0');
INSERT INTO `qs_help_category` VALUES ('24', '0', '积分商城', '0');
INSERT INTO `qs_help_category` VALUES ('25', '24', '常见问题', '0');
INSERT INTO `qs_help_category` VALUES ('26', '24', '购物指南', '0');
INSERT INTO `qs_help_category` VALUES ('27', '24', '付款方式', '0');
INSERT INTO `qs_help_category` VALUES ('28', '24', '物流配送', '0');
INSERT INTO `qs_help_category` VALUES ('29', '24', '售后服务', '0');
INSERT INTO `qs_help_category` VALUES ('30', '24', '其它问题', '0');

-- ----------------------------
-- Table structure for qs_hotword
-- ----------------------------
DROP TABLE IF EXISTS `qs_hotword`;
CREATE TABLE `qs_hotword` (
  `w_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `w_word` varchar(120) NOT NULL,
  `w_hot` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`w_id`),
  KEY `w_word` (`w_word`),
  KEY `w_hot` (`w_hot`)
) ENGINE=MyISAM AUTO_INCREMENT=127776 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_hotword
-- ----------------------------
INSERT INTO `qs_hotword` VALUES ('44', '运营助理', '70');
INSERT INTO `qs_hotword` VALUES ('45', '水电工', '207');
INSERT INTO `qs_hotword` VALUES ('46', '会计', '5475');
INSERT INTO `qs_hotword` VALUES ('47', '客服', '656');
INSERT INTO `qs_hotword` VALUES ('48', '技术支持', '436');
INSERT INTO `qs_hotword` VALUES ('49', '平面设计师', '1749');
INSERT INTO `qs_hotword` VALUES ('50', '电话销售', '2930');
INSERT INTO `qs_hotword` VALUES ('51', '前台接待', '1045');
INSERT INTO `qs_hotword` VALUES ('52', '销售', '1457');
INSERT INTO `qs_hotword` VALUES ('53', '销售助理', '3365');
INSERT INTO `qs_hotword` VALUES ('54', '平面设计', '2383');
INSERT INTO `qs_hotword` VALUES ('55', '总经理助理', '1372');
INSERT INTO `qs_hotword` VALUES ('58', '行政人事主管', '212');
INSERT INTO `qs_hotword` VALUES ('59', '高级猎头顾问', '10');
INSERT INTO `qs_hotword` VALUES ('60', '猎头顾问助理', '14');
INSERT INTO `qs_hotword` VALUES ('61', '猎头顾问', '36');
INSERT INTO `qs_hotword` VALUES ('62', '网页设计', '232');
INSERT INTO `qs_hotword` VALUES ('67', '电话销售专员', '201');
INSERT INTO `qs_hotword` VALUES ('68', '公关经理', '216');
INSERT INTO `qs_hotword` VALUES ('70', '市场主管', '349');
INSERT INTO `qs_hotword` VALUES ('75', '网页制作', '62');
INSERT INTO `qs_hotword` VALUES ('77', '软件销售顾问', '10');
INSERT INTO `qs_hotword` VALUES ('78', '网站美工', '506');
INSERT INTO `qs_hotword` VALUES ('81', '助理', '267');
INSERT INTO `qs_hotword` VALUES ('82', '仓储管理员', '17');
INSERT INTO `qs_hotword` VALUES ('83', '总账会计', '217');
INSERT INTO `qs_hotword` VALUES ('84', '行政人事经理', '227');
INSERT INTO `qs_hotword` VALUES ('86', '互动设计师', '16');
INSERT INTO `qs_hotword` VALUES ('88', '项目经理', '2687');
INSERT INTO `qs_hotword` VALUES ('89', '硬件工程师', '518');
INSERT INTO `qs_hotword` VALUES ('90', '项目策划', '30');
INSERT INTO `qs_hotword` VALUES ('92', '创意组长', '10');
INSERT INTO `qs_hotword` VALUES ('93', '策划总监', '267');
INSERT INTO `qs_hotword` VALUES ('94', '资深平面设计', '77');
INSERT INTO `qs_hotword` VALUES ('95', '人事经理', '446');
INSERT INTO `qs_hotword` VALUES ('96', '客户总监', '116');
INSERT INTO `qs_hotword` VALUES ('97', '物流专员', '177');
INSERT INTO `qs_hotword` VALUES ('99', '海外销售', '19');
INSERT INTO `qs_hotword` VALUES ('101', '海运操作', '139');
INSERT INTO `qs_hotword` VALUES ('102', '前台', '896');
INSERT INTO `qs_hotword` VALUES ('103', '海运销售', '103');
INSERT INTO `qs_hotword` VALUES ('104', '法务专员', '312');
INSERT INTO `qs_hotword` VALUES ('105', '驾驶员', '500');
INSERT INTO `qs_hotword` VALUES ('107', '销售经理', '7290');
INSERT INTO `qs_hotword` VALUES ('108', '工程造价员', '26');
INSERT INTO `qs_hotword` VALUES ('109', '业务发展主管', '22');
INSERT INTO `qs_hotword` VALUES ('110', '前台文员', '1062');
INSERT INTO `qs_hotword` VALUES ('111', '财务经理', '1697');
INSERT INTO `qs_hotword` VALUES ('112', '出纳', '1824');
INSERT INTO `qs_hotword` VALUES ('113', 'PHP程序员', '498');
INSERT INTO `qs_hotword` VALUES ('115', '门店店员', '19');
INSERT INTO `qs_hotword` VALUES ('117', '司机', '2445');
INSERT INTO `qs_hotword` VALUES ('119', '企划经理', '201');
INSERT INTO `qs_hotword` VALUES ('120', '外贸业务经理', '38');
INSERT INTO `qs_hotword` VALUES ('122', '外贸业务跟单', '28');
INSERT INTO `qs_hotword` VALUES ('123', '服装设计师', '183');
INSERT INTO `qs_hotword` VALUES ('124', '电子商务客服', '44');
INSERT INTO `qs_hotword` VALUES ('125', '黄金经纪人', '31');
INSERT INTO `qs_hotword` VALUES ('127', '设计助理', '264');
INSERT INTO `qs_hotword` VALUES ('130', '仓库管理员', '1698');
INSERT INTO `qs_hotword` VALUES ('131', '终端销售', '16');
INSERT INTO `qs_hotword` VALUES ('132', '投资顾问', '405');
INSERT INTO `qs_hotword` VALUES ('133', '网络营销专员', '191');
INSERT INTO `qs_hotword` VALUES ('134', '人事助理', '633');
INSERT INTO `qs_hotword` VALUES ('140', '客服人员', '307');
INSERT INTO `qs_hotword` VALUES ('142', '财务助理', '225');
INSERT INTO `qs_hotword` VALUES ('143', '讲师', '196');
INSERT INTO `qs_hotword` VALUES ('144', '人事行政主管', '233');
INSERT INTO `qs_hotword` VALUES ('145', '三维设计师', '63');
INSERT INTO `qs_hotword` VALUES ('146', '商务代表', '632');
INSERT INTO `qs_hotword` VALUES ('147', '飞行学员', '16');
INSERT INTO `qs_hotword` VALUES ('148', '市场助理', '544');
INSERT INTO `qs_hotword` VALUES ('149', '总经理秘书', '570');
INSERT INTO `qs_hotword` VALUES ('155', '行业研究员', '18');
INSERT INTO `qs_hotword` VALUES ('158', '咨询总监', '21');
INSERT INTO `qs_hotword` VALUES ('159', '空间设计师', '113');
INSERT INTO `qs_hotword` VALUES ('160', '网络管理员', '508');
INSERT INTO `qs_hotword` VALUES ('161', '工程销售', '23');
INSERT INTO `qs_hotword` VALUES ('162', '市场总监', '445');
INSERT INTO `qs_hotword` VALUES ('164', '包装设计师', '56');
INSERT INTO `qs_hotword` VALUES ('165', '销售总监', '1362');
INSERT INTO `qs_hotword` VALUES ('166', '市场拓展员', '49');
INSERT INTO `qs_hotword` VALUES ('169', '培训助理', '124');
INSERT INTO `qs_hotword` VALUES ('171', '平面设计经理', '11');
INSERT INTO `qs_hotword` VALUES ('174', '助理设计师', '62');
INSERT INTO `qs_hotword` VALUES ('176', '市场经理', '588');
INSERT INTO `qs_hotword` VALUES ('179', '中心校长', '23');
INSERT INTO `qs_hotword` VALUES ('180', '软件工程师', '1416');
INSERT INTO `qs_hotword` VALUES ('181', '软件开发', '55');
INSERT INTO `qs_hotword` VALUES ('183', '商务助理', '970');
INSERT INTO `qs_hotword` VALUES ('188', '网页设计师', '596');
INSERT INTO `qs_hotword` VALUES ('190', '财务', '277');
INSERT INTO `qs_hotword` VALUES ('194', '行政专员', '707');
INSERT INTO `qs_hotword` VALUES ('195', '总裁助理', '158');
INSERT INTO `qs_hotword` VALUES ('198', '设计师助理', '86');
INSERT INTO `qs_hotword` VALUES ('199', '销售代表', '9256');
INSERT INTO `qs_hotword` VALUES ('202', '验收员', '16');
INSERT INTO `qs_hotword` VALUES ('206', '外贸专员', '160');
INSERT INTO `qs_hotword` VALUES ('208', '室内设计师', '319');
INSERT INTO `qs_hotword` VALUES ('209', '成本经理', '35');
INSERT INTO `qs_hotword` VALUES ('210', '项目工程师', '272');
INSERT INTO `qs_hotword` VALUES ('212', '电话业务员', '56');
INSERT INTO `qs_hotword` VALUES ('214', '实习生', '689');
INSERT INTO `qs_hotword` VALUES ('215', '总裁秘书', '136');
INSERT INTO `qs_hotword` VALUES ('216', '程序员', '321');
INSERT INTO `qs_hotword` VALUES ('219', '前台行政', '87');
INSERT INTO `qs_hotword` VALUES ('220', '项目实施经理', '20');
INSERT INTO `qs_hotword` VALUES ('221', '学管主任', '12');
INSERT INTO `qs_hotword` VALUES ('223', '市场推广经理', '92');
INSERT INTO `qs_hotword` VALUES ('226', '资深设计师', '252');
INSERT INTO `qs_hotword` VALUES ('228', '销售员', '556');
INSERT INTO `qs_hotword` VALUES ('229', '网站运营管理', '11');
INSERT INTO `qs_hotword` VALUES ('233', '销售工程师', '4075');
INSERT INTO `qs_hotword` VALUES ('234', '咨询主任', '19');
INSERT INTO `qs_hotword` VALUES ('235', '技术工程师', '590');
INSERT INTO `qs_hotword` VALUES ('240', '高级物业顾问', '30');
INSERT INTO `qs_hotword` VALUES ('243', '营业主任', '18');
INSERT INTO `qs_hotword` VALUES ('244', '出纳员', '1487');
INSERT INTO `qs_hotword` VALUES ('246', '预算员', '451');
INSERT INTO `qs_hotword` VALUES ('249', '市场拓展专员', '277');
INSERT INTO `qs_hotword` VALUES ('250', '物业顾问', '51');
INSERT INTO `qs_hotword` VALUES ('252', '门卫', '32');
INSERT INTO `qs_hotword` VALUES ('259', '测试工程师', '587');
INSERT INTO `qs_hotword` VALUES ('260', '副总裁', '16');
INSERT INTO `qs_hotword` VALUES ('261', '金融分析师', '24');
INSERT INTO `qs_hotword` VALUES ('262', '采购专员', '325');
INSERT INTO `qs_hotword` VALUES ('265', '外贸业务员', '861');
INSERT INTO `qs_hotword` VALUES ('267', '装饰设计师', '69');
INSERT INTO `qs_hotword` VALUES ('274', '红酒销售', '11');
INSERT INTO `qs_hotword` VALUES ('277', '营业代表', '22');
INSERT INTO `qs_hotword` VALUES ('278', '客户经理', '2952');
INSERT INTO `qs_hotword` VALUES ('279', '制冷工程师', '29');
INSERT INTO `qs_hotword` VALUES ('280', '工程师助理', '17');
INSERT INTO `qs_hotword` VALUES ('282', '销售主管', '3032');
INSERT INTO `qs_hotword` VALUES ('284', '设计专员', '47');
INSERT INTO `qs_hotword` VALUES ('285', '省区销售经理', '141');
INSERT INTO `qs_hotword` VALUES ('292', '文案策划', '855');
INSERT INTO `qs_hotword` VALUES ('296', '铸造工程师', '19');
INSERT INTO `qs_hotword` VALUES ('297', '会计主管', '558');
INSERT INTO `qs_hotword` VALUES ('298', '模具工程师', '71');
INSERT INTO `qs_hotword` VALUES ('299', '3D设计师', '124');
INSERT INTO `qs_hotword` VALUES ('301', '服装导购员', '14');
INSERT INTO `qs_hotword` VALUES ('302', '秘书', '137');
INSERT INTO `qs_hotword` VALUES ('306', '算法工程师', '42');
INSERT INTO `qs_hotword` VALUES ('307', '设备管理', '46');
INSERT INTO `qs_hotword` VALUES ('308', '店长', '1631');
INSERT INTO `qs_hotword` VALUES ('309', '总经理', '355');
INSERT INTO `qs_hotword` VALUES ('310', '行业客户经理', '49');
INSERT INTO `qs_hotword` VALUES ('312', '采购文员', '55');
INSERT INTO `qs_hotword` VALUES ('313', '技术部工程师', '11');
INSERT INTO `qs_hotword` VALUES ('315', '销售部主管', '21');
INSERT INTO `qs_hotword` VALUES ('316', '女装设计师', '41');
INSERT INTO `qs_hotword` VALUES ('318', '电工', '997');
INSERT INTO `qs_hotword` VALUES ('319', '机修技师', '26');
INSERT INTO `qs_hotword` VALUES ('321', '模具工', '35');
INSERT INTO `qs_hotword` VALUES ('323', '高级客户经理', '279');
INSERT INTO `qs_hotword` VALUES ('324', '副总经理', '500');
INSERT INTO `qs_hotword` VALUES ('325', '服务工程师', '233');
INSERT INTO `qs_hotword` VALUES ('329', '网络推广经理', '40');
INSERT INTO `qs_hotword` VALUES ('330', '培训经理', '298');
INSERT INTO `qs_hotword` VALUES ('335', '运营策划', '31');
INSERT INTO `qs_hotword` VALUES ('337', '销售经理助理', '62');
INSERT INTO `qs_hotword` VALUES ('340', '行政管理', '59');
INSERT INTO `qs_hotword` VALUES ('341', '消防主管', '31');
INSERT INTO `qs_hotword` VALUES ('343', '客服专员', '1819');
INSERT INTO `qs_hotword` VALUES ('344', '质检员', '625');
INSERT INTO `qs_hotword` VALUES ('345', '软件销售', '123');
INSERT INTO `qs_hotword` VALUES ('347', '系统架构师', '108');
INSERT INTO `qs_hotword` VALUES ('350', '营运经理', '157');
INSERT INTO `qs_hotword` VALUES ('357', '土建工程师', '840');
INSERT INTO `qs_hotword` VALUES ('358', '招商经理', '940');
INSERT INTO `qs_hotword` VALUES ('359', '水电工程师', '346');
INSERT INTO `qs_hotword` VALUES ('364', '广告业务经理', '20');
INSERT INTO `qs_hotword` VALUES ('365', '文员', '1694');
INSERT INTO `qs_hotword` VALUES ('366', '幼师', '22');
INSERT INTO `qs_hotword` VALUES ('368', '理货员', '254');
INSERT INTO `qs_hotword` VALUES ('371', '淘宝商城客服', '32');
INSERT INTO `qs_hotword` VALUES ('372', '客户服务', '160');
INSERT INTO `qs_hotword` VALUES ('373', 'QA', '75');
INSERT INTO `qs_hotword` VALUES ('374', '采购经理', '398');
INSERT INTO `qs_hotword` VALUES ('378', '建筑设计师', '409');
INSERT INTO `qs_hotword` VALUES ('380', '调查员', '11');
INSERT INTO `qs_hotword` VALUES ('382', '暖通工程师', '269');
INSERT INTO `qs_hotword` VALUES ('383', '采购助理', '452');
INSERT INTO `qs_hotword` VALUES ('385', '结构工程师', '412');
INSERT INTO `qs_hotword` VALUES ('387', '销售专员', '902');
INSERT INTO `qs_hotword` VALUES ('388', '人力资源经理', '641');
INSERT INTO `qs_hotword` VALUES ('389', '行政助理', '1645');
INSERT INTO `qs_hotword` VALUES ('393', '业务专员', '168');
INSERT INTO `qs_hotword` VALUES ('394', '设计总监助理', '16');
INSERT INTO `qs_hotword` VALUES ('396', '进出口专员', '22');
INSERT INTO `qs_hotword` VALUES ('398', '采购工程师', '267');
INSERT INTO `qs_hotword` VALUES ('399', '采购员', '1003');
INSERT INTO `qs_hotword` VALUES ('403', '助理工程师', '80');
INSERT INTO `qs_hotword` VALUES ('406', '单证员', '172');
INSERT INTO `qs_hotword` VALUES ('409', '行政前台', '654');
INSERT INTO `qs_hotword` VALUES ('410', '人事行政专员', '309');
INSERT INTO `qs_hotword` VALUES ('416', 'ASP程序员', '49');
INSERT INTO `qs_hotword` VALUES ('417', '资深文案', '159');
INSERT INTO `qs_hotword` VALUES ('419', '媒介专员', '168');
INSERT INTO `qs_hotword` VALUES ('427', '口译英语教师', '25');
INSERT INTO `qs_hotword` VALUES ('429', '韩语教师', '28');
INSERT INTO `qs_hotword` VALUES ('430', '法语教师', '37');
INSERT INTO `qs_hotword` VALUES ('431', '意大利语教师', '28');
INSERT INTO `qs_hotword` VALUES ('433', '粤语教师', '25');
INSERT INTO `qs_hotword` VALUES ('434', '德语老师', '26');
INSERT INTO `qs_hotword` VALUES ('438', '媒介策划经理', '18');
INSERT INTO `qs_hotword` VALUES ('443', '商务英语教师', '27');
INSERT INTO `qs_hotword` VALUES ('444', '网页美工', '260');
INSERT INTO `qs_hotword` VALUES ('446', '网站编辑', '919');
INSERT INTO `qs_hotword` VALUES ('448', '仓管人员', '12');
INSERT INTO `qs_hotword` VALUES ('450', '商务专员', '560');
INSERT INTO `qs_hotword` VALUES ('453', '医药销售代表', '531');
INSERT INTO `qs_hotword` VALUES ('456', '人力资源顾问', '12');
INSERT INTO `qs_hotword` VALUES ('458', '文案', '727');
INSERT INTO `qs_hotword` VALUES ('459', '商务', '102');
INSERT INTO `qs_hotword` VALUES ('461', '网管', '196');
INSERT INTO `qs_hotword` VALUES ('463', '网络推广员', '128');
INSERT INTO `qs_hotword` VALUES ('466', '部长助理', '13');
INSERT INTO `qs_hotword` VALUES ('469', '外贸跟单员', '70');
INSERT INTO `qs_hotword` VALUES ('470', '财务总监', '640');
INSERT INTO `qs_hotword` VALUES ('475', '咨询医生', '66');
INSERT INTO `qs_hotword` VALUES ('476', '质量工程师', '321');
INSERT INTO `qs_hotword` VALUES ('481', '网络工程师', '608');
INSERT INTO `qs_hotword` VALUES ('484', '文秘', '256');
INSERT INTO `qs_hotword` VALUES ('486', '美工', '714');
INSERT INTO `qs_hotword` VALUES ('487', '销售业务', '194');
INSERT INTO `qs_hotword` VALUES ('489', '人力资源', '50');
INSERT INTO `qs_hotword` VALUES ('493', '仪表工程师', '49');
INSERT INTO `qs_hotword` VALUES ('494', '强电工', '17');
INSERT INTO `qs_hotword` VALUES ('495', '人事专员', '1685');
INSERT INTO `qs_hotword` VALUES ('496', '客服代表', '266');
INSERT INTO `qs_hotword` VALUES ('498', '弱电工', '28');
INSERT INTO `qs_hotword` VALUES ('501', '渠道销售经理', '166');
INSERT INTO `qs_hotword` VALUES ('503', '区域销售经理', '2937');
INSERT INTO `qs_hotword` VALUES ('506', '外贸业务主管', '19');
INSERT INTO `qs_hotword` VALUES ('507', '万能工', '94');
INSERT INTO `qs_hotword` VALUES ('508', '制图员', '51');
INSERT INTO `qs_hotword` VALUES ('509', '广告设计', '45');
INSERT INTO `qs_hotword` VALUES ('511', '设计主管', '119');
INSERT INTO `qs_hotword` VALUES ('512', '高级投资经理', '23');
INSERT INTO `qs_hotword` VALUES ('513', '办公文员', '120');
INSERT INTO `qs_hotword` VALUES ('517', '外联专员', '49');
INSERT INTO `qs_hotword` VALUES ('519', '广告策划', '54');
INSERT INTO `qs_hotword` VALUES ('520', '工程技术员', '85');
INSERT INTO `qs_hotword` VALUES ('521', '业务员', '3059');
INSERT INTO `qs_hotword` VALUES ('522', '保安', '941');
INSERT INTO `qs_hotword` VALUES ('523', '外贸单证员', '52');
INSERT INTO `qs_hotword` VALUES ('525', '数据库管理员', '35');
INSERT INTO `qs_hotword` VALUES ('530', '促销主管', '146');
INSERT INTO `qs_hotword` VALUES ('531', '业务主管', '633');
INSERT INTO `qs_hotword` VALUES ('534', '市场部助理', '76');
INSERT INTO `qs_hotword` VALUES ('535', '营业员', '486');
INSERT INTO `qs_hotword` VALUES ('539', '统计', '41');
INSERT INTO `qs_hotword` VALUES ('542', '淘宝运营专员', '32');
INSERT INTO `qs_hotword` VALUES ('543', '客户主任', '139');
INSERT INTO `qs_hotword` VALUES ('544', '产品经理助理', '23');
INSERT INTO `qs_hotword` VALUES ('545', '策划主任', '32');
INSERT INTO `qs_hotword` VALUES ('547', '执行校长', '14');
INSERT INTO `qs_hotword` VALUES ('549', '设计师', '722');
INSERT INTO `qs_hotword` VALUES ('553', '售后技术支持', '45');
INSERT INTO `qs_hotword` VALUES ('555', '渠道开发专员', '13');
INSERT INTO `qs_hotword` VALUES ('557', '分析师', '65');
INSERT INTO `qs_hotword` VALUES ('558', '投资经理', '135');
INSERT INTO `qs_hotword` VALUES ('563', '企划主管', '154');
INSERT INTO `qs_hotword` VALUES ('566', '储备干部', '1215');
INSERT INTO `qs_hotword` VALUES ('567', '钳工', '164');
INSERT INTO `qs_hotword` VALUES ('568', '行业分析师', '11');
INSERT INTO `qs_hotword` VALUES ('569', '大客户经理', '745');
INSERT INTO `qs_hotword` VALUES ('570', '单证', '22');
INSERT INTO `qs_hotword` VALUES ('571', '主办会计', '537');
INSERT INTO `qs_hotword` VALUES ('574', '项目助理', '265');
INSERT INTO `qs_hotword` VALUES ('575', '区域销售主管', '108');
INSERT INTO `qs_hotword` VALUES ('579', '理财经理', '141');
INSERT INTO `qs_hotword` VALUES ('580', 'UI工程师', '18');
INSERT INTO `qs_hotword` VALUES ('582', 'QC工程师', '10');
INSERT INTO `qs_hotword` VALUES ('583', '媒体销售经理', '12');
INSERT INTO `qs_hotword` VALUES ('584', 'Buyer', '21');
INSERT INTO `qs_hotword` VALUES ('589', '区域招商经理', '32');
INSERT INTO `qs_hotword` VALUES ('591', '市场专员', '1826');
INSERT INTO `qs_hotword` VALUES ('593', '文案指导', '54');
INSERT INTO `qs_hotword` VALUES ('594', '策划经理', '513');
INSERT INTO `qs_hotword` VALUES ('596', '融资经理', '123');
INSERT INTO `qs_hotword` VALUES ('605', '工程主管', '192');
INSERT INTO `qs_hotword` VALUES ('606', '学徒工', '63');
INSERT INTO `qs_hotword` VALUES ('609', '维修电工', '137');
INSERT INTO `qs_hotword` VALUES ('613', '美术指导', '268');
INSERT INTO `qs_hotword` VALUES ('619', '绩效主管', '44');
INSERT INTO `qs_hotword` VALUES ('620', '设计人员', '81');
INSERT INTO `qs_hotword` VALUES ('621', '会计助理', '110');
INSERT INTO `qs_hotword` VALUES ('624', '物流主管', '130');
INSERT INTO `qs_hotword` VALUES ('625', '主管会计', '349');
INSERT INTO `qs_hotword` VALUES ('626', '施工员', '332');
INSERT INTO `qs_hotword` VALUES ('629', '市场企划经理', '86');
INSERT INTO `qs_hotword` VALUES ('635', '客户服务主管', '50');
INSERT INTO `qs_hotword` VALUES ('636', '外贸人员', '55');
INSERT INTO `qs_hotword` VALUES ('637', '总经理司机', '30');
INSERT INTO `qs_hotword` VALUES ('641', '维修主管', '59');
INSERT INTO `qs_hotword` VALUES ('642', '市场销售人员', '32');
INSERT INTO `qs_hotword` VALUES ('643', '钢结构设计师', '20');
INSERT INTO `qs_hotword` VALUES ('646', '业务跟单员', '46');
INSERT INTO `qs_hotword` VALUES ('649', '营销总监', '666');
INSERT INTO `qs_hotword` VALUES ('652', '医疗设备销售', '16');
INSERT INTO `qs_hotword` VALUES ('654', '实验操作员', '10');
INSERT INTO `qs_hotword` VALUES ('655', '企划部主管', '18');
INSERT INTO `qs_hotword` VALUES ('656', '外贸业务助理', '70');
INSERT INTO `qs_hotword` VALUES ('660', '培训专员', '696');
INSERT INTO `qs_hotword` VALUES ('664', '投融资总监', '12');
INSERT INTO `qs_hotword` VALUES ('665', '项目总经理', '76');
INSERT INTO `qs_hotword` VALUES ('668', '土建预算员', '143');
INSERT INTO `qs_hotword` VALUES ('676', '信贷客户经理', '14');
INSERT INTO `qs_hotword` VALUES ('678', '业务代表', '1613');
INSERT INTO `qs_hotword` VALUES ('679', '广告客户经理', '114');
INSERT INTO `qs_hotword` VALUES ('682', '技术员', '428');
INSERT INTO `qs_hotword` VALUES ('684', '操作工', '262');
INSERT INTO `qs_hotword` VALUES ('686', 'Sales', '10');
INSERT INTO `qs_hotword` VALUES ('692', '现场工程师', '76');
INSERT INTO `qs_hotword` VALUES ('694', '业务拓展经理', '45');
INSERT INTO `qs_hotword` VALUES ('696', '医学编辑', '20');
INSERT INTO `qs_hotword` VALUES ('702', '物流经理', '148');
INSERT INTO `qs_hotword` VALUES ('703', '机械设计', '101');
INSERT INTO `qs_hotword` VALUES ('704', '工程师', '162');
INSERT INTO `qs_hotword` VALUES ('708', '客户代表', '667');
INSERT INTO `qs_hotword` VALUES ('711', '财务主管', '996');
INSERT INTO `qs_hotword` VALUES ('712', '资深销售', '26');
INSERT INTO `qs_hotword` VALUES ('713', '操盘手', '150');
INSERT INTO `qs_hotword` VALUES ('714', '客户助理', '52');
INSERT INTO `qs_hotword` VALUES ('716', '渠道经理', '599');
INSERT INTO `qs_hotword` VALUES ('719', '绘图员', '121');
INSERT INTO `qs_hotword` VALUES ('720', '电话销售主管', '89');
INSERT INTO `qs_hotword` VALUES ('722', '房产销售', '43');
INSERT INTO `qs_hotword` VALUES ('723', '房产经纪人', '398');
INSERT INTO `qs_hotword` VALUES ('727', '高中语文教师', '30');
INSERT INTO `qs_hotword` VALUES ('728', 'CAD绘图员', '79');
INSERT INTO `qs_hotword` VALUES ('731', '平面设计助理', '36');
INSERT INTO `qs_hotword` VALUES ('741', '采购', '146');
INSERT INTO `qs_hotword` VALUES ('745', '客户服务专员', '192');
INSERT INTO `qs_hotword` VALUES ('747', '经理助理', '599');
INSERT INTO `qs_hotword` VALUES ('751', '客户服务代表', '37');
INSERT INTO `qs_hotword` VALUES ('754', '渠道销售专员', '53');
INSERT INTO `qs_hotword` VALUES ('756', '仓管', '261');
INSERT INTO `qs_hotword` VALUES ('761', '网络推广专员', '375');
INSERT INTO `qs_hotword` VALUES ('762', '业务发展专员', '297');
INSERT INTO `qs_hotword` VALUES ('763', '检验员', '306');
INSERT INTO `qs_hotword` VALUES ('764', '机械工程师', '798');
INSERT INTO `qs_hotword` VALUES ('765', '电气工程师', '1293');
INSERT INTO `qs_hotword` VALUES ('768', '网页设计美工', '23');
INSERT INTO `qs_hotword` VALUES ('775', '报关员', '166');
INSERT INTO `qs_hotword` VALUES ('780', 'CAD制图', '16');
INSERT INTO `qs_hotword` VALUES ('781', '财务实习生', '34');
INSERT INTO `qs_hotword` VALUES ('782', '造价师', '30');
INSERT INTO `qs_hotword` VALUES ('786', '工程监理', '335');
INSERT INTO `qs_hotword` VALUES ('788', '资料员', '395');
INSERT INTO `qs_hotword` VALUES ('793', '生产计划员', '100');
INSERT INTO `qs_hotword` VALUES ('804', '维修工程师', '303');
INSERT INTO `qs_hotword` VALUES ('806', '商标代理人', '38');
INSERT INTO `qs_hotword` VALUES ('809', '研发技术员', '44');
INSERT INTO `qs_hotword` VALUES ('810', '生产经理', '257');
INSERT INTO `qs_hotword` VALUES ('811', '企划', '62');
INSERT INTO `qs_hotword` VALUES ('813', '高中数学教师', '58');
INSERT INTO `qs_hotword` VALUES ('816', '高中英语教师', '44');
INSERT INTO `qs_hotword` VALUES ('817', '淘宝店长', '102');
INSERT INTO `qs_hotword` VALUES ('820', '业务拓展专员', '45');
INSERT INTO `qs_hotword` VALUES ('821', '网站营运经理', '52');
INSERT INTO `qs_hotword` VALUES ('824', '初中数学教师', '36');
INSERT INTO `qs_hotword` VALUES ('826', '淘宝客服', '412');
INSERT INTO `qs_hotword` VALUES ('827', '网络推广', '478');
INSERT INTO `qs_hotword` VALUES ('831', '数据专员', '29');
INSERT INTO `qs_hotword` VALUES ('833', '初中英语教师', '32');
INSERT INTO `qs_hotword` VALUES ('836', '市场人员', '85');
INSERT INTO `qs_hotword` VALUES ('838', '客户专员', '205');
INSERT INTO `qs_hotword` VALUES ('839', '财务人员', '222');
INSERT INTO `qs_hotword` VALUES ('842', '业务经理', '1563');
INSERT INTO `qs_hotword` VALUES ('846', '资深销售经理', '16');
INSERT INTO `qs_hotword` VALUES ('851', '高级文案', '35');
INSERT INTO `qs_hotword` VALUES ('854', '企划部经理', '108');
INSERT INTO `qs_hotword` VALUES ('855', '课程顾问', '586');
INSERT INTO `qs_hotword` VALUES ('856', '营销经理', '342');
INSERT INTO `qs_hotword` VALUES ('857', '市场策划经理', '46');
INSERT INTO `qs_hotword` VALUES ('862', '起重工', '11');
INSERT INTO `qs_hotword` VALUES ('865', '实施工程师', '273');
INSERT INTO `qs_hotword` VALUES ('866', '行政经理', '480');
INSERT INTO `qs_hotword` VALUES ('867', '产品主管', '24');
INSERT INTO `qs_hotword` VALUES ('868', 'B超医生', '49');
INSERT INTO `qs_hotword` VALUES ('869', '渠道专员', '277');
INSERT INTO `qs_hotword` VALUES ('875', '分公司总经理', '190');
INSERT INTO `qs_hotword` VALUES ('878', '导医', '129');
INSERT INTO `qs_hotword` VALUES ('883', '营销副总', '115');
INSERT INTO `qs_hotword` VALUES ('884', '产品经理', '906');
INSERT INTO `qs_hotword` VALUES ('885', '护士', '373');
INSERT INTO `qs_hotword` VALUES ('886', '坐席代表', '30');
INSERT INTO `qs_hotword` VALUES ('889', '网络营销推广', '11');
INSERT INTO `qs_hotword` VALUES ('894', '人事部经理', '42');
INSERT INTO `qs_hotword` VALUES ('896', '售后维修工', '11');
INSERT INTO `qs_hotword` VALUES ('898', '网络营销', '189');
INSERT INTO `qs_hotword` VALUES ('900', '外贸会计', '61');
INSERT INTO `qs_hotword` VALUES ('902', '技术总工', '27');
INSERT INTO `qs_hotword` VALUES ('904', '市场企划主管', '75');
INSERT INTO `qs_hotword` VALUES ('905', '项目拓展经理', '17');
INSERT INTO `qs_hotword` VALUES ('908', '工程部经理', '533');
INSERT INTO `qs_hotword` VALUES ('909', '人事行政经理', '202');
INSERT INTO `qs_hotword` VALUES ('910', '设计部经理', '146');
INSERT INTO `qs_hotword` VALUES ('915', 'SEO专员', '85');
INSERT INTO `qs_hotword` VALUES ('917', '装配钳工', '107');
INSERT INTO `qs_hotword` VALUES ('918', '行政文员', '850');
INSERT INTO `qs_hotword` VALUES ('921', '渠道助理', '16');
INSERT INTO `qs_hotword` VALUES ('925', '产品助理', '62');
INSERT INTO `qs_hotword` VALUES ('926', '客户执行', '33');
INSERT INTO `qs_hotword` VALUES ('929', '策划主管', '221');
INSERT INTO `qs_hotword` VALUES ('933', '游戏UI设计', '22');
INSERT INTO `qs_hotword` VALUES ('935', '会计实习生', '18');
INSERT INTO `qs_hotword` VALUES ('937', '市场营销专员', '100');
INSERT INTO `qs_hotword` VALUES ('938', '业务工程师', '31');
INSERT INTO `qs_hotword` VALUES ('942', '主设计师', '40');
INSERT INTO `qs_hotword` VALUES ('951', '电子商务专员', '273');
INSERT INTO `qs_hotword` VALUES ('953', '内贸业务员', '42');
INSERT INTO `qs_hotword` VALUES ('955', '文字编辑', '102');
INSERT INTO `qs_hotword` VALUES ('956', '试衣模特', '33');
INSERT INTO `qs_hotword` VALUES ('957', '空运操作', '27');
INSERT INTO `qs_hotword` VALUES ('960', '外贸助理', '93');
INSERT INTO `qs_hotword` VALUES ('962', '商务主管', '162');
INSERT INTO `qs_hotword` VALUES ('971', '行政', '60');
INSERT INTO `qs_hotword` VALUES ('972', '应收应付会计', '12');
INSERT INTO `qs_hotword` VALUES ('978', '研发工程师', '280');
INSERT INTO `qs_hotword` VALUES ('980', '影视后期制作', '46');
INSERT INTO `qs_hotword` VALUES ('982', '律师助理', '58');
INSERT INTO `qs_hotword` VALUES ('987', '业务跟单', '199');
INSERT INTO `qs_hotword` VALUES ('988', '行政人事助理', '209');
INSERT INTO `qs_hotword` VALUES ('996', '市场推广', '180');
INSERT INTO `qs_hotword` VALUES ('1000', '销售管理', '60');
INSERT INTO `qs_hotword` VALUES ('1004', '外贸部经理', '26');
INSERT INTO `qs_hotword` VALUES ('1005', '售后服务', '142');
INSERT INTO `qs_hotword` VALUES ('1006', '单证操作', '12');
INSERT INTO `qs_hotword` VALUES ('1007', '财务会计', '384');
INSERT INTO `qs_hotword` VALUES ('1010', 'CAE工程师', '16');
INSERT INTO `qs_hotword` VALUES ('1012', '医疗器械销售', '172');
INSERT INTO `qs_hotword` VALUES ('1013', '开发主管', '29');
INSERT INTO `qs_hotword` VALUES ('1015', '网络客服', '128');
INSERT INTO `qs_hotword` VALUES ('1016', '教务', '46');
INSERT INTO `qs_hotword` VALUES ('1017', '客服经理', '372');
INSERT INTO `qs_hotword` VALUES ('1018', '应用工程师', '138');
INSERT INTO `qs_hotword` VALUES ('1022', '业务助理', '565');
INSERT INTO `qs_hotword` VALUES ('1026', '市场部主管', '133');
INSERT INTO `qs_hotword` VALUES ('1032', '平面设计员', '50');
INSERT INTO `qs_hotword` VALUES ('1035', '土建施工员', '41');
INSERT INTO `qs_hotword` VALUES ('1036', '市场销售', '71');
INSERT INTO `qs_hotword` VALUES ('1037', '应付会计', '10');
INSERT INTO `qs_hotword` VALUES ('1038', '研发主管', '31');
INSERT INTO `qs_hotword` VALUES ('1040', '市场营销经理', '48');
INSERT INTO `qs_hotword` VALUES ('1045', '质量经理', '81');
INSERT INTO `qs_hotword` VALUES ('1046', '机修工', '242');
INSERT INTO `qs_hotword` VALUES ('1047', '项目执行', '16');
INSERT INTO `qs_hotword` VALUES ('1048', '安全经理', '16');
INSERT INTO `qs_hotword` VALUES ('1049', '总工程师', '235');
INSERT INTO `qs_hotword` VALUES ('1052', '工程经理', '168');
INSERT INTO `qs_hotword` VALUES ('1054', '安装工程师', '192');
INSERT INTO `qs_hotword` VALUES ('1056', '营销策划主管', '71');
INSERT INTO `qs_hotword` VALUES ('1057', '营销策划专员', '64');
INSERT INTO `qs_hotword` VALUES ('1058', '文案编辑', '122');
INSERT INTO `qs_hotword` VALUES ('1061', '现场项目经理', '11');
INSERT INTO `qs_hotword` VALUES ('1062', '英语客服', '25');
INSERT INTO `qs_hotword` VALUES ('1065', '室内设计', '21');
INSERT INTO `qs_hotword` VALUES ('1067', '兼职导游', '10');
INSERT INTO `qs_hotword` VALUES ('1070', '活动策划', '178');
INSERT INTO `qs_hotword` VALUES ('1071', '楼层管理员', '19');
INSERT INTO `qs_hotword` VALUES ('1073', '内勤', '270');
INSERT INTO `qs_hotword` VALUES ('1074', '会计出纳', '20');
INSERT INTO `qs_hotword` VALUES ('1078', '活动执行专员', '19');
INSERT INTO `qs_hotword` VALUES ('1081', '装饰预算员', '24');
INSERT INTO `qs_hotword` VALUES ('1082', '助教', '38');
INSERT INTO `qs_hotword` VALUES ('1083', '行政主管', '799');
INSERT INTO `qs_hotword` VALUES ('1084', '教学主管', '79');
INSERT INTO `qs_hotword` VALUES ('1087', '教务主管', '50');
INSERT INTO `qs_hotword` VALUES ('1089', '销售业务员', '258');
INSERT INTO `qs_hotword` VALUES ('1090', '装饰施工员', '13');
INSERT INTO `qs_hotword` VALUES ('1091', '外贸销售专员', '21');
INSERT INTO `qs_hotword` VALUES ('1092', '外贸销售代表', '14');
INSERT INTO `qs_hotword` VALUES ('1095', '话务员', '228');
INSERT INTO `qs_hotword` VALUES ('1097', '安全员', '255');
INSERT INTO `qs_hotword` VALUES ('1101', '行政兼出纳', '37');
INSERT INTO `qs_hotword` VALUES ('1104', '媒介执行', '28');
INSERT INTO `qs_hotword` VALUES ('1105', '电话客服专员', '49');
INSERT INTO `qs_hotword` VALUES ('1106', '网站程序员', '146');
INSERT INTO `qs_hotword` VALUES ('1111', '活动策划专员', '60');
INSERT INTO `qs_hotword` VALUES ('1112', '广告销售经理', '55');
INSERT INTO `qs_hotword` VALUES ('1113', '跟单QC', '38');
INSERT INTO `qs_hotword` VALUES ('1114', '区域总监', '38');
INSERT INTO `qs_hotword` VALUES ('1123', '业务', '134');
INSERT INTO `qs_hotword` VALUES ('1125', '储备主管', '103');
INSERT INTO `qs_hotword` VALUES ('1127', '俄语翻译', '34');
INSERT INTO `qs_hotword` VALUES ('1130', '市场拓展主管', '38');
INSERT INTO `qs_hotword` VALUES ('1131', '面辅料采购', '24');
INSERT INTO `qs_hotword` VALUES ('1133', '编辑记者', '20');
INSERT INTO `qs_hotword` VALUES ('1135', '项目经理助理', '47');
INSERT INTO `qs_hotword` VALUES ('1136', '平面设计主管', '69');
INSERT INTO `qs_hotword` VALUES ('1139', '项目销售经理', '50');
INSERT INTO `qs_hotword` VALUES ('1144', '陈列师', '131');
INSERT INTO `qs_hotword` VALUES ('1148', '商务车司机', '12');
INSERT INTO `qs_hotword` VALUES ('1149', '机电工', '34');
INSERT INTO `qs_hotword` VALUES ('1151', '喷漆工', '89');
INSERT INTO `qs_hotword` VALUES ('1153', '钣金工', '98');
INSERT INTO `qs_hotword` VALUES ('1157', '基金经理', '13');
INSERT INTO `qs_hotword` VALUES ('1158', '营销督导', '12');
INSERT INTO `qs_hotword` VALUES ('1165', '区域销售代表', '172');
INSERT INTO `qs_hotword` VALUES ('1166', '售后客服专员', '22');
INSERT INTO `qs_hotword` VALUES ('1170', '储备主任', '10');
INSERT INTO `qs_hotword` VALUES ('1172', '区域经理', '2426');
INSERT INTO `qs_hotword` VALUES ('1175', '金融理财顾问', '17');
INSERT INTO `qs_hotword` VALUES ('1179', '培训师', '309');
INSERT INTO `qs_hotword` VALUES ('1180', '跟单', '27');
INSERT INTO `qs_hotword` VALUES ('1184', '外贸销售经理', '10');
INSERT INTO `qs_hotword` VALUES ('1185', '编辑', '225');
INSERT INTO `qs_hotword` VALUES ('1187', '新闻采编', '13');
INSERT INTO `qs_hotword` VALUES ('1191', '收银员', '1309');
INSERT INTO `qs_hotword` VALUES ('1192', '投资顾问助理', '19');
INSERT INTO `qs_hotword` VALUES ('1197', '前台行政助理', '20');
INSERT INTO `qs_hotword` VALUES ('1201', '开发经理', '63');
INSERT INTO `qs_hotword` VALUES ('1202', '品牌运营经理', '15');
INSERT INTO `qs_hotword` VALUES ('1206', '销售督导', '87');
INSERT INTO `qs_hotword` VALUES ('1208', '营销主管', '138');
INSERT INTO `qs_hotword` VALUES ('1211', '毛衫设计师', '10');
INSERT INTO `qs_hotword` VALUES ('1216', '水处理技术员', '16');
INSERT INTO `qs_hotword` VALUES ('1217', '采编', '50');
INSERT INTO `qs_hotword` VALUES ('1218', 'QC', '150');
INSERT INTO `qs_hotword` VALUES ('1220', 'ERP专员', '27');
INSERT INTO `qs_hotword` VALUES ('1226', '项目销售', '12');
INSERT INTO `qs_hotword` VALUES ('1232', 'IT', '24');
INSERT INTO `qs_hotword` VALUES ('1233', '影视制作', '14');
INSERT INTO `qs_hotword` VALUES ('1242', '室内设计总监', '20');
INSERT INTO `qs_hotword` VALUES ('1243', 'PHP工程师', '152');
INSERT INTO `qs_hotword` VALUES ('1246', '人力资源专员', '674');
INSERT INTO `qs_hotword` VALUES ('1247', '办公室秘书', '15');
INSERT INTO `qs_hotword` VALUES ('1248', '设计工程师', '92');
INSERT INTO `qs_hotword` VALUES ('1250', '证券事务代表', '33');
INSERT INTO `qs_hotword` VALUES ('1252', '电子商务主管', '77');
INSERT INTO `qs_hotword` VALUES ('1265', '见习经理', '52');
INSERT INTO `qs_hotword` VALUES ('1269', 'JAVA开发', '42');
INSERT INTO `qs_hotword` VALUES ('1271', '办公室文员', '631');
INSERT INTO `qs_hotword` VALUES ('1281', '活动执行', '80');
INSERT INTO `qs_hotword` VALUES ('1282', '渠道销售', '201');
INSERT INTO `qs_hotword` VALUES ('1283', '网站营运专员', '65');
INSERT INTO `qs_hotword` VALUES ('1286', '保洁主管', '82');
INSERT INTO `qs_hotword` VALUES ('1287', '行政秘书', '112');
INSERT INTO `qs_hotword` VALUES ('1292', '招生主管', '78');
INSERT INTO `qs_hotword` VALUES ('1296', '美编', '57');
INSERT INTO `qs_hotword` VALUES ('1297', '财务出纳', '79');
INSERT INTO `qs_hotword` VALUES ('1298', '大客户销售', '48');
INSERT INTO `qs_hotword` VALUES ('1299', '淘宝商城推广', '10');
INSERT INTO `qs_hotword` VALUES ('1307', '呼叫中心坐席', '28');
INSERT INTO `qs_hotword` VALUES ('1311', '广告销售', '71');
INSERT INTO `qs_hotword` VALUES ('1316', '财务副经理', '52');
INSERT INTO `qs_hotword` VALUES ('1321', '商品编辑', '10');
INSERT INTO `qs_hotword` VALUES ('1324', '营销专员', '155');
INSERT INTO `qs_hotword` VALUES ('1326', '高级销售代表', '176');
INSERT INTO `qs_hotword` VALUES ('1328', '美容师', '358');
INSERT INTO `qs_hotword` VALUES ('1335', '实验室助理', '11');
INSERT INTO `qs_hotword` VALUES ('1336', '项目组长', '12');
INSERT INTO `qs_hotword` VALUES ('1342', '生产厂长', '119');
INSERT INTO `qs_hotword` VALUES ('1345', '人事行政助理', '189');
INSERT INTO `qs_hotword` VALUES ('1347', '美工设计', '96');
INSERT INTO `qs_hotword` VALUES ('1349', '仓储管理', '11');
INSERT INTO `qs_hotword` VALUES ('1350', '技术人员', '134');
INSERT INTO `qs_hotword` VALUES ('1351', '销售客服', '122');
INSERT INTO `qs_hotword` VALUES ('1356', '质量管理员', '56');
INSERT INTO `qs_hotword` VALUES ('1357', '生产部经理', '108');
INSERT INTO `qs_hotword` VALUES ('1358', '品质部经理', '24');
INSERT INTO `qs_hotword` VALUES ('1364', '外贸员', '22');
INSERT INTO `qs_hotword` VALUES ('1366', '人事总监', '32');
INSERT INTO `qs_hotword` VALUES ('1367', '系统工程师', '286');
INSERT INTO `qs_hotword` VALUES ('1369', '工程业务代表', '28');
INSERT INTO `qs_hotword` VALUES ('1370', '业务主办', '16');
INSERT INTO `qs_hotword` VALUES ('1372', '行政人事', '39');
INSERT INTO `qs_hotword` VALUES ('1379', '大区经理', '511');
INSERT INTO `qs_hotword` VALUES ('1381', '文案企划', '12');
INSERT INTO `qs_hotword` VALUES ('1383', '资深文案策划', '25');
INSERT INTO `qs_hotword` VALUES ('1385', '调试工程师', '53');
INSERT INTO `qs_hotword` VALUES ('1386', '销售部经理', '277');
INSERT INTO `qs_hotword` VALUES ('1388', '高级培训讲师', '27');
INSERT INTO `qs_hotword` VALUES ('1389', '策划', '169');
INSERT INTO `qs_hotword` VALUES ('1391', '销售项目经理', '26');
INSERT INTO `qs_hotword` VALUES ('1392', '电子商务助理', '31');
INSERT INTO `qs_hotword` VALUES ('1393', '美术编辑', '82');
INSERT INTO `qs_hotword` VALUES ('1394', '品牌经理', '253');
INSERT INTO `qs_hotword` VALUES ('1397', '行政兼前台', '16');
INSERT INTO `qs_hotword` VALUES ('1399', '应届实习生', '23');
INSERT INTO `qs_hotword` VALUES ('1401', '医药代表', '1362');
INSERT INTO `qs_hotword` VALUES ('1405', '运维工程师', '265');
INSERT INTO `qs_hotword` VALUES ('1408', '营销顾问', '95');
INSERT INTO `qs_hotword` VALUES ('1415', '税务经理', '17');
INSERT INTO `qs_hotword` VALUES ('1416', '设备经理', '20');
INSERT INTO `qs_hotword` VALUES ('1417', '设备工程师', '221');
INSERT INTO `qs_hotword` VALUES ('1419', '设备主管', '58');
INSERT INTO `qs_hotword` VALUES ('1420', '售后服务人员', '97');
INSERT INTO `qs_hotword` VALUES ('1421', '储备销售经理', '20');
INSERT INTO `qs_hotword` VALUES ('1426', '翻译', '57');
INSERT INTO `qs_hotword` VALUES ('1439', '研究员', '45');
INSERT INTO `qs_hotword` VALUES ('1440', '销售副总监', '17');
INSERT INTO `qs_hotword` VALUES ('1441', '财务经理助理', '11');
INSERT INTO `qs_hotword` VALUES ('1444', '企划设计', '10');
INSERT INTO `qs_hotword` VALUES ('1450', '保险代理人', '117');
INSERT INTO `qs_hotword` VALUES ('1451', '董事长助理', '216');
INSERT INTO `qs_hotword` VALUES ('1452', '见习交易员', '34');
INSERT INTO `qs_hotword` VALUES ('1453', '董事长秘书', '254');
INSERT INTO `qs_hotword` VALUES ('1457', '交易员', '64');
INSERT INTO `qs_hotword` VALUES ('1458', '公关助理', '26');
INSERT INTO `qs_hotword` VALUES ('1459', '团队经理', '124');
INSERT INTO `qs_hotword` VALUES ('1460', '理财顾问', '291');
INSERT INTO `qs_hotword` VALUES ('1464', '媒体销售', '14');
INSERT INTO `qs_hotword` VALUES ('1467', '法务助理', '51');
INSERT INTO `qs_hotword` VALUES ('1468', '见习主管', '40');
INSERT INTO `qs_hotword` VALUES ('1469', '国际贸易', '63');
INSERT INTO `qs_hotword` VALUES ('1470', '平面设计专员', '62');
INSERT INTO `qs_hotword` VALUES ('1478', '前台兼行政', '30');
INSERT INTO `qs_hotword` VALUES ('1479', '渠道业务员', '29');
INSERT INTO `qs_hotword` VALUES ('1480', '仓库主管', '402');
INSERT INTO `qs_hotword` VALUES ('1481', '加盟部经理', '20');
INSERT INTO `qs_hotword` VALUES ('1482', '客户经理助理', '12');
INSERT INTO `qs_hotword` VALUES ('1490', '仓管员', '529');
INSERT INTO `qs_hotword` VALUES ('1492', '机械设计师', '57');
INSERT INTO `qs_hotword` VALUES ('1494', '销售顾问', '995');
INSERT INTO `qs_hotword` VALUES ('1495', '营销管理', '13');
INSERT INTO `qs_hotword` VALUES ('1497', '装配工', '84');
INSERT INTO `qs_hotword` VALUES ('1499', '网络编辑', '301');
INSERT INTO `qs_hotword` VALUES ('1505', '投资总监', '45');
INSERT INTO `qs_hotword` VALUES ('1506', '品质主管', '80');
INSERT INTO `qs_hotword` VALUES ('1508', '生产管理', '108');
INSERT INTO `qs_hotword` VALUES ('1510', '珠宝销售', '11');
INSERT INTO `qs_hotword` VALUES ('1511', '网站推广', '70');
INSERT INTO `qs_hotword` VALUES ('1514', '光学工程师', '26');
INSERT INTO `qs_hotword` VALUES ('1520', '生产计划主管', '35');
INSERT INTO `qs_hotword` VALUES ('1521', '电话营销', '532');
INSERT INTO `qs_hotword` VALUES ('1522', '视觉设计师', '53');
INSERT INTO `qs_hotword` VALUES ('1525', '工程项目经理', '242');
INSERT INTO `qs_hotword` VALUES ('1530', '技术顾问', '10');
INSERT INTO `qs_hotword` VALUES ('1537', '媒介经理', '105');
INSERT INTO `qs_hotword` VALUES ('1539', 'ERP工程师', '21');
INSERT INTO `qs_hotword` VALUES ('1543', '面料跟单', '12');
INSERT INTO `qs_hotword` VALUES ('1547', '高级理财经理', '23');
INSERT INTO `qs_hotword` VALUES ('1548', '市场营销助理', '12');
INSERT INTO `qs_hotword` VALUES ('1554', 'CNC操作员', '16');
INSERT INTO `qs_hotword` VALUES ('1556', '省级经理', '281');
INSERT INTO `qs_hotword` VALUES ('1559', '市场管理', '10');
INSERT INTO `qs_hotword` VALUES ('1563', '设计总监', '310');
INSERT INTO `qs_hotword` VALUES ('1564', '企管专员', '22');
INSERT INTO `qs_hotword` VALUES ('1566', '效果图制作', '28');
INSERT INTO `qs_hotword` VALUES ('1568', '招商主管', '236');
INSERT INTO `qs_hotword` VALUES ('1569', '招商专员', '593');
INSERT INTO `qs_hotword` VALUES ('1570', '行政总监', '121');
INSERT INTO `qs_hotword` VALUES ('1574', '生产技术员', '77');
INSERT INTO `qs_hotword` VALUES ('1577', '外贸业务专员', '11');
INSERT INTO `qs_hotword` VALUES ('1582', 'IE工程师', '176');
INSERT INTO `qs_hotword` VALUES ('1583', '效果图设计师', '103');
INSERT INTO `qs_hotword` VALUES ('1586', '高中物理教师', '39');
INSERT INTO `qs_hotword` VALUES ('1587', '驻外库管', '16');
INSERT INTO `qs_hotword` VALUES ('1588', '体系工程师', '51');
INSERT INTO `qs_hotword` VALUES ('1591', '营业担当', '47');
INSERT INTO `qs_hotword` VALUES ('1595', '网站运营总监', '34');
INSERT INTO `qs_hotword` VALUES ('1598', '行政人事专员', '255');
INSERT INTO `qs_hotword` VALUES ('1601', '售后工程师', '210');
INSERT INTO `qs_hotword` VALUES ('1603', '珠宝营业员', '14');
INSERT INTO `qs_hotword` VALUES ('1604', '促销员', '154');
INSERT INTO `qs_hotword` VALUES ('1607', '客服销售', '13');
INSERT INTO `qs_hotword` VALUES ('1613', '储备经理人', '84');
INSERT INTO `qs_hotword` VALUES ('1615', '渠道拓展经理', '22');
INSERT INTO `qs_hotword` VALUES ('1621', 'C++程序员', '59');
INSERT INTO `qs_hotword` VALUES ('1624', 'BD专员', '22');
INSERT INTO `qs_hotword` VALUES ('1626', '英语教师', '204');
INSERT INTO `qs_hotword` VALUES ('1629', '亲子教师', '35');
INSERT INTO `qs_hotword` VALUES ('1631', '策略总监', '37');
INSERT INTO `qs_hotword` VALUES ('1633', 'IT项目经理', '12');
INSERT INTO `qs_hotword` VALUES ('1635', '首席设计师', '78');
INSERT INTO `qs_hotword` VALUES ('1637', '政府事务专员', '22');
INSERT INTO `qs_hotword` VALUES ('1639', '运营主管', '102');
INSERT INTO `qs_hotword` VALUES ('1641', '软件架构师', '31');
INSERT INTO `qs_hotword` VALUES ('1643', 'EHS专员', '11');
INSERT INTO `qs_hotword` VALUES ('1646', '架构师', '24');
INSERT INTO `qs_hotword` VALUES ('1647', '企业文化经理', '11');
INSERT INTO `qs_hotword` VALUES ('1658', '监控工程师', '21');
INSERT INTO `qs_hotword` VALUES ('1661', 'DBA', '25');
INSERT INTO `qs_hotword` VALUES ('1663', '网站运营专员', '52');
INSERT INTO `qs_hotword` VALUES ('1667', '人力资源主管', '599');
INSERT INTO `qs_hotword` VALUES ('1671', '视频编辑', '41');
INSERT INTO `qs_hotword` VALUES ('1672', '国际销售', '14');
INSERT INTO `qs_hotword` VALUES ('1673', '研发专员', '12');
INSERT INTO `qs_hotword` VALUES ('1676', '培训顾问', '65');
INSERT INTO `qs_hotword` VALUES ('1677', '区域主管', '219');
INSERT INTO `qs_hotword` VALUES ('1681', '人事行政文员', '30');
INSERT INTO `qs_hotword` VALUES ('1683', '电话营销经理', '25');
INSERT INTO `qs_hotword` VALUES ('1685', '电话销售顾问', '25');
INSERT INTO `qs_hotword` VALUES ('1688', '文案助理', '18');
INSERT INTO `qs_hotword` VALUES ('1695', '招生老师', '50');
INSERT INTO `qs_hotword` VALUES ('1696', '网站运营经理', '46');
INSERT INTO `qs_hotword` VALUES ('1698', '行政人员', '75');
INSERT INTO `qs_hotword` VALUES ('1700', '电话助理', '28');
INSERT INTO `qs_hotword` VALUES ('1704', '系统策划', '44');
INSERT INTO `qs_hotword` VALUES ('1705', '策划师', '214');
INSERT INTO `qs_hotword` VALUES ('1706', '市场拓展经理', '104');
INSERT INTO `qs_hotword` VALUES ('1707', '生产操作工', '48');
INSERT INTO `qs_hotword` VALUES ('1710', '市场总监助理', '22');
INSERT INTO `qs_hotword` VALUES ('1713', '教育咨询师', '242');
INSERT INTO `qs_hotword` VALUES ('1715', '售前工程师', '351');
INSERT INTO `qs_hotword` VALUES ('1716', '少儿英语教师', '162');
INSERT INTO `qs_hotword` VALUES ('1718', '咨询顾问', '430');
INSERT INTO `qs_hotword` VALUES ('1720', '招生顾问', '35');
INSERT INTO `qs_hotword` VALUES ('1730', '教育咨询顾问', '14');
INSERT INTO `qs_hotword` VALUES ('1732', '客户主管', '118');
INSERT INTO `qs_hotword` VALUES ('1734', '客户服务人员', '12');
INSERT INTO `qs_hotword` VALUES ('1735', '市场部经理', '972');
INSERT INTO `qs_hotword` VALUES ('1736', 'OTC经理', '24');
INSERT INTO `qs_hotword` VALUES ('1737', '餐厅主管', '50');
INSERT INTO `qs_hotword` VALUES ('1739', '合同管理员', '44');
INSERT INTO `qs_hotword` VALUES ('1740', 'OTC主管', '10');
INSERT INTO `qs_hotword` VALUES ('1742', '产品运营专员', '13');
INSERT INTO `qs_hotword` VALUES ('1743', '动画编剧', '13');
INSERT INTO `qs_hotword` VALUES ('1747', '高级讲师', '32');
INSERT INTO `qs_hotword` VALUES ('1752', '研发部经理', '71');
INSERT INTO `qs_hotword` VALUES ('1759', '行政文秘', '88');
INSERT INTO `qs_hotword` VALUES ('1761', '市场推广人员', '31');
INSERT INTO `qs_hotword` VALUES ('1762', '企划专员', '269');
INSERT INTO `qs_hotword` VALUES ('1763', '核算会计', '75');
INSERT INTO `qs_hotword` VALUES ('1764', 'UI设计师', '268');
INSERT INTO `qs_hotword` VALUES ('1768', '成本会计', '610');
INSERT INTO `qs_hotword` VALUES ('1770', '淘宝推广', '49');
INSERT INTO `qs_hotword` VALUES ('1771', '网络咨询师', '36');
INSERT INTO `qs_hotword` VALUES ('1775', '导购员', '777');
INSERT INTO `qs_hotword` VALUES ('1783', '培训岗', '17');
INSERT INTO `qs_hotword` VALUES ('1788', '保洁员', '378');
INSERT INTO `qs_hotword` VALUES ('1790', '传菜员', '161');
INSERT INTO `qs_hotword` VALUES ('1792', '招生专员', '97');
INSERT INTO `qs_hotword` VALUES ('1796', '前台秘书', '56');
INSERT INTO `qs_hotword` VALUES ('1798', '招生咨询顾问', '12');
INSERT INTO `qs_hotword` VALUES ('1801', '发行员', '21');
INSERT INTO `qs_hotword` VALUES ('1805', '策划编辑', '21');
INSERT INTO `qs_hotword` VALUES ('1810', '旅游销售', '14');
INSERT INTO `qs_hotword` VALUES ('1812', '导购', '289');
INSERT INTO `qs_hotword` VALUES ('1829', '房地产经纪人', '189');
INSERT INTO `qs_hotword` VALUES ('1832', '课程咨询顾问', '45');
INSERT INTO `qs_hotword` VALUES ('1834', '数据文员', '17');
INSERT INTO `qs_hotword` VALUES ('1837', '商务文员', '130');
INSERT INTO `qs_hotword` VALUES ('1842', '数据分析师', '58');
INSERT INTO `qs_hotword` VALUES ('1845', '时尚编辑', '19');
INSERT INTO `qs_hotword` VALUES ('1846', '网站客服', '53');
INSERT INTO `qs_hotword` VALUES ('1849', '高级销售', '26');
INSERT INTO `qs_hotword` VALUES ('1855', '生产工人', '99');
INSERT INTO `qs_hotword` VALUES ('1859', '仓库组长', '14');
INSERT INTO `qs_hotword` VALUES ('1864', '商务经理', '548');
INSERT INTO `qs_hotword` VALUES ('1869', '院长', '21');
INSERT INTO `qs_hotword` VALUES ('1873', '百度竞价专员', '32');
INSERT INTO `qs_hotword` VALUES ('1876', '文案专员', '61');
INSERT INTO `qs_hotword` VALUES ('1878', '资深设计', '55');
INSERT INTO `qs_hotword` VALUES ('1879', '网络主管', '41');
INSERT INTO `qs_hotword` VALUES ('1881', '办公室文秘', '47');
INSERT INTO `qs_hotword` VALUES ('1882', '网络咨询医生', '45');
INSERT INTO `qs_hotword` VALUES ('1883', '凉菜厨师', '15');
INSERT INTO `qs_hotword` VALUES ('1885', '洗碗工', '96');
INSERT INTO `qs_hotword` VALUES ('1887', '餐饮部经理', '52');
INSERT INTO `qs_hotword` VALUES ('1889', '摄影师', '209');
INSERT INTO `qs_hotword` VALUES ('1890', '库房理货员', '10');
INSERT INTO `qs_hotword` VALUES ('1894', '网络销售员', '41');
INSERT INTO `qs_hotword` VALUES ('1898', '业务督导', '30');
INSERT INTO `qs_hotword` VALUES ('1899', '策划专员', '325');
INSERT INTO `qs_hotword` VALUES ('1902', '信息专员', '66');
INSERT INTO `qs_hotword` VALUES ('1907', '网络咨询', '67');
INSERT INTO `qs_hotword` VALUES ('1909', '发行经理', '12');
INSERT INTO `qs_hotword` VALUES ('1910', '质检工程师', '42');
INSERT INTO `qs_hotword` VALUES ('1911', '项目会计', '19');
INSERT INTO `qs_hotword` VALUES ('1913', '水暖工', '40');
INSERT INTO `qs_hotword` VALUES ('1914', '空调工', '100');
INSERT INTO `qs_hotword` VALUES ('1916', '品质管理员', '27');
INSERT INTO `qs_hotword` VALUES ('1917', '品牌督导', '18');
INSERT INTO `qs_hotword` VALUES ('1923', '消防中控员', '19');
INSERT INTO `qs_hotword` VALUES ('1926', '规划设计师', '35');
INSERT INTO `qs_hotword` VALUES ('1927', '高压电工', '40');
INSERT INTO `qs_hotword` VALUES ('1928', '组训岗', '12');
INSERT INTO `qs_hotword` VALUES ('1929', '数据分析主管', '10');
INSERT INTO `qs_hotword` VALUES ('1931', '初级操盘手', '26');
INSERT INTO `qs_hotword` VALUES ('1933', '英文翻译', '37');
INSERT INTO `qs_hotword` VALUES ('1935', '销售人员', '1090');
INSERT INTO `qs_hotword` VALUES ('1936', '教育咨询专员', '10');
INSERT INTO `qs_hotword` VALUES ('1937', '家装业务员', '51');
INSERT INTO `qs_hotword` VALUES ('1941', '营销代表', '158');
INSERT INTO `qs_hotword` VALUES ('1942', '售后服务专员', '172');
INSERT INTO `qs_hotword` VALUES ('1943', '英文编辑', '27');
INSERT INTO `qs_hotword` VALUES ('1945', '工程业务员', '43');
INSERT INTO `qs_hotword` VALUES ('1947', '高级编辑', '12');
INSERT INTO `qs_hotword` VALUES ('1951', '图书编辑', '25');
INSERT INTO `qs_hotword` VALUES ('1958', '会员专员', '12');
INSERT INTO `qs_hotword` VALUES ('1959', '销售行政助理', '47');
INSERT INTO `qs_hotword` VALUES ('1960', '人员管理岗', '17');
INSERT INTO `qs_hotword` VALUES ('1961', '网站运营', '34');
INSERT INTO `qs_hotword` VALUES ('1963', '区域运营经理', '24');
INSERT INTO `qs_hotword` VALUES ('1965', '仓库管理', '41');
INSERT INTO `qs_hotword` VALUES ('1975', '酒店副总经理', '10');
INSERT INTO `qs_hotword` VALUES ('1978', '学习顾问', '76');
INSERT INTO `qs_hotword` VALUES ('1980', '餐饮总监', '42');
INSERT INTO `qs_hotword` VALUES ('1983', '酒店财务经理', '10');
INSERT INTO `qs_hotword` VALUES ('1987', '营销部经理', '97');
INSERT INTO `qs_hotword` VALUES ('1990', '药店营业员', '49');
INSERT INTO `qs_hotword` VALUES ('1991', '专职律师', '10');
INSERT INTO `qs_hotword` VALUES ('1993', '执业药师', '33');
INSERT INTO `qs_hotword` VALUES ('1996', '交互设计师', '36');
INSERT INTO `qs_hotword` VALUES ('1999', '机电工程师', '249');
INSERT INTO `qs_hotword` VALUES ('2005', '销售内勤', '988');
INSERT INTO `qs_hotword` VALUES ('2009', '淘宝客服专员', '32');
INSERT INTO `qs_hotword` VALUES ('2010', '产品编辑', '16');
INSERT INTO `qs_hotword` VALUES ('2013', '项目主管', '199');
INSERT INTO `qs_hotword` VALUES ('2014', '助理咨询顾问', '11');
INSERT INTO `qs_hotword` VALUES ('2022', '应收会计', '26');
INSERT INTO `qs_hotword` VALUES ('2026', '工装设计师', '60');
INSERT INTO `qs_hotword` VALUES ('2037', '库房管理员', '161');
INSERT INTO `qs_hotword` VALUES ('2041', '行业销售经理', '57');
INSERT INTO `qs_hotword` VALUES ('2052', '董事会秘书', '36');
INSERT INTO `qs_hotword` VALUES ('2054', '运维经理', '14');
INSERT INTO `qs_hotword` VALUES ('2058', '运营专员', '151');
INSERT INTO `qs_hotword` VALUES ('2059', '广告文案策划', '24');
INSERT INTO `qs_hotword` VALUES ('2076', '产品专员', '260');
INSERT INTO `qs_hotword` VALUES ('2079', '高级策划师', '89');
INSERT INTO `qs_hotword` VALUES ('2089', '零售经理', '56');
INSERT INTO `qs_hotword` VALUES ('2090', '综合管理岗', '10');
INSERT INTO `qs_hotword` VALUES ('2091', '咨询助理', '61');
INSERT INTO `qs_hotword` VALUES ('2095', '团购专员', '36');
INSERT INTO `qs_hotword` VALUES ('2096', '分校校长', '61');
INSERT INTO `qs_hotword` VALUES ('2098', '生产工程师', '41');
INSERT INTO `qs_hotword` VALUES ('2105', 'JSP程序员', '12');
INSERT INTO `qs_hotword` VALUES ('2106', '开发助理', '20');
INSERT INTO `qs_hotword` VALUES ('2109', '区域助理', '13');
INSERT INTO `qs_hotword` VALUES ('2110', '电话销售代表', '124');
INSERT INTO `qs_hotword` VALUES ('2115', '专职英语翻译', '20');
INSERT INTO `qs_hotword` VALUES ('2116', '网优工程师', '19');
INSERT INTO `qs_hotword` VALUES ('2123', '数值策划', '80');
INSERT INTO `qs_hotword` VALUES ('2135', 'IT管理员', '28');
INSERT INTO `qs_hotword` VALUES ('2141', '买手', '25');
INSERT INTO `qs_hotword` VALUES ('2148', '外贸经理', '73');
INSERT INTO `qs_hotword` VALUES ('2152', '配送主管', '13');
INSERT INTO `qs_hotword` VALUES ('2161', '项目管理', '37');
INSERT INTO `qs_hotword` VALUES ('2167', '中医医师', '12');
INSERT INTO `qs_hotword` VALUES ('2169', '保健医生', '16');
INSERT INTO `qs_hotword` VALUES ('2170', '会计人员', '10');
INSERT INTO `qs_hotword` VALUES ('2172', '库管', '557');
INSERT INTO `qs_hotword` VALUES ('2175', '投资助理', '29');
INSERT INTO `qs_hotword` VALUES ('2176', '推广专员', '184');
INSERT INTO `qs_hotword` VALUES ('2177', '品牌总监', '52');
INSERT INTO `qs_hotword` VALUES ('2181', '法务人员', '17');
INSERT INTO `qs_hotword` VALUES ('2182', '销售副总', '76');
INSERT INTO `qs_hotword` VALUES ('2187', '大客户总监', '17');
INSERT INTO `qs_hotword` VALUES ('2198', '信息录入员', '25');
INSERT INTO `qs_hotword` VALUES ('2202', '行政部经理', '51');
INSERT INTO `qs_hotword` VALUES ('2203', '建筑师', '124');
INSERT INTO `qs_hotword` VALUES ('2205', '主任助理', '38');
INSERT INTO `qs_hotword` VALUES ('2208', '服务专员', '55');
INSERT INTO `qs_hotword` VALUES ('2212', '服装跟单员', '25');
INSERT INTO `qs_hotword` VALUES ('2223', '结构设计', '24');
INSERT INTO `qs_hotword` VALUES ('2224', '客服助理', '183');
INSERT INTO `qs_hotword` VALUES ('2225', '水电设计师', '44');
INSERT INTO `qs_hotword` VALUES ('2229', '项目总监', '143');
INSERT INTO `qs_hotword` VALUES ('2236', '主任建筑师', '14');
INSERT INTO `qs_hotword` VALUES ('2240', '出单员', '13');
INSERT INTO `qs_hotword` VALUES ('2241', '系统分析师', '37');
INSERT INTO `qs_hotword` VALUES ('2250', '主持人', '103');
INSERT INTO `qs_hotword` VALUES ('2260', '淘宝运营', '18');
INSERT INTO `qs_hotword` VALUES ('2264', '编导', '47');
INSERT INTO `qs_hotword` VALUES ('2276', '高级销售经理', '274');
INSERT INTO `qs_hotword` VALUES ('2283', '企业文化主管', '24');
INSERT INTO `qs_hotword` VALUES ('2287', '运营经理', '262');
INSERT INTO `qs_hotword` VALUES ('2294', '品牌推广专员', '52');
INSERT INTO `qs_hotword` VALUES ('2296', '语文教师', '41');
INSERT INTO `qs_hotword` VALUES ('2297', '业务文员', '37');
INSERT INTO `qs_hotword` VALUES ('2301', 'AE', '65');
INSERT INTO `qs_hotword` VALUES ('2306', '教务管理', '40');
INSERT INTO `qs_hotword` VALUES ('2309', '门店经理', '65');
INSERT INTO `qs_hotword` VALUES ('2319', '公共关系经理', '14');
INSERT INTO `qs_hotword` VALUES ('2322', '店面销售人员', '26');
INSERT INTO `qs_hotword` VALUES ('2323', '需求分析师', '59');
INSERT INTO `qs_hotword` VALUES ('2327', '投标专员', '22');
INSERT INTO `qs_hotword` VALUES ('2331', '竞价专员', '35');
INSERT INTO `qs_hotword` VALUES ('2333', '大客户专员', '77');
INSERT INTO `qs_hotword` VALUES ('2335', '信息部经理', '23');
INSERT INTO `qs_hotword` VALUES ('2337', '安防工程师', '33');
INSERT INTO `qs_hotword` VALUES ('2339', '资金主管', '15');
INSERT INTO `qs_hotword` VALUES ('2341', '研发总监', '41');
INSERT INTO `qs_hotword` VALUES ('2350', '前期专员', '22');
INSERT INTO `qs_hotword` VALUES ('2352', '叉车司机', '125');
INSERT INTO `qs_hotword` VALUES ('2359', '前台文秘', '66');
INSERT INTO `qs_hotword` VALUES ('2371', '财务部经理', '140');
INSERT INTO `qs_hotword` VALUES ('2372', '中药调剂员', '18');
INSERT INTO `qs_hotword` VALUES ('2373', '副总经理助理', '31');
INSERT INTO `qs_hotword` VALUES ('2375', '网站设计师', '85');
INSERT INTO `qs_hotword` VALUES ('2378', 'C#程序员', '28');
INSERT INTO `qs_hotword` VALUES ('2379', '行业销售代表', '13');
INSERT INTO `qs_hotword` VALUES ('2381', '出纳兼行政', '65');
INSERT INTO `qs_hotword` VALUES ('2382', '技师', '14');
INSERT INTO `qs_hotword` VALUES ('2383', '宣传主管', '10');
INSERT INTO `qs_hotword` VALUES ('2385', '工业设计师', '45');
INSERT INTO `qs_hotword` VALUES ('2388', '美国咨询顾问', '10');
INSERT INTO `qs_hotword` VALUES ('2389', '销售行政', '23');
INSERT INTO `qs_hotword` VALUES ('2390', '员工食堂厨师', '13');
INSERT INTO `qs_hotword` VALUES ('2398', '销售部门经理', '17');
INSERT INTO `qs_hotword` VALUES ('2407', '审计师', '38');
INSERT INTO `qs_hotword` VALUES ('2417', '研发项目经理', '42');
INSERT INTO `qs_hotword` VALUES ('2418', '市场业务代表', '17');
INSERT INTO `qs_hotword` VALUES ('2426', '网站优化', '20');
INSERT INTO `qs_hotword` VALUES ('2429', '工程技术人员', '73');
INSERT INTO `qs_hotword` VALUES ('2440', '创意文案', '57');
INSERT INTO `qs_hotword` VALUES ('2449', '工程项目总监', '18');
INSERT INTO `qs_hotword` VALUES ('2450', '设计', '84');
INSERT INTO `qs_hotword` VALUES ('2453', '生产副总', '65');
INSERT INTO `qs_hotword` VALUES ('2459', '生产主管', '331');
INSERT INTO `qs_hotword` VALUES ('2465', '销售精英', '551');
INSERT INTO `qs_hotword` VALUES ('2469', '在线客服', '26');
INSERT INTO `qs_hotword` VALUES ('2477', '预算主管', '42');
INSERT INTO `qs_hotword` VALUES ('2479', '检验师', '38');
INSERT INTO `qs_hotword` VALUES ('2484', '信用卡专员', '69');
INSERT INTO `qs_hotword` VALUES ('2487', '店面销售', '114');
INSERT INTO `qs_hotword` VALUES ('2488', '信贷专员', '52');
INSERT INTO `qs_hotword` VALUES ('2495', '贸易专员', '11');
INSERT INTO `qs_hotword` VALUES ('2502', '客房部经理', '31');
INSERT INTO `qs_hotword` VALUES ('2508', '展览业务员', '19');
INSERT INTO `qs_hotword` VALUES ('2523', 'IT经理', '28');
INSERT INTO `qs_hotword` VALUES ('2524', '经理', '210');
INSERT INTO `qs_hotword` VALUES ('2525', '网络推广主管', '67');
INSERT INTO `qs_hotword` VALUES ('2527', '客服文员', '159');
INSERT INTO `qs_hotword` VALUES ('2528', '人事主管', '745');
INSERT INTO `qs_hotword` VALUES ('2532', '招投标专员', '38');
INSERT INTO `qs_hotword` VALUES ('2533', '资深策划', '71');
INSERT INTO `qs_hotword` VALUES ('2535', '审计主管', '103');
INSERT INTO `qs_hotword` VALUES ('2543', '导演', '13');
INSERT INTO `qs_hotword` VALUES ('2544', '资深客户经理', '20');
INSERT INTO `qs_hotword` VALUES ('2546', '责任编辑', '65');
INSERT INTO `qs_hotword` VALUES ('2549', '活动策划经理', '15');
INSERT INTO `qs_hotword` VALUES ('2551', '应届毕业生', '166');
INSERT INTO `qs_hotword` VALUES ('2552', '软件开发经理', '15');
INSERT INTO `qs_hotword` VALUES ('2558', '职业顾问', '19');
INSERT INTO `qs_hotword` VALUES ('2559', '法务主管', '86');
INSERT INTO `qs_hotword` VALUES ('2562', '产品工程师', '160');
INSERT INTO `qs_hotword` VALUES ('2573', '部门主管', '16');
INSERT INTO `qs_hotword` VALUES ('2578', '预算', '10');
INSERT INTO `qs_hotword` VALUES ('2579', '策划部经理', '65');
INSERT INTO `qs_hotword` VALUES ('2587', '采购主管', '343');
INSERT INTO `qs_hotword` VALUES ('2588', '人力资源助理', '187');
INSERT INTO `qs_hotword` VALUES ('2589', '活动专员', '57');
INSERT INTO `qs_hotword` VALUES ('2593', '前期部经理', '15');
INSERT INTO `qs_hotword` VALUES ('2594', '市场开发', '60');
INSERT INTO `qs_hotword` VALUES ('2597', '儿科医生', '12');
INSERT INTO `qs_hotword` VALUES ('2602', 'SEO', '22');
INSERT INTO `qs_hotword` VALUES ('2605', '办公室助理', '65');
INSERT INTO `qs_hotword` VALUES ('2606', '男科医生', '10');
INSERT INTO `qs_hotword` VALUES ('2608', '市场推广专员', '329');
INSERT INTO `qs_hotword` VALUES ('2615', '制剂研究员', '14');
INSERT INTO `qs_hotword` VALUES ('2616', '综合维修工', '66');
INSERT INTO `qs_hotword` VALUES ('2621', '业务拓展', '44');
INSERT INTO `qs_hotword` VALUES ('2622', '英语翻译', '279');
INSERT INTO `qs_hotword` VALUES ('2627', '小时工', '18');
INSERT INTO `qs_hotword` VALUES ('2628', '平面模特', '13');
INSERT INTO `qs_hotword` VALUES ('2633', '行业销售', '11');
INSERT INTO `qs_hotword` VALUES ('2635', '项目文员', '11');
INSERT INTO `qs_hotword` VALUES ('2638', '客户维护专员', '17');
INSERT INTO `qs_hotword` VALUES ('2651', '主案设计师', '77');
INSERT INTO `qs_hotword` VALUES ('2656', '保安员', '358');
INSERT INTO `qs_hotword` VALUES ('2665', '中控员', '21');
INSERT INTO `qs_hotword` VALUES ('2667', '售后服务经理', '68');
INSERT INTO `qs_hotword` VALUES ('2670', 'QA工程师', '42');
INSERT INTO `qs_hotword` VALUES ('2672', '高级销售主管', '10');
INSERT INTO `qs_hotword` VALUES ('2682', '外贸跟单', '85');
INSERT INTO `qs_hotword` VALUES ('2685', '培训讲师', '496');
INSERT INTO `qs_hotword` VALUES ('2686', '汽车销售顾问', '76');
INSERT INTO `qs_hotword` VALUES ('2687', '策划文案', '207');
INSERT INTO `qs_hotword` VALUES ('2708', '园林设计师', '17');
INSERT INTO `qs_hotword` VALUES ('2713', '投资专员', '62');
INSERT INTO `qs_hotword` VALUES ('2717', '项目策划经理', '17');
INSERT INTO `qs_hotword` VALUES ('2718', '游戏运营经理', '11');
INSERT INTO `qs_hotword` VALUES ('2722', '财务部会计', '26');
INSERT INTO `qs_hotword` VALUES ('2725', '执行助理', '11');
INSERT INTO `qs_hotword` VALUES ('2726', '咨询师', '193');
INSERT INTO `qs_hotword` VALUES ('2732', '技术总监', '262');
INSERT INTO `qs_hotword` VALUES ('2738', '技术助理', '46');
INSERT INTO `qs_hotword` VALUES ('2740', '财务分析员', '23');
INSERT INTO `qs_hotword` VALUES ('2750', '培训主管', '478');
INSERT INTO `qs_hotword` VALUES ('2752', '平面设计人员', '36');
INSERT INTO `qs_hotword` VALUES ('2755', '产品销售专员', '16');
INSERT INTO `qs_hotword` VALUES ('2757', '弱电技工', '21');
INSERT INTO `qs_hotword` VALUES ('2760', '网络管理', '55');
INSERT INTO `qs_hotword` VALUES ('2774', '高级营销经理', '19');
INSERT INTO `qs_hotword` VALUES ('2775', '小学数学教师', '24');
INSERT INTO `qs_hotword` VALUES ('2776', '招生主任', '12');
INSERT INTO `qs_hotword` VALUES ('2777', '商品部主管', '18');
INSERT INTO `qs_hotword` VALUES ('2783', '精装修工程师', '57');
INSERT INTO `qs_hotword` VALUES ('2787', '技术支持经理', '37');
INSERT INTO `qs_hotword` VALUES ('2794', '艺术总监', '11');
INSERT INTO `qs_hotword` VALUES ('2797', '动画师', '29');
INSERT INTO `qs_hotword` VALUES ('2798', '后期制作', '70');
INSERT INTO `qs_hotword` VALUES ('2803', '区域服务专员', '57');
INSERT INTO `qs_hotword` VALUES ('2812', 'SEM专员', '14');
INSERT INTO `qs_hotword` VALUES ('2816', '给排水工程师', '163');
INSERT INTO `qs_hotword` VALUES ('2817', '前台接待员', '67');
INSERT INTO `qs_hotword` VALUES ('2822', '品控专员', '27');
INSERT INTO `qs_hotword` VALUES ('2823', '区域服务经理', '11');
INSERT INTO `qs_hotword` VALUES ('2825', '企划文案', '99');
INSERT INTO `qs_hotword` VALUES ('2827', '记者', '53');
INSERT INTO `qs_hotword` VALUES ('2829', '营销策划经理', '83');
INSERT INTO `qs_hotword` VALUES ('2830', '洗车工', '74');
INSERT INTO `qs_hotword` VALUES ('2832', '客服主管', '404');
INSERT INTO `qs_hotword` VALUES ('2835', '施工图设计师', '77');
INSERT INTO `qs_hotword` VALUES ('2839', '强电技工', '13');
INSERT INTO `qs_hotword` VALUES ('2840', '公关主管', '31');
INSERT INTO `qs_hotword` VALUES ('2842', '质量管理主管', '40');
INSERT INTO `qs_hotword` VALUES ('2863', '讲师助理', '39');
INSERT INTO `qs_hotword` VALUES ('2866', '高级设计师', '63');
INSERT INTO `qs_hotword` VALUES ('2871', '教学总监', '40');
INSERT INTO `qs_hotword` VALUES ('2874', '市场开发专员', '53');
INSERT INTO `qs_hotword` VALUES ('2875', '库房管理', '40');
INSERT INTO `qs_hotword` VALUES ('2879', 'ARM工程师', '11');
INSERT INTO `qs_hotword` VALUES ('2885', '网站运营主管', '31');
INSERT INTO `qs_hotword` VALUES ('2891', '销售业务人员', '11');
INSERT INTO `qs_hotword` VALUES ('2892', '市场推广员', '86');
INSERT INTO `qs_hotword` VALUES ('2896', '电话销售人员', '74');
INSERT INTO `qs_hotword` VALUES ('2898', '促销督导', '203');
INSERT INTO `qs_hotword` VALUES ('2902', '品牌主管', '43');
INSERT INTO `qs_hotword` VALUES ('2903', '跟单员', '140');
INSERT INTO `qs_hotword` VALUES ('2906', '工艺工程师', '364');
INSERT INTO `qs_hotword` VALUES ('2908', '网络美工', '61');
INSERT INTO `qs_hotword` VALUES ('2911', '货车驾驶员', '11');
INSERT INTO `qs_hotword` VALUES ('2914', '信息管理员', '63');
INSERT INTO `qs_hotword` VALUES ('2915', '技术经理', '161');
INSERT INTO `qs_hotword` VALUES ('2916', '电子工程师', '285');
INSERT INTO `qs_hotword` VALUES ('2919', '餐厅见习经理', '90');
INSERT INTO `qs_hotword` VALUES ('2925', 'SEO推广', '11');
INSERT INTO `qs_hotword` VALUES ('2926', '税务会计', '73');
INSERT INTO `qs_hotword` VALUES ('2928', '行政人事总监', '44');
INSERT INTO `qs_hotword` VALUES ('2929', '组训', '16');
INSERT INTO `qs_hotword` VALUES ('2930', '工程助理', '85');
INSERT INTO `qs_hotword` VALUES ('2932', '市场策划专员', '95');
INSERT INTO `qs_hotword` VALUES ('2934', '学习管理师', '82');
INSERT INTO `qs_hotword` VALUES ('2938', '工程管理员', '18');
INSERT INTO `qs_hotword` VALUES ('2942', '店面销售员', '17');
INSERT INTO `qs_hotword` VALUES ('2943', '销售总监助理', '59');
INSERT INTO `qs_hotword` VALUES ('2947', '项目督导', '22');
INSERT INTO `qs_hotword` VALUES ('2948', '跟单文员', '85');
INSERT INTO `qs_hotword` VALUES ('2962', '销售文员', '358');
INSERT INTO `qs_hotword` VALUES ('2971', '副总助理', '24');
INSERT INTO `qs_hotword` VALUES ('2975', '视频剪辑', '10');
INSERT INTO `qs_hotword` VALUES ('2980', '市场研究经理', '15');
INSERT INTO `qs_hotword` VALUES ('2981', '营销总监助理', '36');
INSERT INTO `qs_hotword` VALUES ('2983', '茶艺师', '79');
INSERT INTO `qs_hotword` VALUES ('2984', '店长助理', '130');
INSERT INTO `qs_hotword` VALUES ('2993', '实验室工程师', '14');
INSERT INTO `qs_hotword` VALUES ('2994', '营销员', '70');
INSERT INTO `qs_hotword` VALUES ('2996', '初中化学老师', '11');
INSERT INTO `qs_hotword` VALUES ('2999', '业务总监', '48');
INSERT INTO `qs_hotword` VALUES ('3013', '薪酬福利专员', '33');
INSERT INTO `qs_hotword` VALUES ('3017', '排版设计', '26');
INSERT INTO `qs_hotword` VALUES ('3018', '营销精英', '63');
INSERT INTO `qs_hotword` VALUES ('3019', '生产员工', '16');
INSERT INTO `qs_hotword` VALUES ('3030', '呼叫中心经理', '26');
INSERT INTO `qs_hotword` VALUES ('3031', '游戏主策划', '15');
INSERT INTO `qs_hotword` VALUES ('3032', '旅游顾问', '30');
INSERT INTO `qs_hotword` VALUES ('3033', 'KA经理', '45');
INSERT INTO `qs_hotword` VALUES ('3034', '旅游销售代表', '15');
INSERT INTO `qs_hotword` VALUES ('3042', '物流', '11');
INSERT INTO `qs_hotword` VALUES ('3043', '项目专员', '88');
INSERT INTO `qs_hotword` VALUES ('3045', '淘宝美工', '200');
INSERT INTO `qs_hotword` VALUES ('3046', '男装设计师', '47');
INSERT INTO `qs_hotword` VALUES ('3050', '手机游戏美工', '12');
INSERT INTO `qs_hotword` VALUES ('3054', '普工', '355');
INSERT INTO `qs_hotword` VALUES ('3056', '安装工人', '24');
INSERT INTO `qs_hotword` VALUES ('3058', '焊工', '190');
INSERT INTO `qs_hotword` VALUES ('3061', '会计文员', '86');
INSERT INTO `qs_hotword` VALUES ('3064', '售后文员', '26');
INSERT INTO `qs_hotword` VALUES ('3069', '出纳文员', '20');
INSERT INTO `qs_hotword` VALUES ('3071', '木工', '57');
INSERT INTO `qs_hotword` VALUES ('3073', '辅料采购', '13');
INSERT INTO `qs_hotword` VALUES ('3074', 'KA代表', '124');
INSERT INTO `qs_hotword` VALUES ('3079', '系统管理员', '96');
INSERT INTO `qs_hotword` VALUES ('3080', '面料采购', '18');
INSERT INTO `qs_hotword` VALUES ('3084', '电话营销员', '178');
INSERT INTO `qs_hotword` VALUES ('3089', '市场督导', '436');
INSERT INTO `qs_hotword` VALUES ('3094', '景观设计师', '113');
INSERT INTO `qs_hotword` VALUES ('3095', '电子商务', '307');
INSERT INTO `qs_hotword` VALUES ('3099', '技术支持人员', '15');
INSERT INTO `qs_hotword` VALUES ('3100', '高级秘书', '24');
INSERT INTO `qs_hotword` VALUES ('3101', '国内业务员', '27');
INSERT INTO `qs_hotword` VALUES ('3102', '数据分析员', '93');
INSERT INTO `qs_hotword` VALUES ('3103', '仓库操作员', '15');
INSERT INTO `qs_hotword` VALUES ('3104', '校园代理', '55');
INSERT INTO `qs_hotword` VALUES ('3105', '市场文案', '22');
INSERT INTO `qs_hotword` VALUES ('3116', '高级产品经理', '31');
INSERT INTO `qs_hotword` VALUES ('3118', '产品运营经理', '21');
INSERT INTO `qs_hotword` VALUES ('3125', '高级项目经理', '104');
INSERT INTO `qs_hotword` VALUES ('3126', '产品策划', '72');
INSERT INTO `qs_hotword` VALUES ('3127', '市场拓展人员', '22');
INSERT INTO `qs_hotword` VALUES ('3135', '电话客服', '338');
INSERT INTO `qs_hotword` VALUES ('3139', '电话销售精英', '82');
INSERT INTO `qs_hotword` VALUES ('3140', '产品设计', '32');
INSERT INTO `qs_hotword` VALUES ('3143', '生产主任', '11');
INSERT INTO `qs_hotword` VALUES ('3144', '市场拓展', '157');
INSERT INTO `qs_hotword` VALUES ('3146', '仓库主任', '11');
INSERT INTO `qs_hotword` VALUES ('3147', '营养师', '93');
INSERT INTO `qs_hotword` VALUES ('3148', '财务专员', '132');
INSERT INTO `qs_hotword` VALUES ('3158', '营销助理', '104');
INSERT INTO `qs_hotword` VALUES ('3159', '网络营销员', '51');
INSERT INTO `qs_hotword` VALUES ('3161', '电脑技术员', '32');
INSERT INTO `qs_hotword` VALUES ('3164', '淘宝推广专员', '67');
INSERT INTO `qs_hotword` VALUES ('3167', '渠道销售代表', '75');
INSERT INTO `qs_hotword` VALUES ('3174', '插画师', '11');
INSERT INTO `qs_hotword` VALUES ('3183', '微博编辑', '12');
INSERT INTO `qs_hotword` VALUES ('3186', '市场部部长', '25');
INSERT INTO `qs_hotword` VALUES ('3190', '财务文员', '100');
INSERT INTO `qs_hotword` VALUES ('3191', '客服工程师', '212');
INSERT INTO `qs_hotword` VALUES ('3194', '生产部部长', '26');
INSERT INTO `qs_hotword` VALUES ('3195', '财务部部长', '14');
INSERT INTO `qs_hotword` VALUES ('3196', '办公室主任', '704');
INSERT INTO `qs_hotword` VALUES ('3199', '审计专员', '133');
INSERT INTO `qs_hotword` VALUES ('3201', '货品助理', '18');
INSERT INTO `qs_hotword` VALUES ('3206', '零售主管', '70');
INSERT INTO `qs_hotword` VALUES ('3207', '外贸业务', '53');
INSERT INTO `qs_hotword` VALUES ('3208', '市场调研专员', '38');
INSERT INTO `qs_hotword` VALUES ('3219', '电子商务经理', '61');
INSERT INTO `qs_hotword` VALUES ('3221', '设计经理', '66');
INSERT INTO `qs_hotword` VALUES ('3224', '会计专员', '22');
INSERT INTO `qs_hotword` VALUES ('3227', '货品专员', '47');
INSERT INTO `qs_hotword` VALUES ('3228', '薪酬专员', '42');
INSERT INTO `qs_hotword` VALUES ('3229', '后勤主管', '36');
INSERT INTO `qs_hotword` VALUES ('3230', '系统维护员', '31');
INSERT INTO `qs_hotword` VALUES ('3234', '市场分析专员', '20');
INSERT INTO `qs_hotword` VALUES ('3239', '财务总监助理', '22');
INSERT INTO `qs_hotword` VALUES ('3242', '资金专员', '24');
INSERT INTO `qs_hotword` VALUES ('3245', '资金经理', '21');
INSERT INTO `qs_hotword` VALUES ('3249', '陈列设计师', '21');
INSERT INTO `qs_hotword` VALUES ('3254', '合同管理', '14');
INSERT INTO `qs_hotword` VALUES ('3255', '部门助理', '77');
INSERT INTO `qs_hotword` VALUES ('3258', '化验员', '231');
INSERT INTO `qs_hotword` VALUES ('3259', '高级工程师', '46');
INSERT INTO `qs_hotword` VALUES ('3263', 'C#工程师', '14');
INSERT INTO `qs_hotword` VALUES ('3265', '前端工程师', '56');
INSERT INTO `qs_hotword` VALUES ('3267', '网站架构师', '12');
INSERT INTO `qs_hotword` VALUES ('3274', '行政司机', '187');
INSERT INTO `qs_hotword` VALUES ('3275', '会计员', '27');
INSERT INTO `qs_hotword` VALUES ('3276', '业务销售代表', '12');
INSERT INTO `qs_hotword` VALUES ('3280', '单片机工程师', '22');
INSERT INTO `qs_hotword` VALUES ('3282', '采购部经理', '87');
INSERT INTO `qs_hotword` VALUES ('3298', '网络客服专员', '23');
INSERT INTO `qs_hotword` VALUES ('3299', '信息部主管', '14');
INSERT INTO `qs_hotword` VALUES ('3304', '生产技工', '19');
INSERT INTO `qs_hotword` VALUES ('3308', '外贸销售', '59');
INSERT INTO `qs_hotword` VALUES ('3310', '服装QC', '24');
INSERT INTO `qs_hotword` VALUES ('3314', '市场部专员', '69');
INSERT INTO `qs_hotword` VALUES ('3317', '研发经理', '46');
INSERT INTO `qs_hotword` VALUES ('3320', '品检员', '15');
INSERT INTO `qs_hotword` VALUES ('3321', '咨询项目经理', '15');
INSERT INTO `qs_hotword` VALUES ('3322', '人事文员', '83');
INSERT INTO `qs_hotword` VALUES ('3331', '宴会服务员', '10');
INSERT INTO `qs_hotword` VALUES ('3332', '英文客服', '16');
INSERT INTO `qs_hotword` VALUES ('3333', '建造师', '29');
INSERT INTO `qs_hotword` VALUES ('3334', '网站产品经理', '18');
INSERT INTO `qs_hotword` VALUES ('3354', '数据统计员', '24');
INSERT INTO `qs_hotword` VALUES ('3358', '计划员', '62');
INSERT INTO `qs_hotword` VALUES ('3364', '电话文员', '60');
INSERT INTO `qs_hotword` VALUES ('3365', '预算经理', '23');
INSERT INTO `qs_hotword` VALUES ('3367', '管理咨询顾问', '21');
INSERT INTO `qs_hotword` VALUES ('3370', '应届生', '17');
INSERT INTO `qs_hotword` VALUES ('3373', '装配工程师', '12');
INSERT INTO `qs_hotword` VALUES ('3374', '办事处主任', '124');
INSERT INTO `qs_hotword` VALUES ('3375', '销售区域经理', '55');
INSERT INTO `qs_hotword` VALUES ('3378', '博士后', '13');
INSERT INTO `qs_hotword` VALUES ('3389', '实验室技术员', '52');
INSERT INTO `qs_hotword` VALUES ('3391', '化妆师', '94');
INSERT INTO `qs_hotword` VALUES ('3397', '档案管理员', '87');
INSERT INTO `qs_hotword` VALUES ('3401', '化妆助理', '27');
INSERT INTO `qs_hotword` VALUES ('3404', '送货司机', '92');
INSERT INTO `qs_hotword` VALUES ('3406', '后勤', '51');
INSERT INTO `qs_hotword` VALUES ('3407', '库工', '50');
INSERT INTO `qs_hotword` VALUES ('3415', '行销专员', '25');
INSERT INTO `qs_hotword` VALUES ('3420', '理财规划师', '207');
INSERT INTO `qs_hotword` VALUES ('3426', '网络销售', '350');
INSERT INTO `qs_hotword` VALUES ('3429', '网络销售专员', '65');
INSERT INTO `qs_hotword` VALUES ('3430', '客服咨询', '12');
INSERT INTO `qs_hotword` VALUES ('3431', '海运出口操作', '15');
INSERT INTO `qs_hotword` VALUES ('3434', '档案管理', '15');
INSERT INTO `qs_hotword` VALUES ('3438', '水电施工员', '15');
INSERT INTO `qs_hotword` VALUES ('3439', '督导', '265');
INSERT INTO `qs_hotword` VALUES ('3444', '试验员', '28');
INSERT INTO `qs_hotword` VALUES ('3450', '物流司机', '39');
INSERT INTO `qs_hotword` VALUES ('3451', '水暖工程师', '230');
INSERT INTO `qs_hotword` VALUES ('3452', '预结算员', '37');
INSERT INTO `qs_hotword` VALUES ('3454', '维修钳工', '40');
INSERT INTO `qs_hotword` VALUES ('3456', '市场销售专员', '21');
INSERT INTO `qs_hotword` VALUES ('3459', '总务', '25');
INSERT INTO `qs_hotword` VALUES ('3463', '总经办秘书', '49');
INSERT INTO `qs_hotword` VALUES ('3464', '强弱电工程师', '22');
INSERT INTO `qs_hotword` VALUES ('3468', '市政工程师', '33');
INSERT INTO `qs_hotword` VALUES ('3472', '景观工程师', '121');
INSERT INTO `qs_hotword` VALUES ('3473', '设备操作工', '14');
INSERT INTO `qs_hotword` VALUES ('3476', '精装工程师', '22');
INSERT INTO `qs_hotword` VALUES ('3479', '前期主管', '19');
INSERT INTO `qs_hotword` VALUES ('3481', '财务管理', '55');
INSERT INTO `qs_hotword` VALUES ('3483', '小车司机', '125');
INSERT INTO `qs_hotword` VALUES ('3484', '工艺员', '120');
INSERT INTO `qs_hotword` VALUES ('3485', '仓库保管员', '144');
INSERT INTO `qs_hotword` VALUES ('3486', 'B超医师', '17');
INSERT INTO `qs_hotword` VALUES ('3488', '厨师', '395');
INSERT INTO `qs_hotword` VALUES ('3494', '幕墙工程师', '23');
INSERT INTO `qs_hotword` VALUES ('3497', '摄影助理', '87');
INSERT INTO `qs_hotword` VALUES ('3505', '海运进口操作', '12');
INSERT INTO `qs_hotword` VALUES ('3512', '技工', '78');
INSERT INTO `qs_hotword` VALUES ('3516', '平面制作', '12');
INSERT INTO `qs_hotword` VALUES ('3517', '环境主管', '14');
INSERT INTO `qs_hotword` VALUES ('3518', '货运司机', '42');
INSERT INTO `qs_hotword` VALUES ('3520', '销售主任', '121');
INSERT INTO `qs_hotword` VALUES ('3527', '预算工程师', '52');
INSERT INTO `qs_hotword` VALUES ('3528', '外勤', '33');
INSERT INTO `qs_hotword` VALUES ('3532', '技术服务', '27');
INSERT INTO `qs_hotword` VALUES ('3535', '电子商务人员', '22');
INSERT INTO `qs_hotword` VALUES ('3536', '自动化工程师', '115');
INSERT INTO `qs_hotword` VALUES ('3539', '环保工程师', '98');
INSERT INTO `qs_hotword` VALUES ('3541', '土建主管', '31');
INSERT INTO `qs_hotword` VALUES ('3548', '市场推广主管', '61');
INSERT INTO `qs_hotword` VALUES ('3549', '市场企划专员', '243');
INSERT INTO `qs_hotword` VALUES ('3550', '大堂经理', '54');
INSERT INTO `qs_hotword` VALUES ('3551', '编剧', '25');
INSERT INTO `qs_hotword` VALUES ('3556', '品牌专员', '45');
INSERT INTO `qs_hotword` VALUES ('3557', 'CAD制图员', '51');
INSERT INTO `qs_hotword` VALUES ('3558', '高中化学教师', '36');
INSERT INTO `qs_hotword` VALUES ('3561', '置业顾问', '1543');
INSERT INTO `qs_hotword` VALUES ('3574', '理财专员', '32');
INSERT INTO `qs_hotword` VALUES ('3575', '网络销售主管', '16');
INSERT INTO `qs_hotword` VALUES ('3580', '招标工程师', '23');
INSERT INTO `qs_hotword` VALUES ('3581', '销售支持', '87');
INSERT INTO `qs_hotword` VALUES ('3584', '带车司机', '10');
INSERT INTO `qs_hotword` VALUES ('3591', '电话销售文员', '10');
INSERT INTO `qs_hotword` VALUES ('3592', '数据分析专员', '85');
INSERT INTO `qs_hotword` VALUES ('3595', '见习操盘手', '51');
INSERT INTO `qs_hotword` VALUES ('3596', '广告策划主管', '12');
INSERT INTO `qs_hotword` VALUES ('3598', '网络营销主管', '72');
INSERT INTO `qs_hotword` VALUES ('3607', '货代销售', '36');
INSERT INTO `qs_hotword` VALUES ('3610', '货代业务员', '13');
INSERT INTO `qs_hotword` VALUES ('3612', '连锁店店长', '27');
INSERT INTO `qs_hotword` VALUES ('3616', '内勤人员', '29');
INSERT INTO `qs_hotword` VALUES ('3617', '送货员', '144');
INSERT INTO `qs_hotword` VALUES ('3619', '施工队长', '10');
INSERT INTO `qs_hotword` VALUES ('3621', '做饭阿姨', '14');
INSERT INTO `qs_hotword` VALUES ('3630', '仓库助理', '34');
INSERT INTO `qs_hotword` VALUES ('3634', '电话邀约', '17');
INSERT INTO `qs_hotword` VALUES ('3648', '高级业务经理', '29');
INSERT INTO `qs_hotword` VALUES ('3659', '土建工长', '12');
INSERT INTO `qs_hotword` VALUES ('3660', '出纳兼文员', '21');
INSERT INTO `qs_hotword` VALUES ('3664', '生产经理助理', '16');
INSERT INTO `qs_hotword` VALUES ('3665', '核算员', '48');
INSERT INTO `qs_hotword` VALUES ('3668', '报批报建专员', '21');
INSERT INTO `qs_hotword` VALUES ('3683', '设备维修', '35');
INSERT INTO `qs_hotword` VALUES ('3686', '培训导师', '17');
INSERT INTO `qs_hotword` VALUES ('3687', '质量部部长', '11');
INSERT INTO `qs_hotword` VALUES ('3689', '运营总监', '318');
INSERT INTO `qs_hotword` VALUES ('3696', '客户关系管理', '24');
INSERT INTO `qs_hotword` VALUES ('3703', '高级程序员', '61');
INSERT INTO `qs_hotword` VALUES ('3710', '餐厅服务员', '133');
INSERT INTO `qs_hotword` VALUES ('3712', '技术总工程师', '21');
INSERT INTO `qs_hotword` VALUES ('3716', '储备店长', '244');
INSERT INTO `qs_hotword` VALUES ('3719', '日语翻译', '171');
INSERT INTO `qs_hotword` VALUES ('3722', '行政内勤', '98');
INSERT INTO `qs_hotword` VALUES ('3723', '3D设计', '38');
INSERT INTO `qs_hotword` VALUES ('3724', '兼职', '90');
INSERT INTO `qs_hotword` VALUES ('3727', '市场部内勤', '14');
INSERT INTO `qs_hotword` VALUES ('3731', '汽车销售人员', '11');
INSERT INTO `qs_hotword` VALUES ('3732', '品质检验员', '22');
INSERT INTO `qs_hotword` VALUES ('3736', '生产调度', '37');
INSERT INTO `qs_hotword` VALUES ('3741', '库管员', '215');
INSERT INTO `qs_hotword` VALUES ('3748', '珠宝导购', '19');
INSERT INTO `qs_hotword` VALUES ('3750', '幼儿教师', '88');
INSERT INTO `qs_hotword` VALUES ('3751', '行政总厨', '23');
INSERT INTO `qs_hotword` VALUES ('3753', '少儿英语老师', '40');
INSERT INTO `qs_hotword` VALUES ('3754', '市场销售代表', '15');
INSERT INTO `qs_hotword` VALUES ('3756', '前厅经理', '59');
INSERT INTO `qs_hotword` VALUES ('3757', '品管工程师', '38');
INSERT INTO `qs_hotword` VALUES ('3758', '客房服务员', '150');
INSERT INTO `qs_hotword` VALUES ('3760', 'PA领班', '10');
INSERT INTO `qs_hotword` VALUES ('3763', '发单员', '39');
INSERT INTO `qs_hotword` VALUES ('3768', '保安领班', '14');
INSERT INTO `qs_hotword` VALUES ('3769', '财务分析主管', '14');
INSERT INTO `qs_hotword` VALUES ('3775', '国际贸易专员', '62');
INSERT INTO `qs_hotword` VALUES ('3776', '营销人员', '83');
INSERT INTO `qs_hotword` VALUES ('3778', '货代操作', '18');
INSERT INTO `qs_hotword` VALUES ('3784', '影视后期', '25');
INSERT INTO `qs_hotword` VALUES ('3786', '大堂副理', '67');
INSERT INTO `qs_hotword` VALUES ('3789', '杂工', '19');
INSERT INTO `qs_hotword` VALUES ('3791', '人事管理', '13');
INSERT INTO `qs_hotword` VALUES ('3797', '模具钳工', '37');
INSERT INTO `qs_hotword` VALUES ('3802', '人资专员', '39');
INSERT INTO `qs_hotword` VALUES ('3805', '高级客户代表', '22');
INSERT INTO `qs_hotword` VALUES ('3807', '销售外勤', '29');
INSERT INTO `qs_hotword` VALUES ('3812', '机械制图员', '21');
INSERT INTO `qs_hotword` VALUES ('3813', '协调员', '20');
INSERT INTO `qs_hotword` VALUES ('3815', '锅炉工', '60');
INSERT INTO `qs_hotword` VALUES ('3820', '仓库记账员', '14');
INSERT INTO `qs_hotword` VALUES ('3822', '统计员', '304');
INSERT INTO `qs_hotword` VALUES ('3824', 'IQC', '20');
INSERT INTO `qs_hotword` VALUES ('3830', '助理文员', '15');
INSERT INTO `qs_hotword` VALUES ('3832', '施工图绘图员', '23');
INSERT INTO `qs_hotword` VALUES ('3836', '工业设计', '21');
INSERT INTO `qs_hotword` VALUES ('3839', '旗舰店店长', '13');
INSERT INTO `qs_hotword` VALUES ('3840', '暖通设计师', '74');
INSERT INTO `qs_hotword` VALUES ('3842', '维修工', '132');
INSERT INTO `qs_hotword` VALUES ('3846', '售后内勤', '10');
INSERT INTO `qs_hotword` VALUES ('3847', 'IT专员', '122');
INSERT INTO `qs_hotword` VALUES ('3849', '生产部文员', '20');
INSERT INTO `qs_hotword` VALUES ('3852', '面包师', '15');
INSERT INTO `qs_hotword` VALUES ('3856', '市场策划', '185');
INSERT INTO `qs_hotword` VALUES ('3869', '媒介助理', '19');
INSERT INTO `qs_hotword` VALUES ('3871', '库房工人', '16');
INSERT INTO `qs_hotword` VALUES ('3872', '信用经理', '12');
INSERT INTO `qs_hotword` VALUES ('3873', '研发人员', '73');
INSERT INTO `qs_hotword` VALUES ('3876', '货车司机', '123');
INSERT INTO `qs_hotword` VALUES ('3878', '暖通设计人员', '27');
INSERT INTO `qs_hotword` VALUES ('3895', '预算师', '15');
INSERT INTO `qs_hotword` VALUES ('3897', '兼职网页美工', '15');
INSERT INTO `qs_hotword` VALUES ('3901', '电话专员', '33');
INSERT INTO `qs_hotword` VALUES ('3903', '幼儿园园长', '33');
INSERT INTO `qs_hotword` VALUES ('3906', '公共关系专员', '35');
INSERT INTO `qs_hotword` VALUES ('3907', '电气装配工', '12');
INSERT INTO `qs_hotword` VALUES ('3914', '市场营销', '160');
INSERT INTO `qs_hotword` VALUES ('3922', '实习编辑', '11');
INSERT INTO `qs_hotword` VALUES ('3925', '就业专员', '32');
INSERT INTO `qs_hotword` VALUES ('3926', '图片编辑', '16');
INSERT INTO `qs_hotword` VALUES ('3928', '媒介总监', '16');
INSERT INTO `qs_hotword` VALUES ('3932', '生产计划调度', '14');
INSERT INTO `qs_hotword` VALUES ('3933', '液压工程师', '51');
INSERT INTO `qs_hotword` VALUES ('3939', '管理会计', '27');
INSERT INTO `qs_hotword` VALUES ('3940', '保洁阿姨', '15');
INSERT INTO `qs_hotword` VALUES ('3943', '业务人员', '196');
INSERT INTO `qs_hotword` VALUES ('3944', '钢结构工程师', '40');
INSERT INTO `qs_hotword` VALUES ('3947', '实施顾问', '130');
INSERT INTO `qs_hotword` VALUES ('3967', '电焊工', '103');
INSERT INTO `qs_hotword` VALUES ('3968', '库房主管', '36');
INSERT INTO `qs_hotword` VALUES ('3971', '安全主管', '49');
INSERT INTO `qs_hotword` VALUES ('3985', '呼叫中心客服', '20');
INSERT INTO `qs_hotword` VALUES ('3986', '售后服务顾问', '27');
INSERT INTO `qs_hotword` VALUES ('3988', '临时促销员', '11');
INSERT INTO `qs_hotword` VALUES ('3991', '车间主任', '248');
INSERT INTO `qs_hotword` VALUES ('3992', '配件经理', '50');
INSERT INTO `qs_hotword` VALUES ('3995', '配件管理员', '30');
INSERT INTO `qs_hotword` VALUES ('3998', '电子商务员', '12');
INSERT INTO `qs_hotword` VALUES ('4005', '维修技师', '71');
INSERT INTO `qs_hotword` VALUES ('4006', '机械装配工', '16');
INSERT INTO `qs_hotword` VALUES ('4015', '物业项目经理', '48');
INSERT INTO `qs_hotword` VALUES ('4026', '工程部主管', '59');
INSERT INTO `qs_hotword` VALUES ('4028', '前厅接待', '68');
INSERT INTO `qs_hotword` VALUES ('4032', '高级置业顾问', '116');
INSERT INTO `qs_hotword` VALUES ('4049', '质量总监', '24');
INSERT INTO `qs_hotword` VALUES ('4050', '储备销售主管', '13');
INSERT INTO `qs_hotword` VALUES ('4058', '法语翻译', '35');
INSERT INTO `qs_hotword` VALUES ('4063', '消防员', '11');
INSERT INTO `qs_hotword` VALUES ('4064', '班车司机', '33');
INSERT INTO `qs_hotword` VALUES ('4066', '知识产权顾问', '40');
INSERT INTO `qs_hotword` VALUES ('4073', '储备经理', '192');
INSERT INTO `qs_hotword` VALUES ('4076', '市场部主任', '25');
INSERT INTO `qs_hotword` VALUES ('4080', '市场部文员', '36');
INSERT INTO `qs_hotword` VALUES ('4084', '副店长', '45');
INSERT INTO `qs_hotword` VALUES ('4086', '店员', '242');
INSERT INTO `qs_hotword` VALUES ('4089', 'HR主管', '15');
INSERT INTO `qs_hotword` VALUES ('4096', '广告业务', '15');
INSERT INTO `qs_hotword` VALUES ('4098', '工程资料员', '80');
INSERT INTO `qs_hotword` VALUES ('4099', '注册会计师', '68');
INSERT INTO `qs_hotword` VALUES ('4101', '清洁工', '46');
INSERT INTO `qs_hotword` VALUES ('4102', '注册专员', '35');
INSERT INTO `qs_hotword` VALUES ('4105', '车工', '144');
INSERT INTO `qs_hotword` VALUES ('4106', '临床监察员', '25');
INSERT INTO `qs_hotword` VALUES ('4111', '技术主管', '126');
INSERT INTO `qs_hotword` VALUES ('4114', '实验员', '65');
INSERT INTO `qs_hotword` VALUES ('4116', '专职司机', '45');
INSERT INTO `qs_hotword` VALUES ('4119', '物流助理', '46');
INSERT INTO `qs_hotword` VALUES ('4122', '学术经理', '16');
INSERT INTO `qs_hotword` VALUES ('4126', '通信工程师', '65');
INSERT INTO `qs_hotword` VALUES ('4134', '心理咨询师', '48');
INSERT INTO `qs_hotword` VALUES ('4141', '外贸销售助理', '25');
INSERT INTO `qs_hotword` VALUES ('4146', '呼叫中心专员', '30');
INSERT INTO `qs_hotword` VALUES ('4147', '家装业务主管', '10');
INSERT INTO `qs_hotword` VALUES ('4149', '接待员', '36');
INSERT INTO `qs_hotword` VALUES ('4150', '生产文员', '140');
INSERT INTO `qs_hotword` VALUES ('4152', '生产班长', '21');
INSERT INTO `qs_hotword` VALUES ('4153', '大客司机', '21');
INSERT INTO `qs_hotword` VALUES ('4160', '渠道主管', '69');
INSERT INTO `qs_hotword` VALUES ('4163', '网管员', '10');
INSERT INTO `qs_hotword` VALUES ('4165', '生产组长', '27');
INSERT INTO `qs_hotword` VALUES ('4166', '语文老师', '27');
INSERT INTO `qs_hotword` VALUES ('4167', '维护工程师', '117');
INSERT INTO `qs_hotword` VALUES ('4169', '弱电项目经理', '26');
INSERT INTO `qs_hotword` VALUES ('4181', '生产统计', '30');
INSERT INTO `qs_hotword` VALUES ('4184', '网络维护', '49');
INSERT INTO `qs_hotword` VALUES ('4186', '常务副总经理', '29');
INSERT INTO `qs_hotword` VALUES ('4188', '索赔员', '34');
INSERT INTO `qs_hotword` VALUES ('4191', '业务内勤', '37');
INSERT INTO `qs_hotword` VALUES ('4192', '弱电工程师', '187');
INSERT INTO `qs_hotword` VALUES ('4196', '项目开发经理', '32');
INSERT INTO `qs_hotword` VALUES ('4208', '客户工程师', '15');
INSERT INTO `qs_hotword` VALUES ('4209', '高中语文老师', '17');
INSERT INTO `qs_hotword` VALUES ('4214', '兼职教师', '14');
INSERT INTO `qs_hotword` VALUES ('4221', '计划专员', '30');
INSERT INTO `qs_hotword` VALUES ('4228', '办公内勤', '14');
INSERT INTO `qs_hotword` VALUES ('4241', '渠道业务', '11');
INSERT INTO `qs_hotword` VALUES ('4245', '店面导购', '43');
INSERT INTO `qs_hotword` VALUES ('4249', '服务员', '571');
INSERT INTO `qs_hotword` VALUES ('4253', '销售担当', '14');
INSERT INTO `qs_hotword` VALUES ('4266', '汽车销售员', '15');
INSERT INTO `qs_hotword` VALUES ('4272', '商务顾问', '43');
INSERT INTO `qs_hotword` VALUES ('4277', '创意总监', '93');
INSERT INTO `qs_hotword` VALUES ('4278', '实习设计师', '111');
INSERT INTO `qs_hotword` VALUES ('4279', '品质部主管', '10');
INSERT INTO `qs_hotword` VALUES ('4298', '开发项目经理', '41');
INSERT INTO `qs_hotword` VALUES ('4299', '质量检验员', '105');
INSERT INTO `qs_hotword` VALUES ('4302', '面包车司机', '11');
INSERT INTO `qs_hotword` VALUES ('4314', '美术设计', '23');
INSERT INTO `qs_hotword` VALUES ('4318', '融资助理', '10');
INSERT INTO `qs_hotword` VALUES ('4321', '销售内业', '38');
INSERT INTO `qs_hotword` VALUES ('4322', '总务担当', '10');
INSERT INTO `qs_hotword` VALUES ('4323', '拓展专员', '257');
INSERT INTO `qs_hotword` VALUES ('4324', '结构设计师', '196');
INSERT INTO `qs_hotword` VALUES ('4338', '工程督导', '31');
INSERT INTO `qs_hotword` VALUES ('4340', '工程设计', '14');
INSERT INTO `qs_hotword` VALUES ('4341', '专卖店营业员', '64');
INSERT INTO `qs_hotword` VALUES ('4348', '团队主管', '14');
INSERT INTO `qs_hotword` VALUES ('4356', '餐饮部服务员', '19');
INSERT INTO `qs_hotword` VALUES ('4359', '管道工程师', '12');
INSERT INTO `qs_hotword` VALUES ('4360', '物流人员', '25');
INSERT INTO `qs_hotword` VALUES ('4362', '游戏推广员', '10');
INSERT INTO `qs_hotword` VALUES ('4363', '生产管理人员', '20');
INSERT INTO `qs_hotword` VALUES ('4366', '主管', '367');
INSERT INTO `qs_hotword` VALUES ('4374', '幼儿指导老师', '12');
INSERT INTO `qs_hotword` VALUES ('4378', '网页编辑', '14');
INSERT INTO `qs_hotword` VALUES ('4382', '信贷经理', '15');
INSERT INTO `qs_hotword` VALUES ('4383', '融资专员', '112');
INSERT INTO `qs_hotword` VALUES ('4387', '品质专员', '18');
INSERT INTO `qs_hotword` VALUES ('4390', '办公室副主任', '61');
INSERT INTO `qs_hotword` VALUES ('4393', '韩语翻译', '58');
INSERT INTO `qs_hotword` VALUES ('4401', '开发总监', '13');
INSERT INTO `qs_hotword` VALUES ('4405', '广告文案', '50');
INSERT INTO `qs_hotword` VALUES ('4424', '医助', '47');
INSERT INTO `qs_hotword` VALUES ('4426', '小区推广专员', '22');
INSERT INTO `qs_hotword` VALUES ('4427', '收费员', '56');
INSERT INTO `qs_hotword` VALUES ('4434', '生产管理员', '14');
INSERT INTO `qs_hotword` VALUES ('4438', '销售副经理', '20');
INSERT INTO `qs_hotword` VALUES ('4442', '统计文员', '22');
INSERT INTO `qs_hotword` VALUES ('4444', '美容顾问', '283');
INSERT INTO `qs_hotword` VALUES ('4446', '客服AE', '14');
INSERT INTO `qs_hotword` VALUES ('4449', '网站制作', '40');
INSERT INTO `qs_hotword` VALUES ('4450', '部门经理', '117');
INSERT INTO `qs_hotword` VALUES ('4453', '高级文案策划', '16');
INSERT INTO `qs_hotword` VALUES ('4455', '商务拓展经理', '35');
INSERT INTO `qs_hotword` VALUES ('4457', '省区经理', '557');
INSERT INTO `qs_hotword` VALUES ('4459', '工业会计', '68');
INSERT INTO `qs_hotword` VALUES ('4461', '资深会计', '15');
INSERT INTO `qs_hotword` VALUES ('4462', '缝纫工', '54');
INSERT INTO `qs_hotword` VALUES ('4465', '样衣工', '112');
INSERT INTO `qs_hotword` VALUES ('4473', '网络管理人员', '10');
INSERT INTO `qs_hotword` VALUES ('4474', '分析工程师', '13');
INSERT INTO `qs_hotword` VALUES ('4475', '高级电工', '11');
INSERT INTO `qs_hotword` VALUES ('4480', '验光师', '48');
INSERT INTO `qs_hotword` VALUES ('4481', '教务专员', '60');
INSERT INTO `qs_hotword` VALUES ('4483', '咨询主管', '102');
INSERT INTO `qs_hotword` VALUES ('4486', '电话客服人员', '13');
INSERT INTO `qs_hotword` VALUES ('4489', '呼叫中心主管', '26');
INSERT INTO `qs_hotword` VALUES ('4498', '药师', '30');
INSERT INTO `qs_hotword` VALUES ('4501', '市场推广助理', '12');
INSERT INTO `qs_hotword` VALUES ('4504', '开发专员', '63');
INSERT INTO `qs_hotword` VALUES ('4522', '论坛编辑', '149');
INSERT INTO `qs_hotword` VALUES ('4524', '出纳岗', '15');
INSERT INTO `qs_hotword` VALUES ('4525', '广告业务员', '68');
INSERT INTO `qs_hotword` VALUES ('4526', '班主任', '127');
INSERT INTO `qs_hotword` VALUES ('4532', '幼儿园会计', '11');
INSERT INTO `qs_hotword` VALUES ('4536', '商业运营经理', '15');
INSERT INTO `qs_hotword` VALUES ('4556', '出差人员', '41');
INSERT INTO `qs_hotword` VALUES ('4562', '氩弧焊工', '58');
INSERT INTO `qs_hotword` VALUES ('4566', '销售客户经理', '36');
INSERT INTO `qs_hotword` VALUES ('4569', '早教顾问', '16');
INSERT INTO `qs_hotword` VALUES ('4573', '早教老师', '41');
INSERT INTO `qs_hotword` VALUES ('4585', '商超业务员', '24');
INSERT INTO `qs_hotword` VALUES ('4586', '健康顾问', '36');
INSERT INTO `qs_hotword` VALUES ('4595', '售后专员', '39');
INSERT INTO `qs_hotword` VALUES ('4599', '金融实习生', '30');
INSERT INTO `qs_hotword` VALUES ('4602', '金融讲师', '10');
INSERT INTO `qs_hotword` VALUES ('4603', '理赔专员', '19');
INSERT INTO `qs_hotword` VALUES ('4604', '电气设计师', '96');
INSERT INTO `qs_hotword` VALUES ('4605', '生产人员', '31');
INSERT INTO `qs_hotword` VALUES ('4609', '报批报建经理', '10');
INSERT INTO `qs_hotword` VALUES ('4611', '业务拓展人员', '13');
INSERT INTO `qs_hotword` VALUES ('4613', '建筑设计经理', '33');
INSERT INTO `qs_hotword` VALUES ('4616', '销售副总经理', '25');
INSERT INTO `qs_hotword` VALUES ('4617', '电话营销人员', '48');
INSERT INTO `qs_hotword` VALUES ('4618', '业务销售', '30');
INSERT INTO `qs_hotword` VALUES ('4623', '业务精英', '201');
INSERT INTO `qs_hotword` VALUES ('4625', '园长', '14');
INSERT INTO `qs_hotword` VALUES ('4635', '高级营业员', '15');
INSERT INTO `qs_hotword` VALUES ('4641', 'HR专员', '11');
INSERT INTO `qs_hotword` VALUES ('4642', 'IPQC', '21');
INSERT INTO `qs_hotword` VALUES ('4652', '市场营销人员', '51');
INSERT INTO `qs_hotword` VALUES ('4653', '财经编辑', '15');
INSERT INTO `qs_hotword` VALUES ('4656', '投资主管', '20');
INSERT INTO `qs_hotword` VALUES ('4659', '经纪人', '81');
INSERT INTO `qs_hotword` VALUES ('4678', '医药招商经理', '36');
INSERT INTO `qs_hotword` VALUES ('4679', '销售商务', '16');
INSERT INTO `qs_hotword` VALUES ('4681', '珠宝销售顾问', '139');
INSERT INTO `qs_hotword` VALUES ('4684', '薪酬绩效主管', '39');
INSERT INTO `qs_hotword` VALUES ('4695', '执行总经理', '29');
INSERT INTO `qs_hotword` VALUES ('4706', '网络设计师', '10');
INSERT INTO `qs_hotword` VALUES ('4711', '设计文员', '17');
INSERT INTO `qs_hotword` VALUES ('4712', '销售实习生', '100');
INSERT INTO `qs_hotword` VALUES ('4714', '领班', '43');
INSERT INTO `qs_hotword` VALUES ('4719', '风控专员', '27');
INSERT INTO `qs_hotword` VALUES ('4725', '软件技术支持', '16');
INSERT INTO `qs_hotword` VALUES ('4726', '市场区域经理', '19');
INSERT INTO `qs_hotword` VALUES ('4736', '资深策划师', '30');
INSERT INTO `qs_hotword` VALUES ('4739', '网站设计', '50');
INSERT INTO `qs_hotword` VALUES ('4741', '高级分析师', '12');
INSERT INTO `qs_hotword` VALUES ('4744', '商业策划经理', '13');
INSERT INTO `qs_hotword` VALUES ('4749', '医药招商', '10');
INSERT INTO `qs_hotword` VALUES ('4753', '分销专员', '22');
INSERT INTO `qs_hotword` VALUES ('4764', '前台收银', '41');
INSERT INTO `qs_hotword` VALUES ('4773', '业务实习生', '20');
INSERT INTO `qs_hotword` VALUES ('4778', '招商代表', '56');
INSERT INTO `qs_hotword` VALUES ('4779', '企业文化专员', '88');
INSERT INTO `qs_hotword` VALUES ('4781', '网络营销经理', '47');
INSERT INTO `qs_hotword` VALUES ('4783', '高级美工', '18');
INSERT INTO `qs_hotword` VALUES ('4786', '预决算员', '41');
INSERT INTO `qs_hotword` VALUES ('4787', '汽车美容技师', '25');
INSERT INTO `qs_hotword` VALUES ('4788', '客户回访专员', '20');
INSERT INTO `qs_hotword` VALUES ('4791', '审计经理', '118');
INSERT INTO `qs_hotword` VALUES ('4796', '区域推广主管', '20');
INSERT INTO `qs_hotword` VALUES ('4797', '机械设计主管', '10');
INSERT INTO `qs_hotword` VALUES ('4801', '推广主管', '36');
INSERT INTO `qs_hotword` VALUES ('4811', '商务学徒', '19');
INSERT INTO `qs_hotword` VALUES ('4814', '电梯维修工', '30');
INSERT INTO `qs_hotword` VALUES ('4815', '店务秘书', '37');
INSERT INTO `qs_hotword` VALUES ('4816', '会计师', '37');
INSERT INTO `qs_hotword` VALUES ('4817', '营业部总经理', '24');
INSERT INTO `qs_hotword` VALUES ('4818', '商务司机', '25');
INSERT INTO `qs_hotword` VALUES ('4830', '实习业务员', '24');
INSERT INTO `qs_hotword` VALUES ('4831', '电话营销专员', '258');
INSERT INTO `qs_hotword` VALUES ('4834', '质检专员', '25');
INSERT INTO `qs_hotword` VALUES ('4837', '综合内勤', '42');
INSERT INTO `qs_hotword` VALUES ('4838', '广告专员', '14');
INSERT INTO `qs_hotword` VALUES ('4841', '造价工程师', '198');
INSERT INTO `qs_hotword` VALUES ('4848', '编辑部主任', '18');
INSERT INTO `qs_hotword` VALUES ('4864', '集团财务总监', '19');
INSERT INTO `qs_hotword` VALUES ('4876', '市场信息员', '11');
INSERT INTO `qs_hotword` VALUES ('4877', '吧员', '105');
INSERT INTO `qs_hotword` VALUES ('4878', '二级建造师', '44');
INSERT INTO `qs_hotword` VALUES ('4882', '一级建造师', '65');
INSERT INTO `qs_hotword` VALUES ('4891', '项目顾问', '29');
INSERT INTO `qs_hotword` VALUES ('4897', '座席代表', '15');
INSERT INTO `qs_hotword` VALUES ('4902', 'HR助理', '16');
INSERT INTO `qs_hotword` VALUES ('4903', '医院代表', '43');
INSERT INTO `qs_hotword` VALUES ('4907', '电器工程师', '39');
INSERT INTO `qs_hotword` VALUES ('4909', '审计员', '75');
INSERT INTO `qs_hotword` VALUES ('4925', '汽车电工', '32');
INSERT INTO `qs_hotword` VALUES ('4930', '助理研究员', '30');
INSERT INTO `qs_hotword` VALUES ('4931', '区域营运经理', '10');
INSERT INTO `qs_hotword` VALUES ('4939', '销售后勤', '14');
INSERT INTO `qs_hotword` VALUES ('4947', '档案员', '24');
INSERT INTO `qs_hotword` VALUES ('4951', '现场技术员', '10');
INSERT INTO `qs_hotword` VALUES ('4953', '软件测试', '33');
INSERT INTO `qs_hotword` VALUES ('4955', '系统分析员', '18');
INSERT INTO `qs_hotword` VALUES ('4957', '家装顾问', '68');
INSERT INTO `qs_hotword` VALUES ('4958', '出纳兼内勤', '14');
INSERT INTO `qs_hotword` VALUES ('4970', '国际贸易人员', '18');
INSERT INTO `qs_hotword` VALUES ('4972', '技术工人', '51');
INSERT INTO `qs_hotword` VALUES ('4977', '电信营业员', '10');
INSERT INTO `qs_hotword` VALUES ('4978', '绩效考核专员', '78');
INSERT INTO `qs_hotword` VALUES ('4979', '工程技术', '19');
INSERT INTO `qs_hotword` VALUES ('4980', '数据分析', '48');
INSERT INTO `qs_hotword` VALUES ('4987', '美容导师', '354');
INSERT INTO `qs_hotword` VALUES ('4989', '临床医药代表', '88');
INSERT INTO `qs_hotword` VALUES ('4992', '售后助理', '18');
INSERT INTO `qs_hotword` VALUES ('4993', '美容讲师', '67');
INSERT INTO `qs_hotword` VALUES ('4996', '美容学员', '44');
INSERT INTO `qs_hotword` VALUES ('4998', '电子商务师', '34');
INSERT INTO `qs_hotword` VALUES ('5001', '物流操作员', '58');
INSERT INTO `qs_hotword` VALUES ('5004', '前台客服', '73');
INSERT INTO `qs_hotword` VALUES ('5005', '驻外出纳', '13');
INSERT INTO `qs_hotword` VALUES ('5006', '录入员', '24');
INSERT INTO `qs_hotword` VALUES ('5011', '审计总监', '16');
INSERT INTO `qs_hotword` VALUES ('5015', '土建预算', '10');
INSERT INTO `qs_hotword` VALUES ('5016', '专卖店收银员', '12');
INSERT INTO `qs_hotword` VALUES ('5024', '咨询医师', '10');
INSERT INTO `qs_hotword` VALUES ('5026', '市场开发人员', '42');
INSERT INTO `qs_hotword` VALUES ('5029', '媒介主管', '23');
INSERT INTO `qs_hotword` VALUES ('5050', '土建项目经理', '21');
INSERT INTO `qs_hotword` VALUES ('5055', '专职英语教师', '17');
INSERT INTO `qs_hotword` VALUES ('5060', '物业经理', '123');
INSERT INTO `qs_hotword` VALUES ('5062', '融资总监', '10');
INSERT INTO `qs_hotword` VALUES ('5065', '会员客服', '28');
INSERT INTO `qs_hotword` VALUES ('5073', '电话咨询师', '17');
INSERT INTO `qs_hotword` VALUES ('5076', '学徒', '18');
INSERT INTO `qs_hotword` VALUES ('5080', '行业经理', '35');
INSERT INTO `qs_hotword` VALUES ('5082', '物流配送员', '10');
INSERT INTO `qs_hotword` VALUES ('5086', '策划助理', '141');
INSERT INTO `qs_hotword` VALUES ('5087', '餐饮销售经理', '12');
INSERT INTO `qs_hotword` VALUES ('5093', '兼职发单员', '13');
INSERT INTO `qs_hotword` VALUES ('5105', '建筑工程师', '81');
INSERT INTO `qs_hotword` VALUES ('5108', '拓展经理', '145');
INSERT INTO `qs_hotword` VALUES ('5121', '商务内勤', '26');
INSERT INTO `qs_hotword` VALUES ('5124', '电销专员', '32');
INSERT INTO `qs_hotword` VALUES ('5133', 'QA主管', '27');
INSERT INTO `qs_hotword` VALUES ('5142', '配货员', '69');
INSERT INTO `qs_hotword` VALUES ('5145', '宿舍管理员', '28');
INSERT INTO `qs_hotword` VALUES ('5146', '校长助理', '63');
INSERT INTO `qs_hotword` VALUES ('5147', '专职班主任', '26');
INSERT INTO `qs_hotword` VALUES ('5149', '招生人员', '14');
INSERT INTO `qs_hotword` VALUES ('5151', '油漆工', '85');
INSERT INTO `qs_hotword` VALUES ('5155', '业务部经理', '68');
INSERT INTO `qs_hotword` VALUES ('5157', '实习操盘手', '16');
INSERT INTO `qs_hotword` VALUES ('5159', '项目申报专员', '57');
INSERT INTO `qs_hotword` VALUES ('5170', '团购销售经理', '19');
INSERT INTO `qs_hotword` VALUES ('5171', '业务拓展主管', '16');
INSERT INTO `qs_hotword` VALUES ('5178', '推广经理', '80');
INSERT INTO `qs_hotword` VALUES ('5191', '教务人员', '16');
INSERT INTO `qs_hotword` VALUES ('5195', '结算员', '39');
INSERT INTO `qs_hotword` VALUES ('5198', '装修工程师', '84');
INSERT INTO `qs_hotword` VALUES ('5200', 'C开发工程师', '22');
INSERT INTO `qs_hotword` VALUES ('5202', '工人', '31');
INSERT INTO `qs_hotword` VALUES ('5212', '社区服务专员', '16');
INSERT INTO `qs_hotword` VALUES ('5213', '品控主管', '35');
INSERT INTO `qs_hotword` VALUES ('5214', '公关专员', '116');
INSERT INTO `qs_hotword` VALUES ('5217', '店面收银员', '11');
INSERT INTO `qs_hotword` VALUES ('5218', '工程预算', '16');
INSERT INTO `qs_hotword` VALUES ('5224', '分公司经理', '209');
INSERT INTO `qs_hotword` VALUES ('5226', '高中化学老师', '16');
INSERT INTO `qs_hotword` VALUES ('5227', '小学语文老师', '18');
INSERT INTO `qs_hotword` VALUES ('5235', '铣工', '81');
INSERT INTO `qs_hotword` VALUES ('5250', 'SEO优化', '28');
INSERT INTO `qs_hotword` VALUES ('5258', '见习管理', '15');
INSERT INTO `qs_hotword` VALUES ('5264', '管理培训生', '140');
INSERT INTO `qs_hotword` VALUES ('5267', '订单员', '18');
INSERT INTO `qs_hotword` VALUES ('5273', '区域销售', '113');
INSERT INTO `qs_hotword` VALUES ('5274', '项目管理人员', '11');
INSERT INTO `qs_hotword` VALUES ('5287', '私人教练', '31');
INSERT INTO `qs_hotword` VALUES ('5298', '专业工程师', '16');
INSERT INTO `qs_hotword` VALUES ('5302', '网站技术', '22');
INSERT INTO `qs_hotword` VALUES ('5304', '客服部经理', '71');
INSERT INTO `qs_hotword` VALUES ('5308', '销售业务经理', '25');
INSERT INTO `qs_hotword` VALUES ('5313', '物业管理员', '65');
INSERT INTO `qs_hotword` VALUES ('5321', '行政出纳', '19');
INSERT INTO `qs_hotword` VALUES ('5323', '注册造价师', '26');
INSERT INTO `qs_hotword` VALUES ('5324', '广告销售代表', '14');
INSERT INTO `qs_hotword` VALUES ('5325', '数控车工', '54');
INSERT INTO `qs_hotword` VALUES ('5328', '销售前台', '25');
INSERT INTO `qs_hotword` VALUES ('5358', '机械检验员', '14');
INSERT INTO `qs_hotword` VALUES ('5363', '工业工程师', '26');
INSERT INTO `qs_hotword` VALUES ('5366', '前台咨询', '19');
INSERT INTO `qs_hotword` VALUES ('5368', '服装导购', '27');
INSERT INTO `qs_hotword` VALUES ('5374', '仓库理货员', '78');
INSERT INTO `qs_hotword` VALUES ('5376', '店面销售顾问', '15');
INSERT INTO `qs_hotword` VALUES ('5377', '人力行政主管', '15');
INSERT INTO `qs_hotword` VALUES ('5378', '陈列督导', '25');
INSERT INTO `qs_hotword` VALUES ('5383', '网店客服', '48');
INSERT INTO `qs_hotword` VALUES ('5395', '安装预算员', '87');
INSERT INTO `qs_hotword` VALUES ('5398', '营销策划', '161');
INSERT INTO `qs_hotword` VALUES ('5401', '产品销售', '22');
INSERT INTO `qs_hotword` VALUES ('5419', '调试员', '26');
INSERT INTO `qs_hotword` VALUES ('5420', '人力行政总监', '19');
INSERT INTO `qs_hotword` VALUES ('5421', '质检人员', '20');
INSERT INTO `qs_hotword` VALUES ('5426', '商场总经理', '18');
INSERT INTO `qs_hotword` VALUES ('5434', '管理处主任', '12');
INSERT INTO `qs_hotword` VALUES ('5437', '保安主管', '55');
INSERT INTO `qs_hotword` VALUES ('5459', '客户服务经理', '33');
INSERT INTO `qs_hotword` VALUES ('5461', '课程销售', '29');
INSERT INTO `qs_hotword` VALUES ('5469', '技术文员', '17');
INSERT INTO `qs_hotword` VALUES ('5470', '生产助理', '77');
INSERT INTO `qs_hotword` VALUES ('5476', '工程项目主管', '16');
INSERT INTO `qs_hotword` VALUES ('5479', '水处理工程师', '26');
INSERT INTO `qs_hotword` VALUES ('5483', '工程部资料员', '46');
INSERT INTO `qs_hotword` VALUES ('5485', 'C++工程师', '39');
INSERT INTO `qs_hotword` VALUES ('5486', '品控员', '34');
INSERT INTO `qs_hotword` VALUES ('5489', '配送人员', '15');
INSERT INTO `qs_hotword` VALUES ('5490', '证券经纪人', '59');
INSERT INTO `qs_hotword` VALUES ('5500', '薪酬主管', '20');
INSERT INTO `qs_hotword` VALUES ('5501', '省区招商经理', '65');
INSERT INTO `qs_hotword` VALUES ('5505', 'JAVA讲师', '20');
INSERT INTO `qs_hotword` VALUES ('5506', '焊接工', '26');
INSERT INTO `qs_hotword` VALUES ('5525', '留学咨询顾问', '85');
INSERT INTO `qs_hotword` VALUES ('5528', '美容督导', '65');
INSERT INTO `qs_hotword` VALUES ('5539', '文员兼出纳', '10');
INSERT INTO `qs_hotword` VALUES ('5540', '管理人员', '11');
INSERT INTO `qs_hotword` VALUES ('5541', '空调维修工', '20');
INSERT INTO `qs_hotword` VALUES ('5556', '外科医师', '13');
INSERT INTO `qs_hotword` VALUES ('5557', '专卖店导购', '73');
INSERT INTO `qs_hotword` VALUES ('5558', '外协专员', '10');
INSERT INTO `qs_hotword` VALUES ('5560', '招商运营经理', '11');
INSERT INTO `qs_hotword` VALUES ('5562', '试乘试驾专员', '10');
INSERT INTO `qs_hotword` VALUES ('5563', '招商总监', '85');
INSERT INTO `qs_hotword` VALUES ('5564', '物业总经理', '17');
INSERT INTO `qs_hotword` VALUES ('5566', '材料主管', '11');
INSERT INTO `qs_hotword` VALUES ('5572', '家装设计师', '87');
INSERT INTO `qs_hotword` VALUES ('5578', '工程造价师', '30');
INSERT INTO `qs_hotword` VALUES ('5579', '安装造价师', '100');
INSERT INTO `qs_hotword` VALUES ('5580', '土建造价师', '111');
INSERT INTO `qs_hotword` VALUES ('5583', '招标专员', '39');
INSERT INTO `qs_hotword` VALUES ('5587', '土建预算主管', '14');
INSERT INTO `qs_hotword` VALUES ('5592', '总监助理', '90');
INSERT INTO `qs_hotword` VALUES ('5598', '团购业务员', '71');
INSERT INTO `qs_hotword` VALUES ('5600', '行李员', '47');
INSERT INTO `qs_hotword` VALUES ('5615', '招商部经理', '76');
INSERT INTO `qs_hotword` VALUES ('5618', '展厅经理', '42');
INSERT INTO `qs_hotword` VALUES ('5626', '教育顾问', '65');
INSERT INTO `qs_hotword` VALUES ('5634', '驻外代表', '16');
INSERT INTO `qs_hotword` VALUES ('5636', '网络销售客服', '27');
INSERT INTO `qs_hotword` VALUES ('5640', '审计助理', '71');
INSERT INTO `qs_hotword` VALUES ('5643', '招商文员', '19');
INSERT INTO `qs_hotword` VALUES ('5644', '维保工程师', '10');
INSERT INTO `qs_hotword` VALUES ('5645', '办事处经理', '222');
INSERT INTO `qs_hotword` VALUES ('5650', '大区销售经理', '448');
INSERT INTO `qs_hotword` VALUES ('5662', '渠道部经理', '34');
INSERT INTO `qs_hotword` VALUES ('5667', '行政人事文员', '36');
INSERT INTO `qs_hotword` VALUES ('5669', '营销', '10');
INSERT INTO `qs_hotword` VALUES ('5670', 'IT主管', '41');
INSERT INTO `qs_hotword` VALUES ('5672', '企划总监', '90');
INSERT INTO `qs_hotword` VALUES ('5676', '工程施工人员', '16');
INSERT INTO `qs_hotword` VALUES ('5682', '服装搭配师', '16');
INSERT INTO `qs_hotword` VALUES ('5683', '人事管理岗', '11');
INSERT INTO `qs_hotword` VALUES ('5684', '数码设计师', '17');
INSERT INTO `qs_hotword` VALUES ('5689', '物业公司经理', '15');
INSERT INTO `qs_hotword` VALUES ('5693', '测试员', '55');
INSERT INTO `qs_hotword` VALUES ('5694', '专卖店导购员', '24');
INSERT INTO `qs_hotword` VALUES ('5696', '会计核算岗', '10');
INSERT INTO `qs_hotword` VALUES ('5702', '商业会计', '27');
INSERT INTO `qs_hotword` VALUES ('5704', '地区经理', '245');
INSERT INTO `qs_hotword` VALUES ('5712', '杂志美编', '13');
INSERT INTO `qs_hotword` VALUES ('5718', '大客户主管', '27');
INSERT INTO `qs_hotword` VALUES ('5719', '验货员', '17');
INSERT INTO `qs_hotword` VALUES ('5726', '绩效专员', '79');
INSERT INTO `qs_hotword` VALUES ('5728', '美术设计师', '16');
INSERT INTO `qs_hotword` VALUES ('5738', '焊接工程师', '89');
INSERT INTO `qs_hotword` VALUES ('5743', '保洁', '180');
INSERT INTO `qs_hotword` VALUES ('5746', '日语教师', '23');
INSERT INTO `qs_hotword` VALUES ('5758', '方案设计师', '50');
INSERT INTO `qs_hotword` VALUES ('5760', '预算部经理', '48');
INSERT INTO `qs_hotword` VALUES ('5763', '仓库保管', '25');
INSERT INTO `qs_hotword` VALUES ('5767', '商品专员', '114');
INSERT INTO `qs_hotword` VALUES ('5776', '专案经理', '33');
INSERT INTO `qs_hotword` VALUES ('5777', '高中生物教师', '25');
INSERT INTO `qs_hotword` VALUES ('5778', '高中地理教师', '20');
INSERT INTO `qs_hotword` VALUES ('5779', '自控工程师', '49');
INSERT INTO `qs_hotword` VALUES ('5780', '工程部长', '22');
INSERT INTO `qs_hotword` VALUES ('5785', '销售技术支持', '15');
INSERT INTO `qs_hotword` VALUES ('5786', '操盘手学员', '23');
INSERT INTO `qs_hotword` VALUES ('5799', '市场部总监', '42');
INSERT INTO `qs_hotword` VALUES ('5806', '销售储备干部', '79');
INSERT INTO `qs_hotword` VALUES ('5808', '实习店长', '14');
INSERT INTO `qs_hotword` VALUES ('5811', '保管员', '69');
INSERT INTO `qs_hotword` VALUES ('5822', '运营管理', '25');
INSERT INTO `qs_hotword` VALUES ('5824', '导游', '82');
INSERT INTO `qs_hotword` VALUES ('5831', '办公室主管', '17');
INSERT INTO `qs_hotword` VALUES ('5832', '兼职英语老师', '10');
INSERT INTO `qs_hotword` VALUES ('5834', '专卖店店员', '81');
INSERT INTO `qs_hotword` VALUES ('5835', '摄像师', '51');
INSERT INTO `qs_hotword` VALUES ('5853', '品牌推广', '16');
INSERT INTO `qs_hotword` VALUES ('5854', '终端经理', '21');
INSERT INTO `qs_hotword` VALUES ('5860', '回访专员', '22');
INSERT INTO `qs_hotword` VALUES ('5868', '办公室人员', '25');
INSERT INTO `qs_hotword` VALUES ('5869', '专卖店店长', '144');
INSERT INTO `qs_hotword` VALUES ('5870', '店面导购员', '10');
INSERT INTO `qs_hotword` VALUES ('5882', '教务助理', '57');
INSERT INTO `qs_hotword` VALUES ('5884', '电气维修工', '11');
INSERT INTO `qs_hotword` VALUES ('5889', '水台', '10');
INSERT INTO `qs_hotword` VALUES ('5893', '弱电技术员', '10');
INSERT INTO `qs_hotword` VALUES ('5900', '教育咨询主管', '10');
INSERT INTO `qs_hotword` VALUES ('5904', '操作工人', '12');
INSERT INTO `qs_hotword` VALUES ('5906', '店面经理', '140');
INSERT INTO `qs_hotword` VALUES ('5915', '线切割', '20');
INSERT INTO `qs_hotword` VALUES ('5916', '软件销售代表', '53');
INSERT INTO `qs_hotword` VALUES ('5919', '保洁人员', '26');
INSERT INTO `qs_hotword` VALUES ('5924', '高级商务代表', '42');
INSERT INTO `qs_hotword` VALUES ('5945', '分校长', '18');
INSERT INTO `qs_hotword` VALUES ('5948', '美术教师', '24');
INSERT INTO `qs_hotword` VALUES ('5949', '市场业务员', '27');
INSERT INTO `qs_hotword` VALUES ('5954', '镗工', '18');
INSERT INTO `qs_hotword` VALUES ('5958', '平面设计美工', '17');
INSERT INTO `qs_hotword` VALUES ('5973', '普通工人', '18');
INSERT INTO `qs_hotword` VALUES ('5974', '汽车维修技师', '14');
INSERT INTO `qs_hotword` VALUES ('5978', '叉车工', '103');
INSERT INTO `qs_hotword` VALUES ('5980', '副经理', '11');
INSERT INTO `qs_hotword` VALUES ('5981', '初中英语老师', '16');
INSERT INTO `qs_hotword` VALUES ('5994', '门店店长', '59');
INSERT INTO `qs_hotword` VALUES ('6004', '人力资源部长', '22');
INSERT INTO `qs_hotword` VALUES ('6008', '装配电工', '31');
INSERT INTO `qs_hotword` VALUES ('6011', '工程副经理', '26');
INSERT INTO `qs_hotword` VALUES ('6015', '工程副总经理', '29');
INSERT INTO `qs_hotword` VALUES ('6018', '水暖预算员', '20');
INSERT INTO `qs_hotword` VALUES ('6019', '工程内业', '34');
INSERT INTO `qs_hotword` VALUES ('6021', '汽车修理工', '61');
INSERT INTO `qs_hotword` VALUES ('6027', '酒水员', '14');
INSERT INTO `qs_hotword` VALUES ('6028', '副总', '20');
INSERT INTO `qs_hotword` VALUES ('6036', '医生助理', '48');
INSERT INTO `qs_hotword` VALUES ('6038', '施工技术员', '14');
INSERT INTO `qs_hotword` VALUES ('6040', '数学教师', '51');
INSERT INTO `qs_hotword` VALUES ('6041', '物理教师', '24');
INSERT INTO `qs_hotword` VALUES ('6042', '高级文秘', '42');
INSERT INTO `qs_hotword` VALUES ('6043', '化学教师', '22');
INSERT INTO `qs_hotword` VALUES ('6047', '会务主管', '12');
INSERT INTO `qs_hotword` VALUES ('6048', '分公司出纳', '11');
INSERT INTO `qs_hotword` VALUES ('6058', '礼服师', '22');
INSERT INTO `qs_hotword` VALUES ('6062', '前台收银员', '29');
INSERT INTO `qs_hotword` VALUES ('6064', '商超经理', '11');
INSERT INTO `qs_hotword` VALUES ('6066', '企业管理', '15');
INSERT INTO `qs_hotword` VALUES ('6090', '记账会计', '29');
INSERT INTO `qs_hotword` VALUES ('6094', '案场经理', '64');
INSERT INTO `qs_hotword` VALUES ('6102', '监理员', '32');
INSERT INTO `qs_hotword` VALUES ('6106', '分公司负责人', '16');
INSERT INTO `qs_hotword` VALUES ('6110', '吧台', '12');
INSERT INTO `qs_hotword` VALUES ('6111', '淘宝销售客服', '17');
INSERT INTO `qs_hotword` VALUES ('6114', '淘宝售后客服', '26');
INSERT INTO `qs_hotword` VALUES ('6118', '初级评估员', '13');
INSERT INTO `qs_hotword` VALUES ('6120', '高级评估员', '13');
INSERT INTO `qs_hotword` VALUES ('6125', '总帐会计', '73');
INSERT INTO `qs_hotword` VALUES ('6127', '设备管理员', '72');
INSERT INTO `qs_hotword` VALUES ('6130', '楼层主管', '33');
INSERT INTO `qs_hotword` VALUES ('6135', '办公室内勤', '51');
INSERT INTO `qs_hotword` VALUES ('6147', '服务顾问', '159');
INSERT INTO `qs_hotword` VALUES ('6153', '人力资源主任', '14');
INSERT INTO `qs_hotword` VALUES ('6163', '分店经理', '23');
INSERT INTO `qs_hotword` VALUES ('6164', '工长', '19');
INSERT INTO `qs_hotword` VALUES ('6165', '铆工', '33');
INSERT INTO `qs_hotword` VALUES ('6178', '集团财务经理', '11');
INSERT INTO `qs_hotword` VALUES ('6182', '防损员', '71');
INSERT INTO `qs_hotword` VALUES ('6185', '平面设计总监', '41');
INSERT INTO `qs_hotword` VALUES ('6189', 'KA业代', '17');
INSERT INTO `qs_hotword` VALUES ('6197', '西餐厅服务员', '39');
INSERT INTO `qs_hotword` VALUES ('6198', '采购内勤', '24');
INSERT INTO `qs_hotword` VALUES ('6202', '磨工', '15');
INSERT INTO `qs_hotword` VALUES ('6204', '英语编辑', '28');
INSERT INTO `qs_hotword` VALUES ('6211', '钻工', '10');
INSERT INTO `qs_hotword` VALUES ('6216', '生产部长', '33');
INSERT INTO `qs_hotword` VALUES ('6219', '财务统计', '29');
INSERT INTO `qs_hotword` VALUES ('6223', '专职安全员', '11');
INSERT INTO `qs_hotword` VALUES ('6230', '网络营销总监', '17');
INSERT INTO `qs_hotword` VALUES ('6232', '门店销售', '29');
INSERT INTO `qs_hotword` VALUES ('6240', '销售业务主管', '11');
INSERT INTO `qs_hotword` VALUES ('6243', '设备技术员', '30');
INSERT INTO `qs_hotword` VALUES ('6246', '软件实习生', '15');
INSERT INTO `qs_hotword` VALUES ('6260', '配送专员', '16');
INSERT INTO `qs_hotword` VALUES ('6266', '剧情策划', '12');
INSERT INTO `qs_hotword` VALUES ('6277', '文案设计', '13');
INSERT INTO `qs_hotword` VALUES ('6279', '成本合约经理', '10');
INSERT INTO `qs_hotword` VALUES ('6293', '公关', '13');
INSERT INTO `qs_hotword` VALUES ('6314', '餐饮经理', '28');
INSERT INTO `qs_hotword` VALUES ('6315', '幼教', '14');
INSERT INTO `qs_hotword` VALUES ('6316', '网络咨询顾问', '18');
INSERT INTO `qs_hotword` VALUES ('6319', '主管助理', '24');
INSERT INTO `qs_hotword` VALUES ('6324', '店面营业员', '20');
INSERT INTO `qs_hotword` VALUES ('6325', '客户顾问', '85');
INSERT INTO `qs_hotword` VALUES ('6329', '电话咨询员', '36');
INSERT INTO `qs_hotword` VALUES ('6340', '托福教师', '11');
INSERT INTO `qs_hotword` VALUES ('6350', '配送司机', '43');
INSERT INTO `qs_hotword` VALUES ('6360', '车间工人', '29');
INSERT INTO `qs_hotword` VALUES ('6362', '区域业务员', '14');
INSERT INTO `qs_hotword` VALUES ('6365', '安全管理员', '49');
INSERT INTO `qs_hotword` VALUES ('6374', '装修预算员', '11');
INSERT INTO `qs_hotword` VALUES ('6378', '成本主管', '37');
INSERT INTO `qs_hotword` VALUES ('6381', '银保客户经理', '41');
INSERT INTO `qs_hotword` VALUES ('6386', '物业主任', '17');
INSERT INTO `qs_hotword` VALUES ('6394', '医学顾问', '36');
INSERT INTO `qs_hotword` VALUES ('6399', '销售业务代表', '37');
INSERT INTO `qs_hotword` VALUES ('6400', '作业员', '21');
INSERT INTO `qs_hotword` VALUES ('6401', '技术专员', '33');
INSERT INTO `qs_hotword` VALUES ('6416', '营业经理', '37');
INSERT INTO `qs_hotword` VALUES ('6423', '水吧服务员', '12');
INSERT INTO `qs_hotword` VALUES ('6430', '市场活动专员', '55');
INSERT INTO `qs_hotword` VALUES ('6432', '财务部-会计', '11');
INSERT INTO `qs_hotword` VALUES ('6443', '融资部经理', '13');
INSERT INTO `qs_hotword` VALUES ('6445', '更夫', '33');
INSERT INTO `qs_hotword` VALUES ('6447', '助理建筑师', '21');
INSERT INTO `qs_hotword` VALUES ('6457', '签约专员', '14');
INSERT INTO `qs_hotword` VALUES ('6458', '餐厅领班', '28');
INSERT INTO `qs_hotword` VALUES ('6464', '给排水设计师', '45');
INSERT INTO `qs_hotword` VALUES ('6466', '成本主任', '23');
INSERT INTO `qs_hotword` VALUES ('6469', '人事', '39');
INSERT INTO `qs_hotword` VALUES ('6472', '园林工程师', '77');
INSERT INTO `qs_hotword` VALUES ('6497', '迎宾', '52');
INSERT INTO `qs_hotword` VALUES ('6501', '资深留学顾问', '23');
INSERT INTO `qs_hotword` VALUES ('6506', '会议策划', '10');
INSERT INTO `qs_hotword` VALUES ('6508', '教师', '56');
INSERT INTO `qs_hotword` VALUES ('6511', '地区客服', '19');
INSERT INTO `qs_hotword` VALUES ('6514', '蒙氏教师', '13');
INSERT INTO `qs_hotword` VALUES ('6517', '保育员', '30');
INSERT INTO `qs_hotword` VALUES ('6519', '音乐教师', '11');
INSERT INTO `qs_hotword` VALUES ('6521', '美容院院长', '36');
INSERT INTO `qs_hotword` VALUES ('6525', '暖通主管', '13');
INSERT INTO `qs_hotword` VALUES ('6529', '护理师', '10');
INSERT INTO `qs_hotword` VALUES ('6532', '测量工程师', '49');
INSERT INTO `qs_hotword` VALUES ('6544', '保洁经理', '22');
INSERT INTO `qs_hotword` VALUES ('6545', '电话招商专员', '25');
INSERT INTO `qs_hotword` VALUES ('6548', '商场经理', '18');
INSERT INTO `qs_hotword` VALUES ('6554', '市场部业务员', '24');
INSERT INTO `qs_hotword` VALUES ('6557', '兼职业务员', '51');
INSERT INTO `qs_hotword` VALUES ('6565', '渠道拓展专员', '28');
INSERT INTO `qs_hotword` VALUES ('6571', '销售秘书', '69');
INSERT INTO `qs_hotword` VALUES ('6575', '总监理工程师', '31');
INSERT INTO `qs_hotword` VALUES ('6581', '信息员', '87');
INSERT INTO `qs_hotword` VALUES ('6582', '投资理财顾问', '64');
INSERT INTO `qs_hotword` VALUES ('6594', '钣金中工', '14');
INSERT INTO `qs_hotword` VALUES ('6595', '健康专员', '10');
INSERT INTO `qs_hotword` VALUES ('6596', '治疗室护士', '18');
INSERT INTO `qs_hotword` VALUES ('6602', '医学检验员', '10');
INSERT INTO `qs_hotword` VALUES ('6607', '调度', '20');
INSERT INTO `qs_hotword` VALUES ('6615', '项目负责人', '35');
INSERT INTO `qs_hotword` VALUES ('6622', '陈列专员', '78');
INSERT INTO `qs_hotword` VALUES ('6631', '项目副经理', '17');
INSERT INTO `qs_hotword` VALUES ('6632', '测量员', '40');
INSERT INTO `qs_hotword` VALUES ('6641', '网络优化', '15');
INSERT INTO `qs_hotword` VALUES ('6647', '会务经理', '24');
INSERT INTO `qs_hotword` VALUES ('6648', '品管员', '59');
INSERT INTO `qs_hotword` VALUES ('6663', '咨询经理', '29');
INSERT INTO `qs_hotword` VALUES ('6688', '展厅接待', '25');
INSERT INTO `qs_hotword` VALUES ('6705', '质量部经理', '35');
INSERT INTO `qs_hotword` VALUES ('6707', '信息主管', '19');
INSERT INTO `qs_hotword` VALUES ('6708', '水电预算员', '26');
INSERT INTO `qs_hotword` VALUES ('6710', '专利代理人', '47');
INSERT INTO `qs_hotword` VALUES ('6711', '总裁办秘书', '30');
INSERT INTO `qs_hotword` VALUES ('6725', '工程会计', '13');
INSERT INTO `qs_hotword` VALUES ('6729', '财务部长', '35');
INSERT INTO `qs_hotword` VALUES ('6730', '现场施工员', '11');
INSERT INTO `qs_hotword` VALUES ('6731', '区域专员', '15');
INSERT INTO `qs_hotword` VALUES ('6736', '经营副总', '13');
INSERT INTO `qs_hotword` VALUES ('6739', '绿化主管', '10');
INSERT INTO `qs_hotword` VALUES ('6740', '销售部长', '24');
INSERT INTO `qs_hotword` VALUES ('6745', '精装修设计师', '16');
INSERT INTO `qs_hotword` VALUES ('6748', '造价员', '96');
INSERT INTO `qs_hotword` VALUES ('6756', '售后前台主管', '10');
INSERT INTO `qs_hotword` VALUES ('6757', '维修员', '38');
INSERT INTO `qs_hotword` VALUES ('6761', '保险专员', '28');
INSERT INTO `qs_hotword` VALUES ('6762', '家居顾问', '52');
INSERT INTO `qs_hotword` VALUES ('6774', '安装工', '56');
INSERT INTO `qs_hotword` VALUES ('6775', '软件销售人员', '13');
INSERT INTO `qs_hotword` VALUES ('6779', '技术负责人', '43');
INSERT INTO `qs_hotword` VALUES ('6784', '设计员', '49');
INSERT INTO `qs_hotword` VALUES ('6786', '保安队长', '97');
INSERT INTO `qs_hotword` VALUES ('6792', '美术老师', '19');
INSERT INTO `qs_hotword` VALUES ('6797', '区域产品经理', '17');
INSERT INTO `qs_hotword` VALUES ('6799', '保安队员', '10');
INSERT INTO `qs_hotword` VALUES ('6802', '维修人员', '32');
INSERT INTO `qs_hotword` VALUES ('6806', '采购总监', '50');
INSERT INTO `qs_hotword` VALUES ('6813', '人力资源总监', '282');
INSERT INTO `qs_hotword` VALUES ('6816', '绿化工', '19');
INSERT INTO `qs_hotword` VALUES ('6817', '技术总监助理', '10');
INSERT INTO `qs_hotword` VALUES ('6825', '前台助理', '19');
INSERT INTO `qs_hotword` VALUES ('6826', '优秀设计师', '32');
INSERT INTO `qs_hotword` VALUES ('6830', '测试人员', '17');
INSERT INTO `qs_hotword` VALUES ('6831', '人力行政经理', '16');
INSERT INTO `qs_hotword` VALUES ('6835', '部门经理助理', '18');
INSERT INTO `qs_hotword` VALUES ('6843', '舞蹈老师', '15');
INSERT INTO `qs_hotword` VALUES ('6863', '汽车钣金工', '16');
INSERT INTO `qs_hotword` VALUES ('6865', '法律顾问', '27');
INSERT INTO `qs_hotword` VALUES ('6874', '操作员', '50');
INSERT INTO `qs_hotword` VALUES ('6876', '客服员', '28');
INSERT INTO `qs_hotword` VALUES ('6889', '机电设计师', '29');
INSERT INTO `qs_hotword` VALUES ('6891', '工程总监', '112');
INSERT INTO `qs_hotword` VALUES ('6892', '监理工程师', '45');
INSERT INTO `qs_hotword` VALUES ('6897', '小学英语教师', '32');
INSERT INTO `qs_hotword` VALUES ('6898', '小学语文教师', '17');
INSERT INTO `qs_hotword` VALUES ('6902', '会务专员', '33');
INSERT INTO `qs_hotword` VALUES ('6904', '高中政治教师', '17');
INSERT INTO `qs_hotword` VALUES ('6905', '护士长', '72');
INSERT INTO `qs_hotword` VALUES ('6914', '医学专家', '14');
INSERT INTO `qs_hotword` VALUES ('6917', '会议主持', '10');
INSERT INTO `qs_hotword` VALUES ('6918', '网店美工', '44');
INSERT INTO `qs_hotword` VALUES ('6922', 'OTC代表', '194');
INSERT INTO `qs_hotword` VALUES ('6925', '搬运工', '68');
INSERT INTO `qs_hotword` VALUES ('6930', '校长', '45');
INSERT INTO `qs_hotword` VALUES ('6939', '模特', '40');
INSERT INTO `qs_hotword` VALUES ('6940', '员工关系专员', '31');
INSERT INTO `qs_hotword` VALUES ('6953', '总工', '41');
INSERT INTO `qs_hotword` VALUES ('6954', '电气预算员', '26');
INSERT INTO `qs_hotword` VALUES ('6963', '材料采购员', '36');
INSERT INTO `qs_hotword` VALUES ('6964', '工程副总', '57');
INSERT INTO `qs_hotword` VALUES ('6968', '砧板', '19');
INSERT INTO `qs_hotword` VALUES ('6969', '迎宾员', '70');
INSERT INTO `qs_hotword` VALUES ('6971', '吧台员', '24');
INSERT INTO `qs_hotword` VALUES ('6979', '收款员', '30');
INSERT INTO `qs_hotword` VALUES ('6986', '电话销售员', '73');
INSERT INTO `qs_hotword` VALUES ('6987', '家具设计师', '31');
INSERT INTO `qs_hotword` VALUES ('6988', '展览设计师', '63');
INSERT INTO `qs_hotword` VALUES ('6994', '市场研究员', '30');
INSERT INTO `qs_hotword` VALUES ('7000', '生产操作员', '19');
INSERT INTO `qs_hotword` VALUES ('7005', '计时工', '10');
INSERT INTO `qs_hotword` VALUES ('7014', '客服部主管', '25');
INSERT INTO `qs_hotword` VALUES ('7020', '人资助理', '12');
INSERT INTO `qs_hotword` VALUES ('7023', '电话招商', '12');
INSERT INTO `qs_hotword` VALUES ('7024', '电话营销代表', '39');
INSERT INTO `qs_hotword` VALUES ('7035', '歌手', '25');
INSERT INTO `qs_hotword` VALUES ('7036', '园艺师', '15');
INSERT INTO `qs_hotword` VALUES ('7044', '面点师', '67');
INSERT INTO `qs_hotword` VALUES ('7049', '学员', '14');
INSERT INTO `qs_hotword` VALUES ('7052', '测试技术员', '39');
INSERT INTO `qs_hotword` VALUES ('7058', '电脑操作员', '15');
INSERT INTO `qs_hotword` VALUES ('7059', '前厅主管', '40');
INSERT INTO `qs_hotword` VALUES ('7062', '前厅领班', '18');
INSERT INTO `qs_hotword` VALUES ('7069', '打字员', '12');
INSERT INTO `qs_hotword` VALUES ('7078', '市场调研员', '42');
INSERT INTO `qs_hotword` VALUES ('7087', '司炉工', '48');
INSERT INTO `qs_hotword` VALUES ('7096', 'IT工程师', '132');
INSERT INTO `qs_hotword` VALUES ('7105', '省级销售经理', '60');
INSERT INTO `qs_hotword` VALUES ('7109', '运营部经理', '44');
INSERT INTO `qs_hotword` VALUES ('7116', '客服主任', '39');
INSERT INTO `qs_hotword` VALUES ('7117', '生产副经理', '10');
INSERT INTO `qs_hotword` VALUES ('7118', '制单员', '20');
INSERT INTO `qs_hotword` VALUES ('7120', '公关部经理', '26');
INSERT INTO `qs_hotword` VALUES ('7122', '营运主管', '109');
INSERT INTO `qs_hotword` VALUES ('7124', '质量主管', '58');
INSERT INTO `qs_hotword` VALUES ('7125', '计划主管', '19');
INSERT INTO `qs_hotword` VALUES ('7128', '工艺技术员', '51');
INSERT INTO `qs_hotword` VALUES ('7136', '直营店店长', '36');
INSERT INTO `qs_hotword` VALUES ('7138', '工程维修', '18');
INSERT INTO `qs_hotword` VALUES ('7142', '监控员', '38');
INSERT INTO `qs_hotword` VALUES ('7148', '省区内勤', '17');
INSERT INTO `qs_hotword` VALUES ('7150', '商场营业员', '21');
INSERT INTO `qs_hotword` VALUES ('7155', '内勤文员', '27');
INSERT INTO `qs_hotword` VALUES ('7156', '安管队长', '14');
INSERT INTO `qs_hotword` VALUES ('7158', 'KA主管', '48');
INSERT INTO `qs_hotword` VALUES ('7161', '安管员', '21');
INSERT INTO `qs_hotword` VALUES ('7164', '仓库文员', '72');
INSERT INTO `qs_hotword` VALUES ('7172', '商场导购', '31');
INSERT INTO `qs_hotword` VALUES ('7178', '水电维修工', '59');
INSERT INTO `qs_hotword` VALUES ('7190', '行政客服', '23');
INSERT INTO `qs_hotword` VALUES ('7192', '汽车销售', '29');
INSERT INTO `qs_hotword` VALUES ('7207', '审计', '37');
INSERT INTO `qs_hotword` VALUES ('7211', '兼职顾问', '20');
INSERT INTO `qs_hotword` VALUES ('7212', '区域代理商', '38');
INSERT INTO `qs_hotword` VALUES ('7215', '校区总监', '34');
INSERT INTO `qs_hotword` VALUES ('7220', '软件项目经理', '85');
INSERT INTO `qs_hotword` VALUES ('7224', '电话营销顾问', '18');
INSERT INTO `qs_hotword` VALUES ('7229', '渠道销售人员', '20');
INSERT INTO `qs_hotword` VALUES ('7230', '西餐厨师', '34');
INSERT INTO `qs_hotword` VALUES ('7243', '商超业务主管', '26');
INSERT INTO `qs_hotword` VALUES ('7245', '技术', '20');
INSERT INTO `qs_hotword` VALUES ('7252', '配置管理员', '27');
INSERT INTO `qs_hotword` VALUES ('7257', '办事处助理', '21');
INSERT INTO `qs_hotword` VALUES ('7261', '报建专员', '51');
INSERT INTO `qs_hotword` VALUES ('7262', '强电工程师', '33');
INSERT INTO `qs_hotword` VALUES ('7267', '招标主管', '45');
INSERT INTO `qs_hotword` VALUES ('7280', '轿车司机', '10');
INSERT INTO `qs_hotword` VALUES ('7299', '软装设计师', '89');
INSERT INTO `qs_hotword` VALUES ('7302', '橱柜设计师', '30');
INSERT INTO `qs_hotword` VALUES ('7304', '项目部经理', '18');
INSERT INTO `qs_hotword` VALUES ('7310', '在线咨询师', '11');
INSERT INTO `qs_hotword` VALUES ('7312', '食堂厨师', '31');
INSERT INTO `qs_hotword` VALUES ('7317', '切配', '10');
INSERT INTO `qs_hotword` VALUES ('7321', '秩序维护员', '79');
INSERT INTO `qs_hotword` VALUES ('7326', '国内销售', '21');
INSERT INTO `qs_hotword` VALUES ('7328', '市场营销代表', '23');
INSERT INTO `qs_hotword` VALUES ('7329', '客户AE', '19');
INSERT INTO `qs_hotword` VALUES ('7340', '业务经理助理', '20');
INSERT INTO `qs_hotword` VALUES ('7344', '高级经理', '28');
INSERT INTO `qs_hotword` VALUES ('7349', '招生代表', '23');
INSERT INTO `qs_hotword` VALUES ('7351', '汽车维修工', '17');
INSERT INTO `qs_hotword` VALUES ('7361', '展示设计师', '49');
INSERT INTO `qs_hotword` VALUES ('7372', '热处理工程师', '15');
INSERT INTO `qs_hotword` VALUES ('7376', '工厂厂长', '14');
INSERT INTO `qs_hotword` VALUES ('7382', '幼儿英语教师', '49');
INSERT INTO `qs_hotword` VALUES ('7386', '英语助教', '32');
INSERT INTO `qs_hotword` VALUES ('7398', '安全工程师', '94');
INSERT INTO `qs_hotword` VALUES ('7411', '市场拓展总监', '17');
INSERT INTO `qs_hotword` VALUES ('7425', '兼职英语教师', '13');
INSERT INTO `qs_hotword` VALUES ('7443', '品质检验', '11');
INSERT INTO `qs_hotword` VALUES ('7445', '机械设计员', '27');
INSERT INTO `qs_hotword` VALUES ('7447', '软件测试人员', '10');
INSERT INTO `qs_hotword` VALUES ('7455', '教务班主任', '18');
INSERT INTO `qs_hotword` VALUES ('7458', '广告创意总监', '39');
INSERT INTO `qs_hotword` VALUES ('7469', '售前技术支持', '64');
INSERT INTO `qs_hotword` VALUES ('7478', '网页设计制作', '10');
INSERT INTO `qs_hotword` VALUES ('7481', '期货经纪人', '11');
INSERT INTO `qs_hotword` VALUES ('7490', '外联部经理', '11');
INSERT INTO `qs_hotword` VALUES ('7491', '技术研发人员', '14');
INSERT INTO `qs_hotword` VALUES ('7494', '终端督导', '42');
INSERT INTO `qs_hotword` VALUES ('7500', '销售内勤主管', '17');
INSERT INTO `qs_hotword` VALUES ('7521', '电话回访员', '47');
INSERT INTO `qs_hotword` VALUES ('7522', '储备管理干部', '41');
INSERT INTO `qs_hotword` VALUES ('7523', '融资主管', '42');
INSERT INTO `qs_hotword` VALUES ('7536', '商务接待', '12');
INSERT INTO `qs_hotword` VALUES ('7538', '人事行政', '23');
INSERT INTO `qs_hotword` VALUES ('7539', '治疗护士', '11');
INSERT INTO `qs_hotword` VALUES ('7540', '区域督导', '65');
INSERT INTO `qs_hotword` VALUES ('7542', '培训老师', '31');
INSERT INTO `qs_hotword` VALUES ('7546', '黄金分析师', '80');
INSERT INTO `qs_hotword` VALUES ('7547', '总经办助理', '17');
INSERT INTO `qs_hotword` VALUES ('7548', '教学助理', '41');
INSERT INTO `qs_hotword` VALUES ('7559', '专柜导购', '13');
INSERT INTO `qs_hotword` VALUES ('7569', '资料管理员', '32');
INSERT INTO `qs_hotword` VALUES ('7579', '产品讲师', '30');
INSERT INTO `qs_hotword` VALUES ('7594', 'SQA', '10');
INSERT INTO `qs_hotword` VALUES ('7600', '嵌入式工程师', '30');
INSERT INTO `qs_hotword` VALUES ('7617', '临床销售代表', '20');
INSERT INTO `qs_hotword` VALUES ('7620', '计调', '35');
INSERT INTO `qs_hotword` VALUES ('7621', '助理策划师', '18');
INSERT INTO `qs_hotword` VALUES ('7622', '厨师长', '67');
INSERT INTO `qs_hotword` VALUES ('7623', '送货工', '10');
INSERT INTO `qs_hotword` VALUES ('7625', '省区营销总监', '16');
INSERT INTO `qs_hotword` VALUES ('7636', '项目策划专员', '10');
INSERT INTO `qs_hotword` VALUES ('7639', '物业主管', '61');
INSERT INTO `qs_hotword` VALUES ('7643', '标本接收员', '13');
INSERT INTO `qs_hotword` VALUES ('7649', '高级咨询顾问', '40');
INSERT INTO `qs_hotword` VALUES ('7655', '审计项目经理', '40');
INSERT INTO `qs_hotword` VALUES ('7661', '网站优化专员', '11');
INSERT INTO `qs_hotword` VALUES ('7667', '医务科主任', '13');
INSERT INTO `qs_hotword` VALUES ('7670', '内科医师', '17');
INSERT INTO `qs_hotword` VALUES ('7677', '媒介', '10');
INSERT INTO `qs_hotword` VALUES ('7685', '优秀店长', '13');
INSERT INTO `qs_hotword` VALUES ('7689', '质检', '58');
INSERT INTO `qs_hotword` VALUES ('7691', '包装工', '46');
INSERT INTO `qs_hotword` VALUES ('7692', '电气设计', '12');
INSERT INTO `qs_hotword` VALUES ('7693', '幕墙设计师', '29');
INSERT INTO `qs_hotword` VALUES ('7695', '仓库会计', '11');
INSERT INTO `qs_hotword` VALUES ('7699', '商品主管', '72');
INSERT INTO `qs_hotword` VALUES ('7705', '工程预算员', '51');
INSERT INTO `qs_hotword` VALUES ('7706', '零售代表', '51');
INSERT INTO `qs_hotword` VALUES ('7708', '前台行政文员', '26');
INSERT INTO `qs_hotword` VALUES ('7720', '手术室护士', '38');
INSERT INTO `qs_hotword` VALUES ('7724', '客服总监', '86');
INSERT INTO `qs_hotword` VALUES ('7734', '研发中心总监', '10');
INSERT INTO `qs_hotword` VALUES ('7736', '酒店经理', '28');
INSERT INTO `qs_hotword` VALUES ('7744', '餐厅经理', '61');
INSERT INTO `qs_hotword` VALUES ('7751', '电视编导', '12');
INSERT INTO `qs_hotword` VALUES ('7752', '电话行销', '10');
INSERT INTO `qs_hotword` VALUES ('7754', '渠道销售主管', '41');
INSERT INTO `qs_hotword` VALUES ('7755', '装修设计师', '39');
INSERT INTO `qs_hotword` VALUES ('7767', '网络维护人员', '15');
INSERT INTO `qs_hotword` VALUES ('7774', '网站建设', '17');
INSERT INTO `qs_hotword` VALUES ('7777', '文案策划专员', '36');
INSERT INTO `qs_hotword` VALUES ('7791', '医药销售经理', '30');
INSERT INTO `qs_hotword` VALUES ('7801', '工程管理', '36');
INSERT INTO `qs_hotword` VALUES ('7802', '期货居间人', '12');
INSERT INTO `qs_hotword` VALUES ('7804', '店经理', '122');
INSERT INTO `qs_hotword` VALUES ('7805', '美体师', '28');
INSERT INTO `qs_hotword` VALUES ('7817', '中级操盘手', '13');
INSERT INTO `qs_hotword` VALUES ('7818', '省级招商经理', '10');
INSERT INTO `qs_hotword` VALUES ('7819', '水暖设计师', '15');
INSERT INTO `qs_hotword` VALUES ('7821', '客户维护', '11');
INSERT INTO `qs_hotword` VALUES ('7824', '高级操盘手', '19');
INSERT INTO `qs_hotword` VALUES ('7827', '团购经理', '88');
INSERT INTO `qs_hotword` VALUES ('7829', '按揭专员', '29');
INSERT INTO `qs_hotword` VALUES ('7832', '产品策划经理', '12');
INSERT INTO `qs_hotword` VALUES ('7837', '营运总监', '98');
INSERT INTO `qs_hotword` VALUES ('7850', '财务内勤', '28');
INSERT INTO `qs_hotword` VALUES ('7852', '辅导老师', '12');
INSERT INTO `qs_hotword` VALUES ('7853', '二手房经纪人', '14');
INSERT INTO `qs_hotword` VALUES ('7864', '企业策划', '19');
INSERT INTO `qs_hotword` VALUES ('7872', '钣金技师', '62');
INSERT INTO `qs_hotword` VALUES ('7879', '喷漆技师', '22');
INSERT INTO `qs_hotword` VALUES ('7883', '运营副总', '15');
INSERT INTO `qs_hotword` VALUES ('7886', '技术副总', '19');
INSERT INTO `qs_hotword` VALUES ('7891', '网络推广人员', '28');
INSERT INTO `qs_hotword` VALUES ('7894', '网站维护', '32');
INSERT INTO `qs_hotword` VALUES ('7898', '录单员', '11');
INSERT INTO `qs_hotword` VALUES ('7901', '财会', '16');
INSERT INTO `qs_hotword` VALUES ('7903', '金融顾问', '13');
INSERT INTO `qs_hotword` VALUES ('7911', '培训工程师', '10');
INSERT INTO `qs_hotword` VALUES ('7916', '区域销售总监', '224');
INSERT INTO `qs_hotword` VALUES ('7919', '法务经理', '113');
INSERT INTO `qs_hotword` VALUES ('7937', '市场活动策划', '10');
INSERT INTO `qs_hotword` VALUES ('7938', '营业主管', '20');
INSERT INTO `qs_hotword` VALUES ('7954', '销售培训师', '24');
INSERT INTO `qs_hotword` VALUES ('7964', '外销业务员', '23');
INSERT INTO `qs_hotword` VALUES ('7974', '播音员', '18');
INSERT INTO `qs_hotword` VALUES ('7986', '电梯维保员', '14');
INSERT INTO `qs_hotword` VALUES ('7989', '商务秘书', '19');
INSERT INTO `qs_hotword` VALUES ('8003', '服装跟单', '36');
INSERT INTO `qs_hotword` VALUES ('8007', '海外销售经理', '22');
INSERT INTO `qs_hotword` VALUES ('8014', '装饰工程师', '78');
INSERT INTO `qs_hotword` VALUES ('8020', '外贸销售人员', '10');
INSERT INTO `qs_hotword` VALUES ('8023', '机修电工', '22');
INSERT INTO `qs_hotword` VALUES ('8025', '专利工程师', '40');
INSERT INTO `qs_hotword` VALUES ('8026', '健康管理师', '17');
INSERT INTO `qs_hotword` VALUES ('8033', '中文教师', '10');
INSERT INTO `qs_hotword` VALUES ('8059', '顾问', '37');
INSERT INTO `qs_hotword` VALUES ('8061', 'FAE工程师', '11');
INSERT INTO `qs_hotword` VALUES ('8067', '售后支持', '20');
INSERT INTO `qs_hotword` VALUES ('8069', '技术部主管', '15');
INSERT INTO `qs_hotword` VALUES ('8073', '电气技术员', '49');
INSERT INTO `qs_hotword` VALUES ('8074', '礼品销售经理', '13');
INSERT INTO `qs_hotword` VALUES ('8075', '机械技术员', '40');
INSERT INTO `qs_hotword` VALUES ('8078', '小区业务员', '17');
INSERT INTO `qs_hotword` VALUES ('8084', '内保', '19');
INSERT INTO `qs_hotword` VALUES ('8085', '渠道客户经理', '25');
INSERT INTO `qs_hotword` VALUES ('8089', '品质工程师', '128');
INSERT INTO `qs_hotword` VALUES ('8091', '机械制图', '10');
INSERT INTO `qs_hotword` VALUES ('8092', '生产计划', '36');
INSERT INTO `qs_hotword` VALUES ('8104', '房产顾问', '15');
INSERT INTO `qs_hotword` VALUES ('8105', '断路器工程师', '13');
INSERT INTO `qs_hotword` VALUES ('8112', '测试主管', '46');
INSERT INTO `qs_hotword` VALUES ('8119', '成本核算', '15');
INSERT INTO `qs_hotword` VALUES ('8121', '金融专员', '21');
INSERT INTO `qs_hotword` VALUES ('8141', '法务', '61');
INSERT INTO `qs_hotword` VALUES ('8143', '品管', '24');
INSERT INTO `qs_hotword` VALUES ('8146', '地区销售经理', '88');
INSERT INTO `qs_hotword` VALUES ('8151', '销售会计', '103');
INSERT INTO `qs_hotword` VALUES ('8160', '网站策划', '137');
INSERT INTO `qs_hotword` VALUES ('8175', '销售部文员', '11');
INSERT INTO `qs_hotword` VALUES ('8190', '模具设计师', '15');
INSERT INTO `qs_hotword` VALUES ('8191', '房产销售顾问', '24');
INSERT INTO `qs_hotword` VALUES ('8196', '产品设计师', '54');
INSERT INTO `qs_hotword` VALUES ('8209', '制造工程师', '32');
INSERT INTO `qs_hotword` VALUES ('8225', 'QE', '17');
INSERT INTO `qs_hotword` VALUES ('8229', '电话营销主管', '35');
INSERT INTO `qs_hotword` VALUES ('8236', '电话邀约专员', '10');
INSERT INTO `qs_hotword` VALUES ('8241', '剪辑师', '10');
INSERT INTO `qs_hotword` VALUES ('8245', '英语老师', '90');
INSERT INTO `qs_hotword` VALUES ('8247', '美术总监', '13');
INSERT INTO `qs_hotword` VALUES ('8255', '收银', '51');
INSERT INTO `qs_hotword` VALUES ('8264', '内销业务员', '21');
INSERT INTO `qs_hotword` VALUES ('8265', '信贷顾问', '20');
INSERT INTO `qs_hotword` VALUES ('8278', '生管', '29');
INSERT INTO `qs_hotword` VALUES ('8282', '投资部经理', '18');
INSERT INTO `qs_hotword` VALUES ('8283', '综合管理员', '14');
INSERT INTO `qs_hotword` VALUES ('8311', '广告设计师', '19');
INSERT INTO `qs_hotword` VALUES ('8322', '网站采编', '10');
INSERT INTO `qs_hotword` VALUES ('8324', '技术客服', '10');
INSERT INTO `qs_hotword` VALUES ('8326', '人事行政总监', '47');
INSERT INTO `qs_hotword` VALUES ('8327', '绩效考核主管', '53');
INSERT INTO `qs_hotword` VALUES ('8329', '售前顾问', '61');
INSERT INTO `qs_hotword` VALUES ('8336', '企划助理', '30');
INSERT INTO `qs_hotword` VALUES ('8337', '服装制版师', '13');
INSERT INTO `qs_hotword` VALUES ('8346', '市场运营总监', '21');
INSERT INTO `qs_hotword` VALUES ('8354', '数控操作工', '44');
INSERT INTO `qs_hotword` VALUES ('8358', '市场销售经理', '29');
INSERT INTO `qs_hotword` VALUES ('8362', '模具主管', '11');
INSERT INTO `qs_hotword` VALUES ('8370', '口腔科医生', '12');
INSERT INTO `qs_hotword` VALUES ('8373', '现场管理员', '10');
INSERT INTO `qs_hotword` VALUES ('8375', '车辆管理员', '29');
INSERT INTO `qs_hotword` VALUES ('8389', '展厅销售', '15');
INSERT INTO `qs_hotword` VALUES ('8392', '高级建筑师', '25');
INSERT INTO `qs_hotword` VALUES ('8398', '模具设计', '23');
INSERT INTO `qs_hotword` VALUES ('8410', '物流总监', '20');
INSERT INTO `qs_hotword` VALUES ('8411', '视频制作', '10');
INSERT INTO `qs_hotword` VALUES ('8416', 'UI设计', '21');
INSERT INTO `qs_hotword` VALUES ('8417', '维修技术员', '63');
INSERT INTO `qs_hotword` VALUES ('8430', '网站设计美工', '13');
INSERT INTO `qs_hotword` VALUES ('8431', '报价工程师', '39');
INSERT INTO `qs_hotword` VALUES ('8445', '市场渠道专员', '18');
INSERT INTO `qs_hotword` VALUES ('8451', '薪资专员', '12');
INSERT INTO `qs_hotword` VALUES ('8463', '设备维修工', '56');
INSERT INTO `qs_hotword` VALUES ('8465', '市场公关', '14');
INSERT INTO `qs_hotword` VALUES ('8468', 'EHS工程师', '36');
INSERT INTO `qs_hotword` VALUES ('8474', '注册税务师', '30');
INSERT INTO `qs_hotword` VALUES ('8480', '仓库统计员', '10');
INSERT INTO `qs_hotword` VALUES ('8483', '家具销售', '11');
INSERT INTO `qs_hotword` VALUES ('8490', '公司副总', '10');
INSERT INTO `qs_hotword` VALUES ('8507', '模具维修工', '16');
INSERT INTO `qs_hotword` VALUES ('8512', '计划工程师', '12');
INSERT INTO `qs_hotword` VALUES ('8515', '实验室主管', '32');
INSERT INTO `qs_hotword` VALUES ('8520', '车间主管', '84');
INSERT INTO `qs_hotword` VALUES ('8521', '生产领班', '13');
INSERT INTO `qs_hotword` VALUES ('8524', '预算会计', '15');
INSERT INTO `qs_hotword` VALUES ('8527', '推广代表', '35');
INSERT INTO `qs_hotword` VALUES ('8532', '重点客户经理', '11');
INSERT INTO `qs_hotword` VALUES ('8538', 'VIP客服', '36');
INSERT INTO `qs_hotword` VALUES ('8545', '人力资源管理', '36');
INSERT INTO `qs_hotword` VALUES ('8559', '客户内勤', '44');
INSERT INTO `qs_hotword` VALUES ('8560', '渠道管理岗', '12');
INSERT INTO `qs_hotword` VALUES ('8575', '软件开发人员', '31');
INSERT INTO `qs_hotword` VALUES ('8584', '工程部助理', '28');
INSERT INTO `qs_hotword` VALUES ('8596', '备件管理员', '18');
INSERT INTO `qs_hotword` VALUES ('8600', '小学教师', '14');
INSERT INTO `qs_hotword` VALUES ('8614', '助理店长', '14');
INSERT INTO `qs_hotword` VALUES ('8637', '拓展员', '12');
INSERT INTO `qs_hotword` VALUES ('8639', '电脑维护员', '15');
INSERT INTO `qs_hotword` VALUES ('8644', '营销业务员', '12');
INSERT INTO `qs_hotword` VALUES ('8648', '分公司会计', '20');
INSERT INTO `qs_hotword` VALUES ('8650', '设计院专员', '21');
INSERT INTO `qs_hotword` VALUES ('8656', '财务结算', '10');
INSERT INTO `qs_hotword` VALUES ('8673', '医药销售主管', '58');
INSERT INTO `qs_hotword` VALUES ('8680', '出纳会计', '15');
INSERT INTO `qs_hotword` VALUES ('8681', '产品开发专员', '17');
INSERT INTO `qs_hotword` VALUES ('8690', '运营工程师', '12');
INSERT INTO `qs_hotword` VALUES ('8695', '美导', '68');
INSERT INTO `qs_hotword` VALUES ('8697', 'UI界面设计', '18');
INSERT INTO `qs_hotword` VALUES ('8698', '物流工程师', '16');
INSERT INTO `qs_hotword` VALUES ('8699', '电话回访专员', '16');
INSERT INTO `qs_hotword` VALUES ('8706', '培训部经理', '41');
INSERT INTO `qs_hotword` VALUES ('8710', '操作主管', '16');
INSERT INTO `qs_hotword` VALUES ('8712', '包装工程师', '17');
INSERT INTO `qs_hotword` VALUES ('8715', '产品推广经理', '34');
INSERT INTO `qs_hotword` VALUES ('8721', '订单专员', '13');
INSERT INTO `qs_hotword` VALUES ('8723', '高级业务代表', '33');
INSERT INTO `qs_hotword` VALUES ('8725', '项目总工程师', '15');
INSERT INTO `qs_hotword` VALUES ('8728', '市场调查员', '28');
INSERT INTO `qs_hotword` VALUES ('8730', '花艺师', '15');
INSERT INTO `qs_hotword` VALUES ('8731', '婚礼策划师', '22');
INSERT INTO `qs_hotword` VALUES ('8734', '行政管理员', '10');
INSERT INTO `qs_hotword` VALUES ('8737', '审计部长', '10');
INSERT INTO `qs_hotword` VALUES ('8745', '会议主持人', '14');
INSERT INTO `qs_hotword` VALUES ('8752', '内容编辑', '20');
INSERT INTO `qs_hotword` VALUES ('8762', '音响师', '33');
INSERT INTO `qs_hotword` VALUES ('8769', '计划运营主管', '10');
INSERT INTO `qs_hotword` VALUES ('8772', '区域业务经理', '48');
INSERT INTO `qs_hotword` VALUES ('8777', '学术专员', '72');
INSERT INTO `qs_hotword` VALUES ('8779', '厨工', '74');
INSERT INTO `qs_hotword` VALUES ('8789', '催收专员', '19');
INSERT INTO `qs_hotword` VALUES ('8793', '后勤专员', '15');
INSERT INTO `qs_hotword` VALUES ('8803', '会计主任', '17');
INSERT INTO `qs_hotword` VALUES ('8804', '实习置业顾问', '11');
INSERT INTO `qs_hotword` VALUES ('8820', '投资项目经理', '14');
INSERT INTO `qs_hotword` VALUES ('8827', '事业部经理', '11');
INSERT INTO `qs_hotword` VALUES ('8829', '业务司机', '13');
INSERT INTO `qs_hotword` VALUES ('8834', '医务部主任', '17');
INSERT INTO `qs_hotword` VALUES ('8837', '汽车美容工', '14');
INSERT INTO `qs_hotword` VALUES ('8840', '品管主管', '12');
INSERT INTO `qs_hotword` VALUES ('8858', '店助', '21');
INSERT INTO `qs_hotword` VALUES ('8859', '网络程序员', '48');
INSERT INTO `qs_hotword` VALUES ('8863', '团购主管', '32');
INSERT INTO `qs_hotword` VALUES ('8883', '内刊编辑', '16');
INSERT INTO `qs_hotword` VALUES ('8893', '备件计划员', '10');
INSERT INTO `qs_hotword` VALUES ('8906', '助理销售', '11');
INSERT INTO `qs_hotword` VALUES ('8911', '营销储备干部', '11');
INSERT INTO `qs_hotword` VALUES ('8915', '公共关系主管', '10');
INSERT INTO `qs_hotword` VALUES ('8919', '病理技术员', '19');
INSERT INTO `qs_hotword` VALUES ('8920', '导诊', '30');
INSERT INTO `qs_hotword` VALUES ('8925', '检验技术员', '16');
INSERT INTO `qs_hotword` VALUES ('8930', '高级医药代表', '83');
INSERT INTO `qs_hotword` VALUES ('8933', '商务部经理', '23');
INSERT INTO `qs_hotword` VALUES ('8948', '主任', '12');
INSERT INTO `qs_hotword` VALUES ('8951', '会所经理', '13');
INSERT INTO `qs_hotword` VALUES ('8952', '部长', '24');
INSERT INTO `qs_hotword` VALUES ('8953', '公司文员', '22');
INSERT INTO `qs_hotword` VALUES ('8954', '财务兼行政', '11');
INSERT INTO `qs_hotword` VALUES ('8955', '网站销售专员', '13');
INSERT INTO `qs_hotword` VALUES ('8972', '员工餐厅厨师', '23');
INSERT INTO `qs_hotword` VALUES ('8973', '流动陈列员', '14');
INSERT INTO `qs_hotword` VALUES ('8977', '租赁专员', '26');
INSERT INTO `qs_hotword` VALUES ('8988', '报检员', '23');
INSERT INTO `qs_hotword` VALUES ('8997', '营运督导', '63');
INSERT INTO `qs_hotword` VALUES ('9009', 'FAE', '10');
INSERT INTO `qs_hotword` VALUES ('9010', '产品培训师', '13');
INSERT INTO `qs_hotword` VALUES ('9013', '普药销售经理', '15');
INSERT INTO `qs_hotword` VALUES ('9023', '商超促销员', '25');
INSERT INTO `qs_hotword` VALUES ('9029', '临床业务员', '26');
INSERT INTO `qs_hotword` VALUES ('9040', '区域销售人员', '28');
INSERT INTO `qs_hotword` VALUES ('9045', '总经办主任', '61');
INSERT INTO `qs_hotword` VALUES ('9050', '区域代表', '13');
INSERT INTO `qs_hotword` VALUES ('9058', '销售跟单', '32');
INSERT INTO `qs_hotword` VALUES ('9069', '电子维修工', '11');
INSERT INTO `qs_hotword` VALUES ('9072', '电源工程师', '23');
INSERT INTO `qs_hotword` VALUES ('9086', '施工监理', '24');
INSERT INTO `qs_hotword` VALUES ('9096', '海运单证', '15');
INSERT INTO `qs_hotword` VALUES ('9099', '办事处总经理', '10');
INSERT INTO `qs_hotword` VALUES ('9108', '移民顾问', '26');
INSERT INTO `qs_hotword` VALUES ('9109', '营运专员', '28');
INSERT INTO `qs_hotword` VALUES ('9138', '金融理财师', '30');
INSERT INTO `qs_hotword` VALUES ('9153', '商品经理', '41');
INSERT INTO `qs_hotword` VALUES ('9164', '执行专员', '15');
INSERT INTO `qs_hotword` VALUES ('9168', '执行督导', '10');
INSERT INTO `qs_hotword` VALUES ('9169', '土木工程师', '10');
INSERT INTO `qs_hotword` VALUES ('9178', '知识产权专员', '21');
INSERT INTO `qs_hotword` VALUES ('9184', '片区经理', '62');
INSERT INTO `qs_hotword` VALUES ('9188', '人资经理', '25');
INSERT INTO `qs_hotword` VALUES ('9189', '驻店设计师', '15');
INSERT INTO `qs_hotword` VALUES ('9195', '市场顾问', '11');
INSERT INTO `qs_hotword` VALUES ('9217', '企管经理', '15');
INSERT INTO `qs_hotword` VALUES ('9231', '市场开发经理', '33');
INSERT INTO `qs_hotword` VALUES ('9235', '物流部经理', '26');
INSERT INTO `qs_hotword` VALUES ('9245', '业务部门经理', '10');
INSERT INTO `qs_hotword` VALUES ('9251', '脚本策划', '10');
INSERT INTO `qs_hotword` VALUES ('9255', '开票员', '40');
INSERT INTO `qs_hotword` VALUES ('9263', '统计专员', '10');
INSERT INTO `qs_hotword` VALUES ('9270', '工程人员', '31');
INSERT INTO `qs_hotword` VALUES ('9274', '管理部经理', '11');
INSERT INTO `qs_hotword` VALUES ('9282', '营养讲师', '10');
INSERT INTO `qs_hotword` VALUES ('9305', '品牌设计师', '11');
INSERT INTO `qs_hotword` VALUES ('9308', '门店客服员', '21');
INSERT INTO `qs_hotword` VALUES ('9311', '业务管理岗', '11');
INSERT INTO `qs_hotword` VALUES ('9315', '营运部经理', '25');
INSERT INTO `qs_hotword` VALUES ('9324', '品牌推广经理', '25');
INSERT INTO `qs_hotword` VALUES ('9327', '外事主任', '26');
INSERT INTO `qs_hotword` VALUES ('9328', '游戏策划', '76');
INSERT INTO `qs_hotword` VALUES ('9329', '营销策划总监', '68');
INSERT INTO `qs_hotword` VALUES ('9336', '编辑主管', '11');
INSERT INTO `qs_hotword` VALUES ('9338', '品牌策划专员', '12');
INSERT INTO `qs_hotword` VALUES ('9339', '片区主管', '45');
INSERT INTO `qs_hotword` VALUES ('9344', '计量员', '29');
INSERT INTO `qs_hotword` VALUES ('9348', '产品销售经理', '34');
INSERT INTO `qs_hotword` VALUES ('9349', '生产统计员', '49');
INSERT INTO `qs_hotword` VALUES ('9350', '医院销售代表', '96');
INSERT INTO `qs_hotword` VALUES ('9352', '兼职销售', '49');
INSERT INTO `qs_hotword` VALUES ('9362', '机电维修工', '41');
INSERT INTO `qs_hotword` VALUES ('9376', '机修', '37');
INSERT INTO `qs_hotword` VALUES ('9378', '业务院长', '17');
INSERT INTO `qs_hotword` VALUES ('9380', '行政主任', '30');
INSERT INTO `qs_hotword` VALUES ('9390', '媒介策划', '21');
INSERT INTO `qs_hotword` VALUES ('9391', '省级区域经理', '53');
INSERT INTO `qs_hotword` VALUES ('9396', '商务编辑', '40');
INSERT INTO `qs_hotword` VALUES ('9400', '新闻编辑', '180');
INSERT INTO `qs_hotword` VALUES ('9410', '项目管理专员', '20');
INSERT INTO `qs_hotword` VALUES ('9415', '拓展部经理', '43');
INSERT INTO `qs_hotword` VALUES ('9422', '督导专员', '28');
INSERT INTO `qs_hotword` VALUES ('9424', '结算专员', '16');
INSERT INTO `qs_hotword` VALUES ('9432', '网店销售客服', '26');
INSERT INTO `qs_hotword` VALUES ('9435', '门店副经理', '23');
INSERT INTO `qs_hotword` VALUES ('9437', '业务主任', '110');
INSERT INTO `qs_hotword` VALUES ('9439', '省区招商代表', '14');
INSERT INTO `qs_hotword` VALUES ('9446', '品牌策划', '36');
INSERT INTO `qs_hotword` VALUES ('9450', '化学分析员', '28');
INSERT INTO `qs_hotword` VALUES ('9458', '前台导医', '13');
INSERT INTO `qs_hotword` VALUES ('9461', '推广员', '14');
INSERT INTO `qs_hotword` VALUES ('9469', '外访员', '13');
INSERT INTO `qs_hotword` VALUES ('9485', '实习会计', '12');
INSERT INTO `qs_hotword` VALUES ('9494', '摄像', '25');
INSERT INTO `qs_hotword` VALUES ('9502', '信息技术专员', '39');
INSERT INTO `qs_hotword` VALUES ('9508', '服务总监', '34');
INSERT INTO `qs_hotword` VALUES ('9510', '售后信息员', '13');
INSERT INTO `qs_hotword` VALUES ('9511', '服务经理', '62');
INSERT INTO `qs_hotword` VALUES ('9512', '备件经理', '11');
INSERT INTO `qs_hotword` VALUES ('9514', '备件库管员', '16');
INSERT INTO `qs_hotword` VALUES ('9519', '客户接待员', '10');
INSERT INTO `qs_hotword` VALUES ('9531', '专职会计', '14');
INSERT INTO `qs_hotword` VALUES ('9546', '小学奥数教师', '14');
INSERT INTO `qs_hotword` VALUES ('9555', '渠道开发经理', '55');
INSERT INTO `qs_hotword` VALUES ('9559', '综合部经理', '46');
INSERT INTO `qs_hotword` VALUES ('9573', '眼科医生', '23');
INSERT INTO `qs_hotword` VALUES ('9574', '网络咨询员', '13');
INSERT INTO `qs_hotword` VALUES ('9582', 'ka销售代表', '31');
INSERT INTO `qs_hotword` VALUES ('9583', '外科医生', '34');
INSERT INTO `qs_hotword` VALUES ('9585', '前台经理', '11');
INSERT INTO `qs_hotword` VALUES ('9586', '网络维护专员', '23');
INSERT INTO `qs_hotword` VALUES ('9587', '人力专员', '20');
INSERT INTO `qs_hotword` VALUES ('9590', '商管员', '14');
INSERT INTO `qs_hotword` VALUES ('9597', '化工工程师', '19');
INSERT INTO `qs_hotword` VALUES ('9606', '集团总经理', '10');
INSERT INTO `qs_hotword` VALUES ('9609', '生产内勤', '15');
INSERT INTO `qs_hotword` VALUES ('9614', '车间调度', '10');
INSERT INTO `qs_hotword` VALUES ('9618', '直营督导', '18');
INSERT INTO `qs_hotword` VALUES ('9637', '服务技师', '26');
INSERT INTO `qs_hotword` VALUES ('9644', '商务采购', '28');
INSERT INTO `qs_hotword` VALUES ('9646', '设计部主管', '15');
INSERT INTO `qs_hotword` VALUES ('9670', '美容美体师', '62');
INSERT INTO `qs_hotword` VALUES ('9671', '仪器操作师', '10');
INSERT INTO `qs_hotword` VALUES ('9673', '美容院前台', '19');
INSERT INTO `qs_hotword` VALUES ('9676', '网络专员', '44');
INSERT INTO `qs_hotword` VALUES ('9677', '网络维护员', '26');
INSERT INTO `qs_hotword` VALUES ('9678', '监察专员', '20');
INSERT INTO `qs_hotword` VALUES ('9688', '律师', '42');
INSERT INTO `qs_hotword` VALUES ('9693', '财务部出纳', '14');
INSERT INTO `qs_hotword` VALUES ('9696', '信贷业务员', '12');
INSERT INTO `qs_hotword` VALUES ('9699', '网站管理员', '29');
INSERT INTO `qs_hotword` VALUES ('9702', '炊事员', '11');
INSERT INTO `qs_hotword` VALUES ('9717', '电话销售经理', '57');
INSERT INTO `qs_hotword` VALUES ('9719', '物料员', '12');
INSERT INTO `qs_hotword` VALUES ('9741', '招商助理', '64');
INSERT INTO `qs_hotword` VALUES ('9746', '初中物理老师', '10');
INSERT INTO `qs_hotword` VALUES ('9748', '跟车送货员', '13');
INSERT INTO `qs_hotword` VALUES ('9750', '高中物理老师', '19');
INSERT INTO `qs_hotword` VALUES ('9752', '高中数学老师', '30');
INSERT INTO `qs_hotword` VALUES ('9760', '组长', '51');
INSERT INTO `qs_hotword` VALUES ('9761', '产品总监', '34');
INSERT INTO `qs_hotword` VALUES ('9762', '内业', '11');
INSERT INTO `qs_hotword` VALUES ('9764', '配送员', '79');
INSERT INTO `qs_hotword` VALUES ('9788', '综合维修', '14');
INSERT INTO `qs_hotword` VALUES ('9807', '量体师', '11');
INSERT INTO `qs_hotword` VALUES ('9816', 'SEO工程师', '48');
INSERT INTO `qs_hotword` VALUES ('9817', '事业部总经理', '18');
INSERT INTO `qs_hotword` VALUES ('9856', '接待', '18');
INSERT INTO `qs_hotword` VALUES ('9857', '行政外勤', '12');
INSERT INTO `qs_hotword` VALUES ('9860', '文员助理', '15');
INSERT INTO `qs_hotword` VALUES ('9862', '美容店长', '33');
INSERT INTO `qs_hotword` VALUES ('9863', '驻店金融顾问', '30');
INSERT INTO `qs_hotword` VALUES ('9877', '装卸工', '30');
INSERT INTO `qs_hotword` VALUES ('9880', '发行主管', '10');
INSERT INTO `qs_hotword` VALUES ('9884', '保险经纪人', '54');
INSERT INTO `qs_hotword` VALUES ('9896', '质检主管', '32');
INSERT INTO `qs_hotword` VALUES ('9904', '商务总监', '37');
INSERT INTO `qs_hotword` VALUES ('9913', '商场导购员', '33');
INSERT INTO `qs_hotword` VALUES ('9914', '售后维修人员', '18');
INSERT INTO `qs_hotword` VALUES ('9918', '收银领班', '15');
INSERT INTO `qs_hotword` VALUES ('9920', '工程部部长', '46');
INSERT INTO `qs_hotword` VALUES ('9930', '机械设计人员', '14');
INSERT INTO `qs_hotword` VALUES ('9932', '终端业务员', '16');
INSERT INTO `qs_hotword` VALUES ('9949', '装配工人', '11');
INSERT INTO `qs_hotword` VALUES ('9961', '市场开拓', '18');
INSERT INTO `qs_hotword` VALUES ('9976', '直营经理', '29');
INSERT INTO `qs_hotword` VALUES ('9983', '助产士', '19');
INSERT INTO `qs_hotword` VALUES ('9985', '妇产科医生', '18');
INSERT INTO `qs_hotword` VALUES ('10010', 'VIP经理', '11');
INSERT INTO `qs_hotword` VALUES ('10031', '高级销售员', '12');
INSERT INTO `qs_hotword` VALUES ('10034', '高中生物老师', '10');
INSERT INTO `qs_hotword` VALUES ('10040', 'SMT技术员', '13');
INSERT INTO `qs_hotword` VALUES ('10043', '教务主任', '30');
INSERT INTO `qs_hotword` VALUES ('10055', '撰文指导', '25');
INSERT INTO `qs_hotword` VALUES ('10067', '团购销售', '21');
INSERT INTO `qs_hotword` VALUES ('10069', '前台主管', '45');
INSERT INTO `qs_hotword` VALUES ('10070', '值班经理', '55');
INSERT INTO `qs_hotword` VALUES ('10094', '机票预订员', '12');
INSERT INTO `qs_hotword` VALUES ('10106', '快递员', '33');
INSERT INTO `qs_hotword` VALUES ('10108', '生产工艺员', '15');
INSERT INTO `qs_hotword` VALUES ('10112', '高级销售总监', '26');
INSERT INTO `qs_hotword` VALUES ('10114', '直营部经理', '25');
INSERT INTO `qs_hotword` VALUES ('10125', '客服前台', '18');
INSERT INTO `qs_hotword` VALUES ('10131', '外派店长', '12');
INSERT INTO `qs_hotword` VALUES ('10137', '市场营销主管', '36');
INSERT INTO `qs_hotword` VALUES ('10161', '现场经理', '15');
INSERT INTO `qs_hotword` VALUES ('10162', '品牌策划师', '10');
INSERT INTO `qs_hotword` VALUES ('10165', '运维专员', '18');
INSERT INTO `qs_hotword` VALUES ('10166', '化妆品导购', '15');
INSERT INTO `qs_hotword` VALUES ('10171', '团队长', '17');
INSERT INTO `qs_hotword` VALUES ('10174', '电子装配工', '12');
INSERT INTO `qs_hotword` VALUES ('10200', '网络营销策划', '24');
INSERT INTO `qs_hotword` VALUES ('10206', '虚拟化工程师', '10');
INSERT INTO `qs_hotword` VALUES ('10208', '高级营销顾问', '15');
INSERT INTO `qs_hotword` VALUES ('10226', '团购销售代表', '26');
INSERT INTO `qs_hotword` VALUES ('10255', '结算会计', '31');
INSERT INTO `qs_hotword` VALUES ('10272', '全国大区经理', '13');
INSERT INTO `qs_hotword` VALUES ('10278', '营销区域经理', '22');
INSERT INTO `qs_hotword` VALUES ('10280', '钻床工', '11');
INSERT INTO `qs_hotword` VALUES ('10281', '冲压工', '23');
INSERT INTO `qs_hotword` VALUES ('10294', '职场管理岗', '12');
INSERT INTO `qs_hotword` VALUES ('10318', '标书制作员', '19');
INSERT INTO `qs_hotword` VALUES ('10322', '店长、导购', '16');
INSERT INTO `qs_hotword` VALUES ('10349', '初级程序员', '23');
INSERT INTO `qs_hotword` VALUES ('10354', '售后', '19');
INSERT INTO `qs_hotword` VALUES ('10363', '驻外会计', '53');
INSERT INTO `qs_hotword` VALUES ('10367', '网站开发', '23');
INSERT INTO `qs_hotword` VALUES ('10378', '物控专员', '14');
INSERT INTO `qs_hotword` VALUES ('10379', '品牌推广员', '12');
INSERT INTO `qs_hotword` VALUES ('10419', '材料会计', '37');
INSERT INTO `qs_hotword` VALUES ('10431', '勤杂工', '22');
INSERT INTO `qs_hotword` VALUES ('10441', '团队出差员', '64');
INSERT INTO `qs_hotword` VALUES ('10459', '业务主任岗', '17');
INSERT INTO `qs_hotword` VALUES ('10465', '项目管理员', '24');
INSERT INTO `qs_hotword` VALUES ('10470', '体系管理员', '11');
INSERT INTO `qs_hotword` VALUES ('10477', '推广讲师', '17');
INSERT INTO `qs_hotword` VALUES ('10479', '省经理', '13');
INSERT INTO `qs_hotword` VALUES ('10485', '驻外销售经理', '24');
INSERT INTO `qs_hotword` VALUES ('10491', '运营管理岗', '13');
INSERT INTO `qs_hotword` VALUES ('10492', '市场营销策划', '13');
INSERT INTO `qs_hotword` VALUES ('10494', '省级KA经理', '11');
INSERT INTO `qs_hotword` VALUES ('10508', '现场管理', '18');
INSERT INTO `qs_hotword` VALUES ('10511', '餐饮主管', '19');
INSERT INTO `qs_hotword` VALUES ('10515', '大客户部经理', '26');
INSERT INTO `qs_hotword` VALUES ('10517', '资深AE', '18');
INSERT INTO `qs_hotword` VALUES ('10537', '厂长', '54');
INSERT INTO `qs_hotword` VALUES ('10550', '客户部经理', '15');
INSERT INTO `qs_hotword` VALUES ('10554', '店面账务', '10');
INSERT INTO `qs_hotword` VALUES ('10557', '裱花师', '14');
INSERT INTO `qs_hotword` VALUES ('10564', '数据库工程师', '90');
INSERT INTO `qs_hotword` VALUES ('10565', 'UE设计师', '11');
INSERT INTO `qs_hotword` VALUES ('10583', '门店前台', '22');
INSERT INTO `qs_hotword` VALUES ('10585', '黄金操盘手', '11');
INSERT INTO `qs_hotword` VALUES ('10589', '临床代表', '10');
INSERT INTO `qs_hotword` VALUES ('10602', '分公司副总', '12');
INSERT INTO `qs_hotword` VALUES ('10605', '家装业务经理', '11');
INSERT INTO `qs_hotword` VALUES ('10606', '高级培训师', '19');
INSERT INTO `qs_hotword` VALUES ('10616', '网销专员', '10');
INSERT INTO `qs_hotword` VALUES ('10619', '厨柜导购', '18');
INSERT INTO `qs_hotword` VALUES ('10628', '喷漆技工', '10');
INSERT INTO `qs_hotword` VALUES ('10629', '钣金技工', '11');
INSERT INTO `qs_hotword` VALUES ('10641', '往来会计', '34');
INSERT INTO `qs_hotword` VALUES ('10643', '检验业务代表', '23');
INSERT INTO `qs_hotword` VALUES ('10651', '商业运营总监', '13');
INSERT INTO `qs_hotword` VALUES ('10664', '案场主管', '13');
INSERT INTO `qs_hotword` VALUES ('10669', '保险营销员', '10');
INSERT INTO `qs_hotword` VALUES ('10675', '采购主任', '12');
INSERT INTO `qs_hotword` VALUES ('10678', 'PE工程师', '42');
INSERT INTO `qs_hotword` VALUES ('10679', '市场经理助理', '14');
INSERT INTO `qs_hotword` VALUES ('10685', '旅游计调', '21');
INSERT INTO `qs_hotword` VALUES ('10696', '礼仪', '11');
INSERT INTO `qs_hotword` VALUES ('10698', '业务顾问', '21');
INSERT INTO `qs_hotword` VALUES ('10703', '高级策划', '18');
INSERT INTO `qs_hotword` VALUES ('10711', '招商业务员', '10');
INSERT INTO `qs_hotword` VALUES ('10726', '保安经理', '42');
INSERT INTO `qs_hotword` VALUES ('10751', '市场调查专员', '13');
INSERT INTO `qs_hotword` VALUES ('10767', '代驾司机', '17');
INSERT INTO `qs_hotword` VALUES ('10773', '商务人员', '48');
INSERT INTO `qs_hotword` VALUES ('10774', 'web工程师', '11');
INSERT INTO `qs_hotword` VALUES ('10775', '预算专员', '13');
INSERT INTO `qs_hotword` VALUES ('10777', '行政前台文员', '10');
INSERT INTO `qs_hotword` VALUES ('10784', '游戏文案策划', '11');
INSERT INTO `qs_hotword` VALUES ('10787', '保险理财顾问', '14');
INSERT INTO `qs_hotword` VALUES ('10789', '客户接待', '13');
INSERT INTO `qs_hotword` VALUES ('10796', '三维特效师', '11');
INSERT INTO `qs_hotword` VALUES ('10797', '三维动画师', '18');
INSERT INTO `qs_hotword` VALUES ('10802', '酒店销售经理', '10');
INSERT INTO `qs_hotword` VALUES ('10804', '营销部副经理', '25');
INSERT INTO `qs_hotword` VALUES ('10805', '人事服务专员', '10');
INSERT INTO `qs_hotword` VALUES ('10809', '营销主任', '31');
INSERT INTO `qs_hotword` VALUES ('10812', '招商副经理', '10');
INSERT INTO `qs_hotword` VALUES ('10817', '茶艺员', '15');
INSERT INTO `qs_hotword` VALUES ('10847', '行政后勤专员', '11');
INSERT INTO `qs_hotword` VALUES ('10854', 'Web程序员', '20');
INSERT INTO `qs_hotword` VALUES ('10856', '销售行政专员', '15');
INSERT INTO `qs_hotword` VALUES ('10860', '员工餐厨师', '37');
INSERT INTO `qs_hotword` VALUES ('10873', '品牌管理专员', '21');
INSERT INTO `qs_hotword` VALUES ('10874', '餐饮服务员', '75');
INSERT INTO `qs_hotword` VALUES ('10911', '行政后勤', '21');
INSERT INTO `qs_hotword` VALUES ('10952', '售后客服', '76');
INSERT INTO `qs_hotword` VALUES ('10968', '区域代理', '15');
INSERT INTO `qs_hotword` VALUES ('10972', '驻店经理', '17');
INSERT INTO `qs_hotword` VALUES ('10980', '建筑设计', '18');
INSERT INTO `qs_hotword` VALUES ('10982', '楼层服务员', '24');
INSERT INTO `qs_hotword` VALUES ('10999', 'VIP专员', '16');
INSERT INTO `qs_hotword` VALUES ('11001', '大堂吧服务员', '11');
INSERT INTO `qs_hotword` VALUES ('11023', '资产管理专员', '11');
INSERT INTO `qs_hotword` VALUES ('11047', '仓储主管', '39');
INSERT INTO `qs_hotword` VALUES ('11064', '策略文案', '13');
INSERT INTO `qs_hotword` VALUES ('11077', '管理咨询师', '12');
INSERT INTO `qs_hotword` VALUES ('11079', '市场分析师', '31');
INSERT INTO `qs_hotword` VALUES ('11095', '物流监管员', '15');
INSERT INTO `qs_hotword` VALUES ('11100', '初中语文教师', '22');
INSERT INTO `qs_hotword` VALUES ('11104', '折页工', '11');
INSERT INTO `qs_hotword` VALUES ('11119', '房产销售经理', '14');
INSERT INTO `qs_hotword` VALUES ('11140', '零售督导', '41');
INSERT INTO `qs_hotword` VALUES ('11153', '材料员', '95');
INSERT INTO `qs_hotword` VALUES ('11160', '杂志采编', '13');
INSERT INTO `qs_hotword` VALUES ('11172', '员工关系主管', '24');
INSERT INTO `qs_hotword` VALUES ('11180', '质量管理', '24');
INSERT INTO `qs_hotword` VALUES ('11182', '操作', '26');
INSERT INTO `qs_hotword` VALUES ('11188', '检测员', '12');
INSERT INTO `qs_hotword` VALUES ('11194', '培训督导', '92');
INSERT INTO `qs_hotword` VALUES ('11210', '工程销售代表', '17');
INSERT INTO `qs_hotword` VALUES ('11211', '营业助理', '13');
INSERT INTO `qs_hotword` VALUES ('11226', '涂料工程师', '11');
INSERT INTO `qs_hotword` VALUES ('11236', '网络销售人员', '29');
INSERT INTO `qs_hotword` VALUES ('11241', '绿化工程师', '15');
INSERT INTO `qs_hotword` VALUES ('11246', '团购部经理', '19');
INSERT INTO `qs_hotword` VALUES ('11251', '维修接待', '11');
INSERT INTO `qs_hotword` VALUES ('11252', '打单员', '30');
INSERT INTO `qs_hotword` VALUES ('11273', '贷款顾问', '10');
INSERT INTO `qs_hotword` VALUES ('11304', '总建筑师', '23');
INSERT INTO `qs_hotword` VALUES ('11305', '产品开发经理', '14');
INSERT INTO `qs_hotword` VALUES ('11312', '服务人员', '14');
INSERT INTO `qs_hotword` VALUES ('11313', '存储工程师', '20');
INSERT INTO `qs_hotword` VALUES ('11314', '主机工程师', '20');
INSERT INTO `qs_hotword` VALUES ('11328', '彩妆师', '28');
INSERT INTO `qs_hotword` VALUES ('11329', '保安部经理', '19');
INSERT INTO `qs_hotword` VALUES ('11332', '美甲师', '40');
INSERT INTO `qs_hotword` VALUES ('11337', '咖啡师', '13');
INSERT INTO `qs_hotword` VALUES ('11350', '小车驾驶员', '15');
INSERT INTO `qs_hotword` VALUES ('11355', '药剂师', '43');
INSERT INTO `qs_hotword` VALUES ('11360', '品管经理', '31');
INSERT INTO `qs_hotword` VALUES ('11366', '驱动工程师', '13');
INSERT INTO `qs_hotword` VALUES ('11367', '小学英语老师', '17');
INSERT INTO `qs_hotword` VALUES ('11374', '营养代表', '38');
INSERT INTO `qs_hotword` VALUES ('11386', 'IT支持岗', '19');
INSERT INTO `qs_hotword` VALUES ('11391', '部门文员', '16');
INSERT INTO `qs_hotword` VALUES ('11403', '商品管理专员', '12');
INSERT INTO `qs_hotword` VALUES ('11414', '期货交易员', '10');
INSERT INTO `qs_hotword` VALUES ('11434', '渠道总监', '41');
INSERT INTO `qs_hotword` VALUES ('11440', '综合柜员', '16');
INSERT INTO `qs_hotword` VALUES ('11441', '房地产销售', '217');
INSERT INTO `qs_hotword` VALUES ('11444', '媒体销售主管', '51');
INSERT INTO `qs_hotword` VALUES ('11449', '房产销售人员', '39');
INSERT INTO `qs_hotword` VALUES ('11453', '仓务员', '33');
INSERT INTO `qs_hotword` VALUES ('11457', 'IT技术员', '14');
INSERT INTO `qs_hotword` VALUES ('11463', '资质专员', '15');
INSERT INTO `qs_hotword` VALUES ('11475', '消防工程师', '17');
INSERT INTO `qs_hotword` VALUES ('11540', '机修钳工', '16');
INSERT INTO `qs_hotword` VALUES ('11545', '淘宝专员', '20');
INSERT INTO `qs_hotword` VALUES ('11588', '房地产策划', '35');
INSERT INTO `qs_hotword` VALUES ('11609', '科研人员', '10');
INSERT INTO `qs_hotword` VALUES ('11610', '服务器程序员', '22');
INSERT INTO `qs_hotword` VALUES ('11615', '采购人员', '12');
INSERT INTO `qs_hotword` VALUES ('11616', '集团客户经理', '17');
INSERT INTO `qs_hotword` VALUES ('11644', '留学文案', '16');
INSERT INTO `qs_hotword` VALUES ('11652', '房地产估价师', '11');
INSERT INTO `qs_hotword` VALUES ('11659', '会籍顾问', '44');
INSERT INTO `qs_hotword` VALUES ('11669', '中餐厨师', '10');
INSERT INTO `qs_hotword` VALUES ('11677', '外销员', '27');
INSERT INTO `qs_hotword` VALUES ('11680', '珠宝顾问', '11');
INSERT INTO `qs_hotword` VALUES ('11684', '仓库配货员', '51');
INSERT INTO `qs_hotword` VALUES ('11689', '副总工程师', '30');
INSERT INTO `qs_hotword` VALUES ('11710', '标识设计师', '10');
INSERT INTO `qs_hotword` VALUES ('11719', '风控部经理', '14');
INSERT INTO `qs_hotword` VALUES ('11720', '高级投资顾问', '29');
INSERT INTO `qs_hotword` VALUES ('11733', '服务部经理', '17');
INSERT INTO `qs_hotword` VALUES ('11738', '暖通项目经理', '12');
INSERT INTO `qs_hotword` VALUES ('11743', '医疗核损岗', '13');
INSERT INTO `qs_hotword` VALUES ('11766', '桥梁工程师', '10');
INSERT INTO `qs_hotword` VALUES ('11803', '项目建筑师', '12');
INSERT INTO `qs_hotword` VALUES ('11824', '销售大区经理', '26');
INSERT INTO `qs_hotword` VALUES ('11838', '案场销售经理', '10');
INSERT INTO `qs_hotword` VALUES ('11843', '车间操作工', '25');
INSERT INTO `qs_hotword` VALUES ('11849', '客户服务助理', '17');
INSERT INTO `qs_hotword` VALUES ('11851', '运营管理专员', '12');
INSERT INTO `qs_hotword` VALUES ('11882', '顾问助理', '22');
INSERT INTO `qs_hotword` VALUES ('11887', '保险内勤', '49');
INSERT INTO `qs_hotword` VALUES ('11894', '内训师', '10');
INSERT INTO `qs_hotword` VALUES ('11895', '产品摄影师', '18');
INSERT INTO `qs_hotword` VALUES ('11908', '护理人员', '10');
INSERT INTO `qs_hotword` VALUES ('11935', '售后人员', '32');
INSERT INTO `qs_hotword` VALUES ('11938', '外派出差', '15');
INSERT INTO `qs_hotword` VALUES ('11946', '区域业务代表', '31');
INSERT INTO `qs_hotword` VALUES ('11947', '技术部经理', '89');
INSERT INTO `qs_hotword` VALUES ('11968', '项目营销经理', '10');
INSERT INTO `qs_hotword` VALUES ('11969', '综合部主管', '10');
INSERT INTO `qs_hotword` VALUES ('11975', '兼职写手', '12');
INSERT INTO `qs_hotword` VALUES ('11990', '绩效经理', '26');
INSERT INTO `qs_hotword` VALUES ('11998', '薪酬绩效专员', '39');
INSERT INTO `qs_hotword` VALUES ('12000', '咨询专员', '33');
INSERT INTO `qs_hotword` VALUES ('12008', '储备管理人员', '24');
INSERT INTO `qs_hotword` VALUES ('12016', '工程设计师', '11');
INSERT INTO `qs_hotword` VALUES ('12022', '雕刻工', '15');
INSERT INTO `qs_hotword` VALUES ('12039', '加盟商', '11');
INSERT INTO `qs_hotword` VALUES ('12062', '生产跟单', '50');
INSERT INTO `qs_hotword` VALUES ('12064', '维修技工', '25');
INSERT INTO `qs_hotword` VALUES ('12073', '品质管理', '44');
INSERT INTO `qs_hotword` VALUES ('12074', '造价主管', '10');
INSERT INTO `qs_hotword` VALUES ('12077', '见习销售代表', '14');
INSERT INTO `qs_hotword` VALUES ('12080', '出差专员', '11');
INSERT INTO `qs_hotword` VALUES ('12099', '课程咨询师', '20');
INSERT INTO `qs_hotword` VALUES ('12104', '注塑工程师', '22');
INSERT INTO `qs_hotword` VALUES ('12122', '移民咨询顾问', '10');
INSERT INTO `qs_hotword` VALUES ('12125', '环境工程师', '25');
INSERT INTO `qs_hotword` VALUES ('12143', '内控经理', '11');
INSERT INTO `qs_hotword` VALUES ('12149', '现金出纳', '12');
INSERT INTO `qs_hotword` VALUES ('12154', '物流员', '18');
INSERT INTO `qs_hotword` VALUES ('12156', '服装设计', '27');
INSERT INTO `qs_hotword` VALUES ('12159', '质检部经理', '22');
INSERT INTO `qs_hotword` VALUES ('12172', '期货分析师', '15');
INSERT INTO `qs_hotword` VALUES ('12204', '品质经理', '68');
INSERT INTO `qs_hotword` VALUES ('12246', '行政副经理', '14');
INSERT INTO `qs_hotword` VALUES ('12249', '外贸文员', '34');
INSERT INTO `qs_hotword` VALUES ('12269', '建筑工程管理', '29');
INSERT INTO `qs_hotword` VALUES ('12274', '数据管理员', '14');
INSERT INTO `qs_hotword` VALUES ('12277', '商务拓展', '12');
INSERT INTO `qs_hotword` VALUES ('12294', '质量员', '13');
INSERT INTO `qs_hotword` VALUES ('12324', '陈列主管', '45');
INSERT INTO `qs_hotword` VALUES ('12327', 'QC经理', '10');
INSERT INTO `qs_hotword` VALUES ('12342', '财务副总', '13');
INSERT INTO `qs_hotword` VALUES ('12359', '技术部长', '15');
INSERT INTO `qs_hotword` VALUES ('12364', '工程业务', '11');
INSERT INTO `qs_hotword` VALUES ('12372', '品牌运营总监', '17');
INSERT INTO `qs_hotword` VALUES ('12383', '商品总监', '13');
INSERT INTO `qs_hotword` VALUES ('12387', 'PHP开发', '10');
INSERT INTO `qs_hotword` VALUES ('12391', '税务主管', '19');
INSERT INTO `qs_hotword` VALUES ('12401', '雅思老师', '10');
INSERT INTO `qs_hotword` VALUES ('12405', '海运客服', '23');
INSERT INTO `qs_hotword` VALUES ('12415', '产品培训专员', '13');
INSERT INTO `qs_hotword` VALUES ('12421', '版师', '28');
INSERT INTO `qs_hotword` VALUES ('12424', '技术副总监', '13');
INSERT INTO `qs_hotword` VALUES ('12427', '售前咨询顾问', '18');
INSERT INTO `qs_hotword` VALUES ('12436', 'SEO主管', '22');
INSERT INTO `qs_hotword` VALUES ('12439', '网络销售精英', '13');
INSERT INTO `qs_hotword` VALUES ('12448', '厂长助理', '38');
INSERT INTO `qs_hotword` VALUES ('12453', '制程工程师', '20');
INSERT INTO `qs_hotword` VALUES ('12471', '高级销售顾问', '35');
INSERT INTO `qs_hotword` VALUES ('12489', '人力行政专员', '15');
INSERT INTO `qs_hotword` VALUES ('12504', '成本控制经理', '14');
INSERT INTO `qs_hotword` VALUES ('12523', 'IQC工程师', '10');
INSERT INTO `qs_hotword` VALUES ('12525', 'IT技术支持', '11');
INSERT INTO `qs_hotword` VALUES ('12532', '材料工程师', '64');
INSERT INTO `qs_hotword` VALUES ('12536', '售前技术经理', '11');
INSERT INTO `qs_hotword` VALUES ('12537', '服装设计总监', '17');
INSERT INTO `qs_hotword` VALUES ('12572', '空间设计', '48');
INSERT INTO `qs_hotword` VALUES ('12589', '模型师', '14');
INSERT INTO `qs_hotword` VALUES ('12590', '形体顾问', '15');
INSERT INTO `qs_hotword` VALUES ('12593', '3D动画师', '13');
INSERT INTO `qs_hotword` VALUES ('12601', '制冷工', '28');
INSERT INTO `qs_hotword` VALUES ('12602', '活动策划主管', '18');
INSERT INTO `qs_hotword` VALUES ('12626', '高级课程顾问', '15');
INSERT INTO `qs_hotword` VALUES ('12633', '中学物理教师', '13');
INSERT INTO `qs_hotword` VALUES ('12637', '中学语文教师', '13');
INSERT INTO `qs_hotword` VALUES ('12638', '中学数学教师', '24');
INSERT INTO `qs_hotword` VALUES ('12639', '中学英语教师', '27');
INSERT INTO `qs_hotword` VALUES ('12641', '中学化学教师', '12');
INSERT INTO `qs_hotword` VALUES ('12653', '市场调研', '19');
INSERT INTO `qs_hotword` VALUES ('12657', 'pcb工程师', '13');
INSERT INTO `qs_hotword` VALUES ('12658', '开发部经理', '59');
INSERT INTO `qs_hotword` VALUES ('12663', 'IOS程序员', '12');
INSERT INTO `qs_hotword` VALUES ('12669', '总办秘书', '12');
INSERT INTO `qs_hotword` VALUES ('12674', '房务中心文员', '11');
INSERT INTO `qs_hotword` VALUES ('12685', '财务部副经理', '44');
INSERT INTO `qs_hotword` VALUES ('12694', '智能化工程师', '11');
INSERT INTO `qs_hotword` VALUES ('12697', '童装设计师', '33');
INSERT INTO `qs_hotword` VALUES ('12699', '技术服务人员', '15');
INSERT INTO `qs_hotword` VALUES ('12712', '市场代表', '47');
INSERT INTO `qs_hotword` VALUES ('12713', '网络部经理', '11');
INSERT INTO `qs_hotword` VALUES ('12722', '吧台服务员', '19');
INSERT INTO `qs_hotword` VALUES ('12738', '销售管理岗', '10');
INSERT INTO `qs_hotword` VALUES ('12749', '动画设计师', '15');
INSERT INTO `qs_hotword` VALUES ('12765', '产品顾问', '10');
INSERT INTO `qs_hotword` VALUES ('12766', '大客户代表', '22');
INSERT INTO `qs_hotword` VALUES ('12777', '注塑技术员', '16');
INSERT INTO `qs_hotword` VALUES ('12780', '游戏测试员', '26');
INSERT INTO `qs_hotword` VALUES ('12796', '市场开发员', '10');
INSERT INTO `qs_hotword` VALUES ('12801', '房产销售精英', '23');
INSERT INTO `qs_hotword` VALUES ('12820', '实习工程师', '16');
INSERT INTO `qs_hotword` VALUES ('12829', '建筑设计主管', '37');
INSERT INTO `qs_hotword` VALUES ('12844', '广告平面设计', '12');
INSERT INTO `qs_hotword` VALUES ('12849', '工程销售经理', '18');
INSERT INTO `qs_hotword` VALUES ('12855', '销售策划', '14');
INSERT INTO `qs_hotword` VALUES ('12859', '兼职督导', '11');
INSERT INTO `qs_hotword` VALUES ('12877', '资深策划专员', '11');
INSERT INTO `qs_hotword` VALUES ('12879', '安保人员', '13');
INSERT INTO `qs_hotword` VALUES ('12884', '售后经理', '42');
INSERT INTO `qs_hotword` VALUES ('12887', '办事处文员', '23');
INSERT INTO `qs_hotword` VALUES ('12893', '稽核专员', '26');
INSERT INTO `qs_hotword` VALUES ('12894', '房地产评估师', '10');
INSERT INTO `qs_hotword` VALUES ('12908', '行政总务', '11');
INSERT INTO `qs_hotword` VALUES ('12910', '网站主编', '37');
INSERT INTO `qs_hotword` VALUES ('12913', '会计、出纳', '21');
INSERT INTO `qs_hotword` VALUES ('12925', '商务合作专员', '13');
INSERT INTO `qs_hotword` VALUES ('12930', '总裁办主任', '18');
INSERT INTO `qs_hotword` VALUES ('12936', '财务管理岗', '12');
INSERT INTO `qs_hotword` VALUES ('12937', '机械师', '13');
INSERT INTO `qs_hotword` VALUES ('12953', '软件测试员', '16');
INSERT INTO `qs_hotword` VALUES ('12955', '企划人员', '38');
INSERT INTO `qs_hotword` VALUES ('12956', '国际采购', '11');
INSERT INTO `qs_hotword` VALUES ('12958', '外派财务经理', '10');
INSERT INTO `qs_hotword` VALUES ('12959', '游戏测试', '24');
INSERT INTO `qs_hotword` VALUES ('12969', '风控经理', '22');
INSERT INTO `qs_hotword` VALUES ('12972', '工程业务经理', '15');
INSERT INTO `qs_hotword` VALUES ('12992', '旅行社计调', '24');
INSERT INTO `qs_hotword` VALUES ('12995', '手机游戏策划', '24');
INSERT INTO `qs_hotword` VALUES ('12996', '医务代表', '66');
INSERT INTO `qs_hotword` VALUES ('12997', '培训主任', '22');
INSERT INTO `qs_hotword` VALUES ('13011', '人事副经理', '11');
INSERT INTO `qs_hotword` VALUES ('13015', '物业副经理', '10');
INSERT INTO `qs_hotword` VALUES ('13029', '房产置业顾问', '41');
INSERT INTO `qs_hotword` VALUES ('13039', '咨询员', '42');
INSERT INTO `qs_hotword` VALUES ('13054', '物流采购专员', '17');
INSERT INTO `qs_hotword` VALUES ('13055', '德国互惠生', '11');
INSERT INTO `qs_hotword` VALUES ('13056', '比利时互惠生', '11');
INSERT INTO `qs_hotword` VALUES ('13058', '法国互惠生', '11');
INSERT INTO `qs_hotword` VALUES ('13068', '茶叶讲解员', '13');
INSERT INTO `qs_hotword` VALUES ('13071', '风险控制经理', '14');
INSERT INTO `qs_hotword` VALUES ('13074', '中心主任', '38');
INSERT INTO `qs_hotword` VALUES ('13076', '行政部长', '12');
INSERT INTO `qs_hotword` VALUES ('13078', '检验工程师', '24');
INSERT INTO `qs_hotword` VALUES ('13094', '平面美工', '13');
INSERT INTO `qs_hotword` VALUES ('13097', '外派员', '10');
INSERT INTO `qs_hotword` VALUES ('13098', '常务副总', '26');
INSERT INTO `qs_hotword` VALUES ('13130', 'GIS工程师', '18');
INSERT INTO `qs_hotword` VALUES ('13137', '品管部经理', '15');
INSERT INTO `qs_hotword` VALUES ('13159', '驻店陈列', '10');
INSERT INTO `qs_hotword` VALUES ('13167', 'KA业务经理', '11');
INSERT INTO `qs_hotword` VALUES ('13176', '销售学员', '45');
INSERT INTO `qs_hotword` VALUES ('13197', '商务拓展专员', '16');
INSERT INTO `qs_hotword` VALUES ('13205', '网站前台美工', '11');
INSERT INTO `qs_hotword` VALUES ('13207', '网站美工设计', '17');
INSERT INTO `qs_hotword` VALUES ('13218', '前台接待文员', '24');
INSERT INTO `qs_hotword` VALUES ('13225', '售后服务主管', '31');
INSERT INTO `qs_hotword` VALUES ('13234', '项目总工', '14');
INSERT INTO `qs_hotword` VALUES ('13246', '产品研发经理', '15');
INSERT INTO `qs_hotword` VALUES ('13249', '学生兼职', '29');
INSERT INTO `qs_hotword` VALUES ('13250', '拓展主管', '55');
INSERT INTO `qs_hotword` VALUES ('13266', '银行专员', '17');
INSERT INTO `qs_hotword` VALUES ('13273', '审核员', '18');
INSERT INTO `qs_hotword` VALUES ('13290', '策划人员', '33');
INSERT INTO `qs_hotword` VALUES ('13293', '前期经理', '23');
INSERT INTO `qs_hotword` VALUES ('13299', '客房主管', '38');
INSERT INTO `qs_hotword` VALUES ('13312', '店面督导', '19');
INSERT INTO `qs_hotword` VALUES ('13318', '服装买手', '18');
INSERT INTO `qs_hotword` VALUES ('13319', '房地产会计', '15');
INSERT INTO `qs_hotword` VALUES ('13340', '外贸主管', '39');
INSERT INTO `qs_hotword` VALUES ('13347', '渠道区域经理', '19');
INSERT INTO `qs_hotword` VALUES ('13349', '学术推广经理', '11');
INSERT INTO `qs_hotword` VALUES ('13351', '客户管理', '18');
INSERT INTO `qs_hotword` VALUES ('13353', '营销策划师', '25');
INSERT INTO `qs_hotword` VALUES ('13356', '售楼员', '44');
INSERT INTO `qs_hotword` VALUES ('13361', '商超主管', '22');
INSERT INTO `qs_hotword` VALUES ('13374', '贷款销售经理', '27');
INSERT INTO `qs_hotword` VALUES ('13383', '售后主管', '27');
INSERT INTO `qs_hotword` VALUES ('13395', '研发员', '25');
INSERT INTO `qs_hotword` VALUES ('13410', '小学数学老师', '22');
INSERT INTO `qs_hotword` VALUES ('13429', '会展策划', '26');
INSERT INTO `qs_hotword` VALUES ('13430', '大区域经理', '45');
INSERT INTO `qs_hotword` VALUES ('13439', '制版师', '26');
INSERT INTO `qs_hotword` VALUES ('13440', '营业部副经理', '10');
INSERT INTO `qs_hotword` VALUES ('13441', '信息采集员', '13');
INSERT INTO `qs_hotword` VALUES ('13457', '内勤助理', '12');
INSERT INTO `qs_hotword` VALUES ('13470', '实习律师', '12');
INSERT INTO `qs_hotword` VALUES ('13482', '早教课程顾问', '12');
INSERT INTO `qs_hotword` VALUES ('13498', '兼职促销员', '12');
INSERT INTO `qs_hotword` VALUES ('13505', '中药师', '24');
INSERT INTO `qs_hotword` VALUES ('13509', '舞蹈教师', '12');
INSERT INTO `qs_hotword` VALUES ('13525', '技术销售代表', '12');
INSERT INTO `qs_hotword` VALUES ('13528', '小货车司机', '15');
INSERT INTO `qs_hotword` VALUES ('13536', '汽车美容学徒', '14');
INSERT INTO `qs_hotword` VALUES ('13547', '地区推广经理', '13');
INSERT INTO `qs_hotword` VALUES ('13566', '幼儿园教师', '16');
INSERT INTO `qs_hotword` VALUES ('13570', '直营店长', '29');
INSERT INTO `qs_hotword` VALUES ('13599', '经营部经理', '48');
INSERT INTO `qs_hotword` VALUES ('13601', '驻地业代', '20');
INSERT INTO `qs_hotword` VALUES ('13604', '设备部经理', '15');
INSERT INTO `qs_hotword` VALUES ('13608', '商超业务', '17');
INSERT INTO `qs_hotword` VALUES ('13615', '营业所长', '235');
INSERT INTO `qs_hotword` VALUES ('13619', '区域营销总监', '15');
INSERT INTO `qs_hotword` VALUES ('13627', '工程绘图员', '10');
INSERT INTO `qs_hotword` VALUES ('13652', '销售总经理', '34');
INSERT INTO `qs_hotword` VALUES ('13657', '维保技师', '10');
INSERT INTO `qs_hotword` VALUES ('13672', '行政后勤主管', '16');
INSERT INTO `qs_hotword` VALUES ('13676', '生产线操作工', '12');
INSERT INTO `qs_hotword` VALUES ('13691', '淘宝网店客服', '19');
INSERT INTO `qs_hotword` VALUES ('13697', '网络部主管', '11');
INSERT INTO `qs_hotword` VALUES ('13700', '战略规划经理', '10');
INSERT INTO `qs_hotword` VALUES ('13710', '验证工程师', '14');
INSERT INTO `qs_hotword` VALUES ('13718', '理财师', '15');
INSERT INTO `qs_hotword` VALUES ('13736', '预决算工程师', '23');
INSERT INTO `qs_hotword` VALUES ('13738', '测试部经理', '17');
INSERT INTO `qs_hotword` VALUES ('13749', '分销经理', '24');
INSERT INTO `qs_hotword` VALUES ('13761', '采矿工程师', '19');
INSERT INTO `qs_hotword` VALUES ('13767', '裁剪工', '11');
INSERT INTO `qs_hotword` VALUES ('13777', '报建员', '38');
INSERT INTO `qs_hotword` VALUES ('13786', '个贷专员', '10');
INSERT INTO `qs_hotword` VALUES ('13797', '批发业务代表', '10');
INSERT INTO `qs_hotword` VALUES ('13801', '区域业务主管', '17');
INSERT INTO `qs_hotword` VALUES ('13807', '区域拓展主管', '10');
INSERT INTO `qs_hotword` VALUES ('13815', '灯光师', '13');
INSERT INTO `qs_hotword` VALUES ('13825', '市场开拓专员', '31');
INSERT INTO `qs_hotword` VALUES ('13847', '区域主任', '19');
INSERT INTO `qs_hotword` VALUES ('13851', '招生办主任', '17');
INSERT INTO `qs_hotword` VALUES ('13855', '幼儿园厨师', '21');
INSERT INTO `qs_hotword` VALUES ('13892', '外勤会计', '14');
INSERT INTO `qs_hotword` VALUES ('13897', 'it助理', '12');
INSERT INTO `qs_hotword` VALUES ('13900', '电话业务精英', '13');
INSERT INTO `qs_hotword` VALUES ('13938', '接线员', '22');
INSERT INTO `qs_hotword` VALUES ('13960', '发货员', '34');
INSERT INTO `qs_hotword` VALUES ('14009', '挑战高薪', '17');
INSERT INTO `qs_hotword` VALUES ('14014', '现货操盘手', '14');
INSERT INTO `qs_hotword` VALUES ('14015', '电话邀约员', '23');
INSERT INTO `qs_hotword` VALUES ('14033', '电话销售客服', '13');
INSERT INTO `qs_hotword` VALUES ('14041', '电话业务', '47');
INSERT INTO `qs_hotword` VALUES ('14132', '办事员', '11');
INSERT INTO `qs_hotword` VALUES ('14157', '急招服务员', '11');
INSERT INTO `qs_hotword` VALUES ('14177', '美发助理', '17');
INSERT INTO `qs_hotword` VALUES ('14196', '会议服务员', '25');
INSERT INTO `qs_hotword` VALUES ('14216', '审核专员', '14');
INSERT INTO `qs_hotword` VALUES ('14243', '业务文秘', '15');
INSERT INTO `qs_hotword` VALUES ('14273', '足疗师', '23');
INSERT INTO `qs_hotword` VALUES ('14274', '高级美容师', '16');
INSERT INTO `qs_hotword` VALUES ('14285', '营养咨询师', '24');
INSERT INTO `qs_hotword` VALUES ('14298', '电话理财专员', '23');
INSERT INTO `qs_hotword` VALUES ('14334', '急招销售代表', '11');
INSERT INTO `qs_hotword` VALUES ('14365', '会议接待', '13');
INSERT INTO `qs_hotword` VALUES ('14372', '电话咨询', '35');
INSERT INTO `qs_hotword` VALUES ('14395', '消防中控', '11');
INSERT INTO `qs_hotword` VALUES ('14401', '洗衣工', '10');
INSERT INTO `qs_hotword` VALUES ('14424', '客户服务顾问', '10');
INSERT INTO `qs_hotword` VALUES ('14441', '美容学徒', '21');
INSERT INTO `qs_hotword` VALUES ('14447', '全职英语教师', '13');
INSERT INTO `qs_hotword` VALUES ('14519', '销售培训生', '20');
INSERT INTO `qs_hotword` VALUES ('14540', '吧台主管', '10');
INSERT INTO `qs_hotword` VALUES ('14548', '咨客', '27');
INSERT INTO `qs_hotword` VALUES ('14551', '店面助理', '34');
INSERT INTO `qs_hotword` VALUES ('14571', '酒店服务员', '29');
INSERT INTO `qs_hotword` VALUES ('14668', '咖啡厅服务员', '13');
INSERT INTO `qs_hotword` VALUES ('14679', '医师助理', '10');
INSERT INTO `qs_hotword` VALUES ('14710', '二手房销售', '14');
INSERT INTO `qs_hotword` VALUES ('14748', '热线客服', '11');
INSERT INTO `qs_hotword` VALUES ('14749', '保险业务员', '39');
INSERT INTO `qs_hotword` VALUES ('14752', 'SEO经理', '11');
INSERT INTO `qs_hotword` VALUES ('14796', '淘宝运营经理', '18');
INSERT INTO `qs_hotword` VALUES ('14857', '生产跟单员', '20');
INSERT INTO `qs_hotword` VALUES ('14863', '泊车员', '12');
INSERT INTO `qs_hotword` VALUES ('14880', '放射科医生', '19');
INSERT INTO `qs_hotword` VALUES ('14981', '证券分析师', '33');
INSERT INTO `qs_hotword` VALUES ('14995', '保险业务主管', '10');
INSERT INTO `qs_hotword` VALUES ('15032', '电话营销精英', '18');
INSERT INTO `qs_hotword` VALUES ('15037', '柜员', '11');
INSERT INTO `qs_hotword` VALUES ('15057', '区域服务', '10');
INSERT INTO `qs_hotword` VALUES ('15063', '网站工程师', '21');
INSERT INTO `qs_hotword` VALUES ('15073', '服务主管', '26');
INSERT INTO `qs_hotword` VALUES ('15074', '安保员', '32');
INSERT INTO `qs_hotword` VALUES ('15079', '打荷', '30');
INSERT INTO `qs_hotword` VALUES ('15090', '住院医生', '12');
INSERT INTO `qs_hotword` VALUES ('15099', '放射科医师', '13');
INSERT INTO `qs_hotword` VALUES ('15151', '收派员', '11');
INSERT INTO `qs_hotword` VALUES ('15174', '前台领班', '22');
INSERT INTO `qs_hotword` VALUES ('15240', '健身教练', '12');
INSERT INTO `qs_hotword` VALUES ('15309', '信用卡推广员', '17');
INSERT INTO `qs_hotword` VALUES ('15349', '培训总监', '46');
INSERT INTO `qs_hotword` VALUES ('15424', '救生员', '25');
INSERT INTO `qs_hotword` VALUES ('15425', '运营督导', '11');
INSERT INTO `qs_hotword` VALUES ('15428', '选择大于努力', '14');
INSERT INTO `qs_hotword` VALUES ('15439', '储备店经理', '16');
INSERT INTO `qs_hotword` VALUES ('15443', '高级业务员', '13');
INSERT INTO `qs_hotword` VALUES ('15507', '市场销售助理', '10');
INSERT INTO `qs_hotword` VALUES ('15512', '帮厨', '24');
INSERT INTO `qs_hotword` VALUES ('15526', '足疗技师', '18');
INSERT INTO `qs_hotword` VALUES ('15553', '职业经理人', '56');
INSERT INTO `qs_hotword` VALUES ('15589', '总监', '13');
INSERT INTO `qs_hotword` VALUES ('15613', '直通车专员', '12');
INSERT INTO `qs_hotword` VALUES ('15638', '淘宝文案策划', '12');
INSERT INTO `qs_hotword` VALUES ('15646', '车险专员', '25');
INSERT INTO `qs_hotword` VALUES ('15728', '专员', '716');
INSERT INTO `qs_hotword` VALUES ('15790', '保险顾问', '36');
INSERT INTO `qs_hotword` VALUES ('15873', '西餐服务员', '14');
INSERT INTO `qs_hotword` VALUES ('15894', '网络策划', '15');
INSERT INTO `qs_hotword` VALUES ('15957', '产品推广专员', '27');
INSERT INTO `qs_hotword` VALUES ('16034', '工程维修员', '19');
INSERT INTO `qs_hotword` VALUES ('16062', '足疗保健', '15');
INSERT INTO `qs_hotword` VALUES ('16119', '淘宝销售', '12');
INSERT INTO `qs_hotword` VALUES ('16133', '发型师', '23');
INSERT INTO `qs_hotword` VALUES ('16146', '维修专员', '12');
INSERT INTO `qs_hotword` VALUES ('16172', '法制催款', '10');
INSERT INTO `qs_hotword` VALUES ('16206', '理疗师', '31');
INSERT INTO `qs_hotword` VALUES ('16209', '领位', '11');
INSERT INTO `qs_hotword` VALUES ('16229', '电话回访', '14');
INSERT INTO `qs_hotword` VALUES ('16241', '领位员', '12');
INSERT INTO `qs_hotword` VALUES ('16317', '实习主管', '11');
INSERT INTO `qs_hotword` VALUES ('16338', '陈列员', '16');
INSERT INTO `qs_hotword` VALUES ('16341', '房产销售员', '11');
INSERT INTO `qs_hotword` VALUES ('16386', '妇科医生', '45');
INSERT INTO `qs_hotword` VALUES ('16403', '内科医生', '53');
INSERT INTO `qs_hotword` VALUES ('16441', '高级助理', '14');
INSERT INTO `qs_hotword` VALUES ('16555', '网站美编', '12');
INSERT INTO `qs_hotword` VALUES ('16579', '网页美工设计', '15');
INSERT INTO `qs_hotword` VALUES ('16658', '售后部经理', '12');
INSERT INTO `qs_hotword` VALUES ('16677', '兼职讲师', '12');
INSERT INTO `qs_hotword` VALUES ('16686', '前台客服专员', '12');
INSERT INTO `qs_hotword` VALUES ('16689', '餐厅收银员', '15');
INSERT INTO `qs_hotword` VALUES ('16756', '卖场经理', '14');
INSERT INTO `qs_hotword` VALUES ('16757', '电子商务销售', '10');
INSERT INTO `qs_hotword` VALUES ('16767', '网络咨询主管', '10');
INSERT INTO `qs_hotword` VALUES ('16789', '房地产业务员', '18');
INSERT INTO `qs_hotword` VALUES ('16812', '商品助理', '26');
INSERT INTO `qs_hotword` VALUES ('16936', '经理秘书', '16');
INSERT INTO `qs_hotword` VALUES ('16953', '信控专员', '11');
INSERT INTO `qs_hotword` VALUES ('16963', '接待专员', '19');
INSERT INTO `qs_hotword` VALUES ('16967', '网站推广专员', '60');
INSERT INTO `qs_hotword` VALUES ('16974', '公司副总经理', '16');
INSERT INTO `qs_hotword` VALUES ('17186', '保险理赔', '20');
INSERT INTO `qs_hotword` VALUES ('17190', '工艺设计', '11');
INSERT INTO `qs_hotword` VALUES ('17199', '房产业务员', '18');
INSERT INTO `qs_hotword` VALUES ('17213', '电话理财顾问', '10');
INSERT INTO `qs_hotword` VALUES ('17218', '理财分析师', '13');
INSERT INTO `qs_hotword` VALUES ('17292', '后勤人员', '12');
INSERT INTO `qs_hotword` VALUES ('17346', '营业部经理', '46');
INSERT INTO `qs_hotword` VALUES ('17391', '电话销售助理', '17');
INSERT INTO `qs_hotword` VALUES ('17403', '幼教老师', '14');
INSERT INTO `qs_hotword` VALUES ('17408', '理财助理', '11');
INSERT INTO `qs_hotword` VALUES ('17455', '电话咨询医生', '14');
INSERT INTO `qs_hotword` VALUES ('17659', '辅助工', '13');
INSERT INTO `qs_hotword` VALUES ('17675', '网络文案', '30');
INSERT INTO `qs_hotword` VALUES ('17681', '网络咨询专员', '11');
INSERT INTO `qs_hotword` VALUES ('17688', '售前客服', '14');
INSERT INTO `qs_hotword` VALUES ('17757', '内审专员', '16');
INSERT INTO `qs_hotword` VALUES ('17769', '工具管理员', '14');
INSERT INTO `qs_hotword` VALUES ('17839', '摄影师助理', '10');
INSERT INTO `qs_hotword` VALUES ('17858', '保险销售', '10');
INSERT INTO `qs_hotword` VALUES ('17915', '品控经理', '24');
INSERT INTO `qs_hotword` VALUES ('17954', '实习经理', '10');
INSERT INTO `qs_hotword` VALUES ('17998', '护理部主任', '22');
INSERT INTO `qs_hotword` VALUES ('18001', '保洁领班', '13');
INSERT INTO `qs_hotword` VALUES ('18120', '工程专员', '18');
INSERT INTO `qs_hotword` VALUES ('18175', '资深销售代表', '12');
INSERT INTO `qs_hotword` VALUES ('18197', '数据员', '11');
INSERT INTO `qs_hotword` VALUES ('18229', '皮肤科医生', '21');
INSERT INTO `qs_hotword` VALUES ('18236', '合伙人', '10');
INSERT INTO `qs_hotword` VALUES ('18244', '高级美容导师', '19');
INSERT INTO `qs_hotword` VALUES ('18261', '市场调研经理', '10');
INSERT INTO `qs_hotword` VALUES ('18347', '助理文秘', '19');
INSERT INTO `qs_hotword` VALUES ('18389', '信息文员', '11');
INSERT INTO `qs_hotword` VALUES ('18399', '优秀导购', '27');
INSERT INTO `qs_hotword` VALUES ('18726', '收银主管', '42');
INSERT INTO `qs_hotword` VALUES ('18761', '高级客服专员', '11');
INSERT INTO `qs_hotword` VALUES ('18795', '测试经理', '41');
INSERT INTO `qs_hotword` VALUES ('18800', '美容销售顾问', '10');
INSERT INTO `qs_hotword` VALUES ('18882', '普车工', '13');
INSERT INTO `qs_hotword` VALUES ('18888', '美工设计师', '28');
INSERT INTO `qs_hotword` VALUES ('18896', '高级理财顾问', '19');
INSERT INTO `qs_hotword` VALUES ('18970', '口腔护士', '11');
INSERT INTO `qs_hotword` VALUES ('18976', '车间普工', '12');
INSERT INTO `qs_hotword` VALUES ('19043', '客户关系专员', '30');
INSERT INTO `qs_hotword` VALUES ('19062', '机械维修工', '27');
INSERT INTO `qs_hotword` VALUES ('19155', '话务专员', '10');
INSERT INTO `qs_hotword` VALUES ('19194', '业务销售专员', '10');
INSERT INTO `qs_hotword` VALUES ('19208', '麻醉医生', '20');
INSERT INTO `qs_hotword` VALUES ('19271', '美容助理', '12');
INSERT INTO `qs_hotword` VALUES ('19299', '后勤助理', '12');
INSERT INTO `qs_hotword` VALUES ('19339', 'KA业务主管', '26');
INSERT INTO `qs_hotword` VALUES ('19345', '餐饮传菜员', '31');
INSERT INTO `qs_hotword` VALUES ('19348', '稽核会计', '12');
INSERT INTO `qs_hotword` VALUES ('19379', '见习店长', '20');
INSERT INTO `qs_hotword` VALUES ('19461', '钢琴教师', '20');
INSERT INTO `qs_hotword` VALUES ('19473', '工程技工', '25');
INSERT INTO `qs_hotword` VALUES ('19495', '麻醉医师', '26');
INSERT INTO `qs_hotword` VALUES ('19534', '副总裁助理', '17');
INSERT INTO `qs_hotword` VALUES ('19535', '工程部文员', '13');
INSERT INTO `qs_hotword` VALUES ('19582', '退伍军人', '20');
INSERT INTO `qs_hotword` VALUES ('19586', '税务专员', '23');
INSERT INTO `qs_hotword` VALUES ('19626', '楼面经理', '45');
INSERT INTO `qs_hotword` VALUES ('19674', '礼宾员', '49');
INSERT INTO `qs_hotword` VALUES ('19884', '资深店长', '22');
INSERT INTO `qs_hotword` VALUES ('19920', '巡检员', '15');
INSERT INTO `qs_hotword` VALUES ('19960', '水工', '10');
INSERT INTO `qs_hotword` VALUES ('20006', '网络运营总监', '14');
INSERT INTO `qs_hotword` VALUES ('20039', '餐厅传菜员', '12');
INSERT INTO `qs_hotword` VALUES ('20073', '产品培训讲师', '14');
INSERT INTO `qs_hotword` VALUES ('20198', '车险顾问', '10');
INSERT INTO `qs_hotword` VALUES ('20200', '促销经理', '17');
INSERT INTO `qs_hotword` VALUES ('20239', '网站客服专员', '17');
INSERT INTO `qs_hotword` VALUES ('20354', '高级美容顾问', '57');
INSERT INTO `qs_hotword` VALUES ('20373', '客房部主管', '13');
INSERT INTO `qs_hotword` VALUES ('20535', '网络运营经理', '14');
INSERT INTO `qs_hotword` VALUES ('20579', '教学督导', '10');
INSERT INTO `qs_hotword` VALUES ('20641', '机修主管', '13');
INSERT INTO `qs_hotword` VALUES ('20658', '内勤外勤', '10');
INSERT INTO `qs_hotword` VALUES ('20746', '施工助理', '24');
INSERT INTO `qs_hotword` VALUES ('20750', '电梯工', '24');
INSERT INTO `qs_hotword` VALUES ('20761', '线切割工', '11');
INSERT INTO `qs_hotword` VALUES ('20806', '电话行销专员', '15');
INSERT INTO `qs_hotword` VALUES ('20857', '中餐服务员', '13');
INSERT INTO `qs_hotword` VALUES ('20876', '经营主管', '10');
INSERT INTO `qs_hotword` VALUES ('20939', '客户服务员', '18');
INSERT INTO `qs_hotword` VALUES ('20961', '综合文员', '43');
INSERT INTO `qs_hotword` VALUES ('20984', '外联人员', '13');
INSERT INTO `qs_hotword` VALUES ('20996', '市场营销总监', '48');
INSERT INTO `qs_hotword` VALUES ('21079', '招生咨询师', '19');
INSERT INTO `qs_hotword` VALUES ('21147', '中医师', '42');
INSERT INTO `qs_hotword` VALUES ('21160', '网络销售经理', '22');
INSERT INTO `qs_hotword` VALUES ('21163', '资深导购', '11');
INSERT INTO `qs_hotword` VALUES ('21226', '儿童摄影师', '16');
INSERT INTO `qs_hotword` VALUES ('21239', '淘宝商城美工', '25');
INSERT INTO `qs_hotword` VALUES ('21360', '销售接待', '11');
INSERT INTO `qs_hotword` VALUES ('21530', '招生助理', '14');
INSERT INTO `qs_hotword` VALUES ('21560', '厨房学徒', '11');
INSERT INTO `qs_hotword` VALUES ('21609', '外链专员', '11');
INSERT INTO `qs_hotword` VALUES ('21638', '高级管理人员', '17');
INSERT INTO `qs_hotword` VALUES ('21744', '部门秘书', '14');
INSERT INTO `qs_hotword` VALUES ('21761', '区域拓展专员', '27');
INSERT INTO `qs_hotword` VALUES ('21792', '中医医生', '12');
INSERT INTO `qs_hotword` VALUES ('21814', '麻醉师', '24');
INSERT INTO `qs_hotword` VALUES ('21821', 'PA技工', '11');
INSERT INTO `qs_hotword` VALUES ('21830', '宴会销售经理', '10');
INSERT INTO `qs_hotword` VALUES ('21923', '医务科长', '16');
INSERT INTO `qs_hotword` VALUES ('21957', '楼面部长', '17');
INSERT INTO `qs_hotword` VALUES ('21971', '工艺设计师', '11');
INSERT INTO `qs_hotword` VALUES ('22075', '市场营销员', '43');
INSERT INTO `qs_hotword` VALUES ('22078', '前厅服务员', '12');
INSERT INTO `qs_hotword` VALUES ('22168', '门童', '10');
INSERT INTO `qs_hotword` VALUES ('22213', '妇科医师', '14');
INSERT INTO `qs_hotword` VALUES ('22256', '医生', '44');
INSERT INTO `qs_hotword` VALUES ('22258', '住院医师', '17');
INSERT INTO `qs_hotword` VALUES ('22307', '美容院店长', '21');
INSERT INTO `qs_hotword` VALUES ('22442', '销售业务精英', '17');
INSERT INTO `qs_hotword` VALUES ('22476', '工程项目管理', '13');
INSERT INTO `qs_hotword` VALUES ('22567', '客服接待', '23');
INSERT INTO `qs_hotword` VALUES ('22702', '保险业务经理', '11');
INSERT INTO `qs_hotword` VALUES ('22720', '整形医生', '11');
INSERT INTO `qs_hotword` VALUES ('22884', '美疗师', '13');
INSERT INTO `qs_hotword` VALUES ('22893', '医疗文案', '13');
INSERT INTO `qs_hotword` VALUES ('22960', '地产经纪人', '13');
INSERT INTO `qs_hotword` VALUES ('23050', '市场管理员', '21');
INSERT INTO `qs_hotword` VALUES ('23205', '加盟专员', '12');
INSERT INTO `qs_hotword` VALUES ('23227', '信贷管理员', '13');
INSERT INTO `qs_hotword` VALUES ('23306', '管理员', '12');
INSERT INTO `qs_hotword` VALUES ('23362', '网站内容编辑', '16');
INSERT INTO `qs_hotword` VALUES ('23569', '媒介销售', '11');
INSERT INTO `qs_hotword` VALUES ('23589', '服务生', '18');
INSERT INTO `qs_hotword` VALUES ('23751', '警卫', '10');
INSERT INTO `qs_hotword` VALUES ('23766', '投资经纪人', '19');
INSERT INTO `qs_hotword` VALUES ('23832', '电话接线员', '12');
INSERT INTO `qs_hotword` VALUES ('23849', '招商员', '10');
INSERT INTO `qs_hotword` VALUES ('23856', '维修顾问', '10');
INSERT INTO `qs_hotword` VALUES ('23887', '营销副总经理', '25');
INSERT INTO `qs_hotword` VALUES ('23986', '商场促销员', '24');
INSERT INTO `qs_hotword` VALUES ('24029', '网络营销顾问', '27');
INSERT INTO `qs_hotword` VALUES ('24066', '理财经纪人', '11');
INSERT INTO `qs_hotword` VALUES ('24126', '见习助理', '51');
INSERT INTO `qs_hotword` VALUES ('24173', '作文老师', '19');
INSERT INTO `qs_hotword` VALUES ('24229', '网络技术员', '11');
INSERT INTO `qs_hotword` VALUES ('24250', '空调主管', '17');
INSERT INTO `qs_hotword` VALUES ('24279', '社保专员', '10');
INSERT INTO `qs_hotword` VALUES ('24293', '水吧吧员', '11');
INSERT INTO `qs_hotword` VALUES ('24311', '寿险顾问', '16');
INSERT INTO `qs_hotword` VALUES ('24362', '区域总经理', '19');
INSERT INTO `qs_hotword` VALUES ('24368', '仓库员', '11');
INSERT INTO `qs_hotword` VALUES ('24596', '资深投资顾问', '10');
INSERT INTO `qs_hotword` VALUES ('24638', '金融投资顾问', '12');
INSERT INTO `qs_hotword` VALUES ('24672', '楼面主管', '33');
INSERT INTO `qs_hotword` VALUES ('24727', '兼职业务经理', '16');
INSERT INTO `qs_hotword` VALUES ('24734', '渠道代表', '18');
INSERT INTO `qs_hotword` VALUES ('25010', '电子商务总监', '15');
INSERT INTO `qs_hotword` VALUES ('25168', '招生代理', '23');
INSERT INTO `qs_hotword` VALUES ('25187', '高级美导', '13');
INSERT INTO `qs_hotword` VALUES ('25249', '系统维护', '13');
INSERT INTO `qs_hotword` VALUES ('25253', '前台咨询师', '10');
INSERT INTO `qs_hotword` VALUES ('25316', '市场促销员', '20');
INSERT INTO `qs_hotword` VALUES ('25396', '折弯工', '13');
INSERT INTO `qs_hotword` VALUES ('25505', '维修经理', '15');
INSERT INTO `qs_hotword` VALUES ('25597', '餐厅见习助理', '10');
INSERT INTO `qs_hotword` VALUES ('25628', '会计经理', '43');
INSERT INTO `qs_hotword` VALUES ('25735', '安保', '12');
INSERT INTO `qs_hotword` VALUES ('25785', 'BD经理', '13');
INSERT INTO `qs_hotword` VALUES ('25815', '销售导购', '10');
INSERT INTO `qs_hotword` VALUES ('25848', '切纸机长', '10');
INSERT INTO `qs_hotword` VALUES ('25856', '检验技师', '11');
INSERT INTO `qs_hotword` VALUES ('25970', '物流会计', '26');
INSERT INTO `qs_hotword` VALUES ('26174', '按摩技师', '10');
INSERT INTO `qs_hotword` VALUES ('26206', '网页设计人员', '13');
INSERT INTO `qs_hotword` VALUES ('26304', '对外汉语教师', '10');
INSERT INTO `qs_hotword` VALUES ('26307', '法律专员', '11');
INSERT INTO `qs_hotword` VALUES ('26330', '签证专员', '13');
INSERT INTO `qs_hotword` VALUES ('26464', 'ktv服务员', '10');
INSERT INTO `qs_hotword` VALUES ('26482', '效果图绘图员', '26');
INSERT INTO `qs_hotword` VALUES ('26495', '客房经理', '13');
INSERT INTO `qs_hotword` VALUES ('26506', '高级策划经理', '17');
INSERT INTO `qs_hotword` VALUES ('26529', '车辆调度', '23');
INSERT INTO `qs_hotword` VALUES ('26540', '配饰设计师', '13');
INSERT INTO `qs_hotword` VALUES ('26556', '留学顾问', '40');
INSERT INTO `qs_hotword` VALUES ('26564', '研究助理', '11');
INSERT INTO `qs_hotword` VALUES ('26591', '网络销售代表', '28');
INSERT INTO `qs_hotword` VALUES ('26598', '商务精英', '31');
INSERT INTO `qs_hotword` VALUES ('26612', '派单员', '16');
INSERT INTO `qs_hotword` VALUES ('26615', '直营主管', '13');
INSERT INTO `qs_hotword` VALUES ('26674', '文员内勤', '14');
INSERT INTO `qs_hotword` VALUES ('26731', '酒店前台接待', '30');
INSERT INTO `qs_hotword` VALUES ('26759', '出境计调', '10');
INSERT INTO `qs_hotword` VALUES ('26787', '档案资料管理员', '77');
INSERT INTO `qs_hotword` VALUES ('26789', '物业管理主管', '18');
INSERT INTO `qs_hotword` VALUES ('26790', 'ERP项目经理', '14');
INSERT INTO `qs_hotword` VALUES ('26792', '技术研发工程师', '122');
INSERT INTO `qs_hotword` VALUES ('26795', 'JAVA开发工程师', '596');
INSERT INTO `qs_hotword` VALUES ('26800', 'C++软件工程师', '122');
INSERT INTO `qs_hotword` VALUES ('26805', '物业管理经理', '52');
INSERT INTO `qs_hotword` VALUES ('26816', '企业策划人员', '76');
INSERT INTO `qs_hotword` VALUES ('26822', '系统集成工程师', '240');
INSERT INTO `qs_hotword` VALUES ('26823', '高级售前工程师', '13');
INSERT INTO `qs_hotword` VALUES ('26827', '大客户销售经理', '99');
INSERT INTO `qs_hotword` VALUES ('26831', '现场咨询', '13');
INSERT INTO `qs_hotword` VALUES ('26845', '技术支持工程师', '1194');
INSERT INTO `qs_hotword` VALUES ('26854', '展台设计', '18');
INSERT INTO `qs_hotword` VALUES ('26861', 'Java工程师', '343');
INSERT INTO `qs_hotword` VALUES ('26862', '平面设计实习生', '30');
INSERT INTO `qs_hotword` VALUES ('26874', '概预算工程师', '11');
INSERT INTO `qs_hotword` VALUES ('26883', '游戏客服', '40');
INSERT INTO `qs_hotword` VALUES ('26884', '游戏美工', '23');
INSERT INTO `qs_hotword` VALUES ('26886', '高级软件工程师', '398');
INSERT INTO `qs_hotword` VALUES ('26895', '售后服务部经理', '24');
INSERT INTO `qs_hotword` VALUES ('26898', '室内外装潢设计师', '213');
INSERT INTO `qs_hotword` VALUES ('26899', '高级室内设计师', '25');
INSERT INTO `qs_hotword` VALUES ('26900', 'JAVA软件工程师', '542');
INSERT INTO `qs_hotword` VALUES ('26903', 'PHP开发工程师', '249');
INSERT INTO `qs_hotword` VALUES ('26905', 'cad工程师', '10');
INSERT INTO `qs_hotword` VALUES ('26915', '软件测试工程师', '876');
INSERT INTO `qs_hotword` VALUES ('26927', '售后服务工程师', '352');
INSERT INTO `qs_hotword` VALUES ('26928', '电子商务顾问', '13');
INSERT INTO `qs_hotword` VALUES ('26930', '文档工程师', '32');
INSERT INTO `qs_hotword` VALUES ('26936', '注册资产评估师', '13');
INSERT INTO `qs_hotword` VALUES ('26940', '网站开发工程师', '87');
INSERT INTO `qs_hotword` VALUES ('26951', '配置管理工程师', '27');
INSERT INTO `qs_hotword` VALUES ('26958', '零售专员', '13');
INSERT INTO `qs_hotword` VALUES ('26962', '商品数据分析员', '10');
INSERT INTO `qs_hotword` VALUES ('26964', '电子商务部经理', '28');
INSERT INTO `qs_hotword` VALUES ('26974', 'AS3开发工程师', '13');
INSERT INTO `qs_hotword` VALUES ('26982', '后期剪辑', '14');
INSERT INTO `qs_hotword` VALUES ('26989', '生产计划协调员', '26');
INSERT INTO `qs_hotword` VALUES ('26992', '广告客户总监', '37');
INSERT INTO `qs_hotword` VALUES ('27018', '网络营销推广专员', '11');
INSERT INTO `qs_hotword` VALUES ('27019', 'SEO优化专员', '26');
INSERT INTO `qs_hotword` VALUES ('27028', 'Delphi开发工程师', '26');
INSERT INTO `qs_hotword` VALUES ('27033', '外贸销售员', '17');
INSERT INTO `qs_hotword` VALUES ('27034', '4S店总经理', '42');
INSERT INTO `qs_hotword` VALUES ('27039', '行政副总', '32');
INSERT INTO `qs_hotword` VALUES ('27061', '物业助理', '29');
INSERT INTO `qs_hotword` VALUES ('27064', '店面设计', '13');
INSERT INTO `qs_hotword` VALUES ('27067', '土建造价工程师', '113');
INSERT INTO `qs_hotword` VALUES ('27070', '微博运营专员', '18');
INSERT INTO `qs_hotword` VALUES ('27072', '嵌入式软件工程师', '195');
INSERT INTO `qs_hotword` VALUES ('27077', '软件开发工程师', '540');
INSERT INTO `qs_hotword` VALUES ('27091', '信息安全工程师', '27');
INSERT INTO `qs_hotword` VALUES ('27095', '软件程序员', '14');
INSERT INTO `qs_hotword` VALUES ('27118', '电子商务运营经理', '17');
INSERT INTO `qs_hotword` VALUES ('27119', '.NET程序员', '159');
INSERT INTO `qs_hotword` VALUES ('27121', '医学信息传递代表', '16');
INSERT INTO `qs_hotword` VALUES ('27127', 'JAVA研发工程师', '47');
INSERT INTO `qs_hotword` VALUES ('27129', '项目实施工程师', '143');
INSERT INTO `qs_hotword` VALUES ('27152', '资深平面设计师', '261');
INSERT INTO `qs_hotword` VALUES ('27158', 'Android工程师', '28');
INSERT INTO `qs_hotword` VALUES ('27163', '风险控制专员', '24');
INSERT INTO `qs_hotword` VALUES ('27177', '注册电气工程师', '14');
INSERT INTO `qs_hotword` VALUES ('27179', '软件工程师java', '29');
INSERT INTO `qs_hotword` VALUES ('27184', '高级硬件工程师', '108');
INSERT INTO `qs_hotword` VALUES ('27185', '人力资源部经理', '173');
INSERT INTO `qs_hotword` VALUES ('27195', '网站推广主管', '10');
INSERT INTO `qs_hotword` VALUES ('27201', '系统架构设计师', '54');
INSERT INTO `qs_hotword` VALUES ('27202', '.net软件工程师', '225');
INSERT INTO `qs_hotword` VALUES ('27205', '人力资源部副经理', '11');
INSERT INTO `qs_hotword` VALUES ('27215', 'web测试工程师', '22');
INSERT INTO `qs_hotword` VALUES ('27238', '硬件研发工程师', '58');
INSERT INTO `qs_hotword` VALUES ('27239', '机械研发工程师', '15');
INSERT INTO `qs_hotword` VALUES ('27249', '软件研发工程师', '77');
INSERT INTO `qs_hotword` VALUES ('27251', '高级网页设计师', '82');
INSERT INTO `qs_hotword` VALUES ('27253', '单片机开发', '16');
INSERT INTO `qs_hotword` VALUES ('27254', '驻外分公司经理', '12');
INSERT INTO `qs_hotword` VALUES ('27261', '质量控制工程师', '11');
INSERT INTO `qs_hotword` VALUES ('27282', '项目管理经理', '15');
INSERT INTO `qs_hotword` VALUES ('27288', '房地产销售经理', '217');
INSERT INTO `qs_hotword` VALUES ('27322', 'PCB设计工程师', '17');
INSERT INTO `qs_hotword` VALUES ('27333', '高级开发工程师', '19');
INSERT INTO `qs_hotword` VALUES ('27355', '.net开发工程师', '240');
INSERT INTO `qs_hotword` VALUES ('27402', '销售助理实习生', '14');
INSERT INTO `qs_hotword` VALUES ('27419', 'BD', '10');
INSERT INTO `qs_hotword` VALUES ('27421', '费用会计', '45');
INSERT INTO `qs_hotword` VALUES ('27424', '单片机开发工程师', '40');
INSERT INTO `qs_hotword` VALUES ('27425', '硬件测试工程师', '98');
INSERT INTO `qs_hotword` VALUES ('27426', '硬件开发工程师', '84');
INSERT INTO `qs_hotword` VALUES ('27427', '手机测试工程师', '52');
INSERT INTO `qs_hotword` VALUES ('27430', '媒体销售专员', '51');
INSERT INTO `qs_hotword` VALUES ('27431', '广告客户主管', '20');
INSERT INTO `qs_hotword` VALUES ('27446', '面料辅料采购', '26');
INSERT INTO `qs_hotword` VALUES ('27453', '呼叫中心电话销售', '18');
INSERT INTO `qs_hotword` VALUES ('27463', '技术销售工程师', '13');
INSERT INTO `qs_hotword` VALUES ('27479', '产品结构工程师', '17');
INSERT INTO `qs_hotword` VALUES ('27488', 'JAVA高级程序员', '37');
INSERT INTO `qs_hotword` VALUES ('27506', '游戏系统策划', '22');
INSERT INTO `qs_hotword` VALUES ('27523', '技术服务工程师', '235');
INSERT INTO `qs_hotword` VALUES ('27524', 'C++高级工程师', '12');
INSERT INTO `qs_hotword` VALUES ('27530', '系统开发工程师', '15');
INSERT INTO `qs_hotword` VALUES ('27537', 'Flex开发工程师', '45');
INSERT INTO `qs_hotword` VALUES ('27540', '品牌推广主管', '14');
INSERT INTO `qs_hotword` VALUES ('27544', 'PHP软件工程师', '71');
INSERT INTO `qs_hotword` VALUES ('27558', '客服顾问', '15');
INSERT INTO `qs_hotword` VALUES ('27559', '二手车评估师', '30');
INSERT INTO `qs_hotword` VALUES ('27570', '网站开发程序员', '10');
INSERT INTO `qs_hotword` VALUES ('27575', '资深网页设计师', '36');
INSERT INTO `qs_hotword` VALUES ('27578', 'C#软件工程师', '88');
INSERT INTO `qs_hotword` VALUES ('27581', '生产总监', '79');
INSERT INTO `qs_hotword` VALUES ('27583', '餐饮渠道经理', '13');
INSERT INTO `qs_hotword` VALUES ('27591', 'Java程序员', '278');
INSERT INTO `qs_hotword` VALUES ('27597', '国际贸易业务员', '33');
INSERT INTO `qs_hotword` VALUES ('27602', '签证顾问', '13');
INSERT INTO `qs_hotword` VALUES ('27606', '建筑结构工程师', '35');
INSERT INTO `qs_hotword` VALUES ('27610', '弱电设计工程师', '23');
INSERT INTO `qs_hotword` VALUES ('27621', '高级电气工程师', '31');
INSERT INTO `qs_hotword` VALUES ('27628', '.net项目经理', '24');
INSERT INTO `qs_hotword` VALUES ('27629', '建筑规划设计师', '11');
INSERT INTO `qs_hotword` VALUES ('27631', '.net高级程序员', '21');
INSERT INTO `qs_hotword` VALUES ('27635', '技术研发经理', '32');
INSERT INTO `qs_hotword` VALUES ('27638', '高级研发工程师', '48');
INSERT INTO `qs_hotword` VALUES ('27641', '.NET高级工程师', '23');
INSERT INTO `qs_hotword` VALUES ('27659', '行政助理兼前台', '48');
INSERT INTO `qs_hotword` VALUES ('27664', '数据挖掘工程师', '29');
INSERT INTO `qs_hotword` VALUES ('27671', '客户关系经理', '15');
INSERT INTO `qs_hotword` VALUES ('27672', '房地产策划经理', '19');
INSERT INTO `qs_hotword` VALUES ('27676', '房地产销售精英', '29');
INSERT INTO `qs_hotword` VALUES ('27697', '制作经理', '27');
INSERT INTO `qs_hotword` VALUES ('27714', '中文编辑', '12');
INSERT INTO `qs_hotword` VALUES ('27724', '结构设计工程师', '95');
INSERT INTO `qs_hotword` VALUES ('27736', 'C#软件开发工程师', '44');
INSERT INTO `qs_hotword` VALUES ('27759', '产品测试工程师', '12');
INSERT INTO `qs_hotword` VALUES ('27760', '财务顾问', '40');
INSERT INTO `qs_hotword` VALUES ('27768', '网络维护工程师', '42');
INSERT INTO `qs_hotword` VALUES ('27769', '软件销售工程师', '82');
INSERT INTO `qs_hotword` VALUES ('27772', '初级软件工程师', '18');
INSERT INTO `qs_hotword` VALUES ('27777', 'BI工程师', '26');
INSERT INTO `qs_hotword` VALUES ('27778', '会销讲师', '16');
INSERT INTO `qs_hotword` VALUES ('27800', '信息编辑', '38');
INSERT INTO `qs_hotword` VALUES ('27803', '高级会计', '20');
INSERT INTO `qs_hotword` VALUES ('27817', '房产销售代表', '18');
INSERT INTO `qs_hotword` VALUES ('27822', '软件开发主管', '25');
INSERT INTO `qs_hotword` VALUES ('27829', 'C++开发工程师', '127');
INSERT INTO `qs_hotword` VALUES ('27830', '游戏开发工程师', '16');
INSERT INTO `qs_hotword` VALUES ('27833', 'linux系统工程师', '10');
INSERT INTO `qs_hotword` VALUES ('27834', '客户执行AE', '12');
INSERT INTO `qs_hotword` VALUES ('27835', '餐饮部主管', '11');
INSERT INTO `qs_hotword` VALUES ('27836', '财务部收银员', '11');
INSERT INTO `qs_hotword` VALUES ('27838', '安保主管', '17');
INSERT INTO `qs_hotword` VALUES ('27843', '网站美工设计师', '22');
INSERT INTO `qs_hotword` VALUES ('27847', '资深美术指导', '25');
INSERT INTO `qs_hotword` VALUES ('27864', '实施项目经理', '20');
INSERT INTO `qs_hotword` VALUES ('27866', '嵌入式系统工程师', '13');
INSERT INTO `qs_hotword` VALUES ('27867', '电子技术工程师', '25');
INSERT INTO `qs_hotword` VALUES ('27873', '涉外商标代理人', '10');
INSERT INTO `qs_hotword` VALUES ('27885', 'Receptionist', '23');
INSERT INTO `qs_hotword` VALUES ('27887', '设备维护员', '10');
INSERT INTO `qs_hotword` VALUES ('27890', '服装陈列师', '49');
INSERT INTO `qs_hotword` VALUES ('27909', '.net研发工程师', '14');
INSERT INTO `qs_hotword` VALUES ('27914', '高级专员', '18');
INSERT INTO `qs_hotword` VALUES ('27940', '应用开发工程师', '11');
INSERT INTO `qs_hotword` VALUES ('27944', '系统维护工程师', '55');
INSERT INTO `qs_hotword` VALUES ('27947', 'linux工程师', '26');
INSERT INTO `qs_hotword` VALUES ('27952', '软件UI工程师', '57');
INSERT INTO `qs_hotword` VALUES ('27956', 'GIS开发工程师', '34');
INSERT INTO `qs_hotword` VALUES ('27965', '销售经理北京', '11');
INSERT INTO `qs_hotword` VALUES ('27967', '物业总监', '27');
INSERT INTO `qs_hotword` VALUES ('27984', '教务老师', '19');
INSERT INTO `qs_hotword` VALUES ('28001', '质量管理经理', '37');
INSERT INTO `qs_hotword` VALUES ('28002', '出纳cashier', '10');
INSERT INTO `qs_hotword` VALUES ('28003', '人力资源部部长', '18');
INSERT INTO `qs_hotword` VALUES ('28022', 'php研发工程师', '20');
INSERT INTO `qs_hotword` VALUES ('28024', 'VC++程序员', '14');
INSERT INTO `qs_hotword` VALUES ('28035', '软件实施工程师', '154');
INSERT INTO `qs_hotword` VALUES ('28066', '发行助理', '11');
INSERT INTO `qs_hotword` VALUES ('28076', '售后技术工程师', '34');
INSERT INTO `qs_hotword` VALUES ('28082', '系统运维工程师', '41');
INSERT INTO `qs_hotword` VALUES ('28083', 'Flash开发工程师', '41');
INSERT INTO `qs_hotword` VALUES ('28106', '讲解员', '18');
INSERT INTO `qs_hotword` VALUES ('28109', '执行经理', '21');
INSERT INTO `qs_hotword` VALUES ('28113', '需求工程师', '30');
INSERT INTO `qs_hotword` VALUES ('28122', 'OTC销售代表', '409');
INSERT INTO `qs_hotword` VALUES ('28124', '软件销售专员', '10');
INSERT INTO `qs_hotword` VALUES ('28126', '法务总监', '15');
INSERT INTO `qs_hotword` VALUES ('28131', 'web开发工程师', '91');
INSERT INTO `qs_hotword` VALUES ('28132', '研发助理', '55');
INSERT INTO `qs_hotword` VALUES ('28134', '渠道销售工程师', '19');
INSERT INTO `qs_hotword` VALUES ('28140', '淘宝客服主管', '31');
INSERT INTO `qs_hotword` VALUES ('28160', '高级php工程师', '18');
INSERT INTO `qs_hotword` VALUES ('28161', '室内装饰设计师', '18');
INSERT INTO `qs_hotword` VALUES ('28170', '产品部经理', '19');
INSERT INTO `qs_hotword` VALUES ('28179', '前台兼行政助理', '40');
INSERT INTO `qs_hotword` VALUES ('28180', '德语翻译', '20');
INSERT INTO `qs_hotword` VALUES ('28183', '保险理赔员', '23');
INSERT INTO `qs_hotword` VALUES ('28186', '.net工程师', '75');
INSERT INTO `qs_hotword` VALUES ('28187', '后期合成师', '10');
INSERT INTO `qs_hotword` VALUES ('28191', '高级java程序员', '14');
INSERT INTO `qs_hotword` VALUES ('28195', '游戏客服专员', '16');
INSERT INTO `qs_hotword` VALUES ('28205', '采购跟单', '29');
INSERT INTO `qs_hotword` VALUES ('28208', '学术推广专员', '14');
INSERT INTO `qs_hotword` VALUES ('28215', 'FLASH动画设计师', '20');
INSERT INTO `qs_hotword` VALUES ('28216', 'ERP实施顾问', '53');
INSERT INTO `qs_hotword` VALUES ('28223', '机械设计工程师', '304');
INSERT INTO `qs_hotword` VALUES ('28246', '机械工艺工程师', '17');
INSERT INTO `qs_hotword` VALUES ('28266', '医疗器械销售代表', '97');
INSERT INTO `qs_hotword` VALUES ('28269', 'Secretary', '27');
INSERT INTO `qs_hotword` VALUES ('28280', 'QC检验员', '18');
INSERT INTO `qs_hotword` VALUES ('28285', '分销业务员', '10');
INSERT INTO `qs_hotword` VALUES ('28296', '客户服务工程师', '25');
INSERT INTO `qs_hotword` VALUES ('28311', '业务销售人员', '12');
INSERT INTO `qs_hotword` VALUES ('28320', '高级JAVA工程师', '87');
INSERT INTO `qs_hotword` VALUES ('28348', '中级JAVA工程师', '11');
INSERT INTO `qs_hotword` VALUES ('28363', '项目秘书', '17');
INSERT INTO `qs_hotword` VALUES ('28383', '现场应用工程师', '26');
INSERT INTO `qs_hotword` VALUES ('28384', '高级系统工程师', '34');
INSERT INTO `qs_hotword` VALUES ('28385', '电力电子工程师', '14');
INSERT INTO `qs_hotword` VALUES ('28396', '专业培训师', '37');
INSERT INTO `qs_hotword` VALUES ('28403', '售前支持工程师', '22');
INSERT INTO `qs_hotword` VALUES ('28432', '地质工程师', '25');
INSERT INTO `qs_hotword` VALUES ('28436', '制程质量工程师', '10');
INSERT INTO `qs_hotword` VALUES ('28445', '项目成本控制专员', '11');
INSERT INTO `qs_hotword` VALUES ('28460', '前期制造工程师', '12');
INSERT INTO `qs_hotword` VALUES ('28465', '性能测试工程师', '17');
INSERT INTO `qs_hotword` VALUES ('28466', '设备维护工程师', '35');
INSERT INTO `qs_hotword` VALUES ('28473', '质量管理工程师', '38');
INSERT INTO `qs_hotword` VALUES ('28482', '电子维修工程师', '14');
INSERT INTO `qs_hotword` VALUES ('28492', '健康安全环境专员', '12');
INSERT INTO `qs_hotword` VALUES ('28520', '临床监查员CRA', '20');
INSERT INTO `qs_hotword` VALUES ('28522', 'seo外链专员', '14');
INSERT INTO `qs_hotword` VALUES ('28527', 'flash动画师', '15');
INSERT INTO `qs_hotword` VALUES ('28533', '产品成本分析专员', '10');
INSERT INTO `qs_hotword` VALUES ('28537', '市场部经理助理', '47');
INSERT INTO `qs_hotword` VALUES ('28541', '高级机械工程师', '23');
INSERT INTO `qs_hotword` VALUES ('28543', '安装造价员', '29');
INSERT INTO `qs_hotword` VALUES ('28554', '土建造价员', '34');
INSERT INTO `qs_hotword` VALUES ('28556', '人力资源实习生', '39');
INSERT INTO `qs_hotword` VALUES ('28592', '嵌入式软件开发', '49');
INSERT INTO `qs_hotword` VALUES ('28595', '高级咨询师', '25');
INSERT INTO `qs_hotword` VALUES ('28596', '前端开发工程师', '119');
INSERT INTO `qs_hotword` VALUES ('28615', '高级网络工程师', '41');
INSERT INTO `qs_hotword` VALUES ('28616', '给排水设计工程师', '14');
INSERT INTO `qs_hotword` VALUES ('28617', '暖通设计工程师', '17');
INSERT INTO `qs_hotword` VALUES ('28626', '技术研发主管', '16');
INSERT INTO `qs_hotword` VALUES ('28638', '园林绿化工程师', '22');
INSERT INTO `qs_hotword` VALUES ('28648', '照明设计师', '18');
INSERT INTO `qs_hotword` VALUES ('28667', '游戏运营专员', '14');
INSERT INTO `qs_hotword` VALUES ('28677', 'flash设计师', '23');
INSERT INTO `qs_hotword` VALUES ('28719', '房地产策划师', '32');
INSERT INTO `qs_hotword` VALUES ('28770', 'iphone工程师', '18');
INSERT INTO `qs_hotword` VALUES ('28772', '质量技术员', '12');
INSERT INTO `qs_hotword` VALUES ('28782', '数据处理工程师', '11');
INSERT INTO `qs_hotword` VALUES ('28788', '网页制作工程师', '13');
INSERT INTO `qs_hotword` VALUES ('28817', '媒介顾问', '11');
INSERT INTO `qs_hotword` VALUES ('28833', '运营编辑', '29');
INSERT INTO `qs_hotword` VALUES ('28835', '手机软件工程师', '12');
INSERT INTO `qs_hotword` VALUES ('28902', '业务发展经理', '74');
INSERT INTO `qs_hotword` VALUES ('28908', '广告销售总监', '16');
INSERT INTO `qs_hotword` VALUES ('28927', '软件销售经理', '51');
INSERT INTO `qs_hotword` VALUES ('28952', '电子商务客服专员', '12');
INSERT INTO `qs_hotword` VALUES ('28967', 'java高级工程师', '77');
INSERT INTO `qs_hotword` VALUES ('28969', 'Accountant', '53');
INSERT INTO `qs_hotword` VALUES ('28976', '网页设计工程师', '11');
INSERT INTO `qs_hotword` VALUES ('28989', 'Web前端工程师', '53');
INSERT INTO `qs_hotword` VALUES ('28996', '电力工程师', '25');
INSERT INTO `qs_hotword` VALUES ('29011', '证券投资顾问', '10');
INSERT INTO `qs_hotword` VALUES ('29035', '污水处理工程师', '24');
INSERT INTO `qs_hotword` VALUES ('29060', '标准化工程师', '59');
INSERT INTO `qs_hotword` VALUES ('29062', '软件开发实习生', '20');
INSERT INTO `qs_hotword` VALUES ('29064', '杂志编辑', '28');
INSERT INTO `qs_hotword` VALUES ('29101', '网页美工设计师', '15');
INSERT INTO `qs_hotword` VALUES ('29108', '兼职项目经理', '22');
INSERT INTO `qs_hotword` VALUES ('29117', 'QC主管', '35');
INSERT INTO `qs_hotword` VALUES ('29124', '客服主管非技术', '174');
INSERT INTO `qs_hotword` VALUES ('29132', '网站维护工程师', '41');
INSERT INTO `qs_hotword` VALUES ('29146', '现场咨询师', '13');
INSERT INTO `qs_hotword` VALUES ('29161', '呼叫中心服务人员', '13');
INSERT INTO `qs_hotword` VALUES ('29169', '高级文员', '31');
INSERT INTO `qs_hotword` VALUES ('29182', 'C#开发工程师', '37');
INSERT INTO `qs_hotword` VALUES ('29185', '通信技术工程师', '63');
INSERT INTO `qs_hotword` VALUES ('29216', '软件工程师.net', '36');
INSERT INTO `qs_hotword` VALUES ('29217', '店面设计师', '21');
INSERT INTO `qs_hotword` VALUES ('29221', '网络安全工程师', '34');
INSERT INTO `qs_hotword` VALUES ('29243', 'OTC销售主管', '79');
INSERT INTO `qs_hotword` VALUES ('29255', '驻外销售代表', '23');
INSERT INTO `qs_hotword` VALUES ('29257', 'FPGA工程师', '29');
INSERT INTO `qs_hotword` VALUES ('29258', '综合会计', '20');
INSERT INTO `qs_hotword` VALUES ('29260', '博客编辑', '13');
INSERT INTO `qs_hotword` VALUES ('29275', '软件工程师C++', '14');
INSERT INTO `qs_hotword` VALUES ('29284', 'Delphi程序员', '23');
INSERT INTO `qs_hotword` VALUES ('29293', '市场调研主管', '36');
INSERT INTO `qs_hotword` VALUES ('29294', '呼叫中心客服专员', '32');
INSERT INTO `qs_hotword` VALUES ('29315', '现场服务工程师', '37');
INSERT INTO `qs_hotword` VALUES ('29324', '网站编辑主管', '13');
INSERT INTO `qs_hotword` VALUES ('29331', '商业地产策划师', '11');
INSERT INTO `qs_hotword` VALUES ('29340', '销售部副经理', '13');
INSERT INTO `qs_hotword` VALUES ('29360', '高级射频工程师', '12');
INSERT INTO `qs_hotword` VALUES ('29391', 'PHP高级工程师', '36');
INSERT INTO `qs_hotword` VALUES ('29405', '广告销售主管', '10');
INSERT INTO `qs_hotword` VALUES ('29416', '网站销售', '10');
INSERT INTO `qs_hotword` VALUES ('29417', '深化设计师', '11');
INSERT INTO `qs_hotword` VALUES ('29425', '时尚买手', '20');
INSERT INTO `qs_hotword` VALUES ('29427', '区域项目经理', '15');
INSERT INTO `qs_hotword` VALUES ('29435', '广告经理', '11');
INSERT INTO `qs_hotword` VALUES ('29464', '高级平面设计师', '48');
INSERT INTO `qs_hotword` VALUES ('29465', '呼叫中心客服代表', '14');
INSERT INTO `qs_hotword` VALUES ('29472', '招商人员', '20');
INSERT INTO `qs_hotword` VALUES ('29483', '国内销售人员', '10');
INSERT INTO `qs_hotword` VALUES ('29501', '主编', '24');
INSERT INTO `qs_hotword` VALUES ('29502', '手机UI设计师', '12');
INSERT INTO `qs_hotword` VALUES ('29517', '系统软件工程师', '12');
INSERT INTO `qs_hotword` VALUES ('29526', 'QA经理', '15');
INSERT INTO `qs_hotword` VALUES ('29537', '精品销售员', '17');
INSERT INTO `qs_hotword` VALUES ('29565', '机械维修工程师', '17');
INSERT INTO `qs_hotword` VALUES ('29566', '临床监查员', '13');
INSERT INTO `qs_hotword` VALUES ('29569', '设计实习生', '10');
INSERT INTO `qs_hotword` VALUES ('29570', '施工图深化设计师', '19');
INSERT INTO `qs_hotword` VALUES ('29582', '房地产销售代表', '21');
INSERT INTO `qs_hotword` VALUES ('29590', '房地产销售人员', '48');
INSERT INTO `qs_hotword` VALUES ('29606', 'Teller', '12');
INSERT INTO `qs_hotword` VALUES ('29619', '嵌入式硬件工程师', '24');
INSERT INTO `qs_hotword` VALUES ('29622', '大客户销售代表', '18');
INSERT INTO `qs_hotword` VALUES ('29624', 'Python开发工程师', '11');
INSERT INTO `qs_hotword` VALUES ('29625', 'Delphi软件工程师', '20');
INSERT INTO `qs_hotword` VALUES ('29629', '驱动开发工程师', '18');
INSERT INTO `qs_hotword` VALUES ('29631', '电源维修工程师', '26');
INSERT INTO `qs_hotword` VALUES ('29632', '硬件维修工程师', '26');
INSERT INTO `qs_hotword` VALUES ('29641', 'ASP.NET程序员', '92');
INSERT INTO `qs_hotword` VALUES ('29643', '生产技术', '13');
INSERT INTO `qs_hotword` VALUES ('29657', 'ETL工程师', '25');
INSERT INTO `qs_hotword` VALUES ('29669', '教育行业销售经理', '12');
INSERT INTO `qs_hotword` VALUES ('29710', 'java架构师', '24');
INSERT INTO `qs_hotword` VALUES ('29728', '客服经理非技术', '136');
INSERT INTO `qs_hotword` VALUES ('29735', '自动化测试工程师', '28');
INSERT INTO `qs_hotword` VALUES ('29738', '房地产销售主管', '110');
INSERT INTO `qs_hotword` VALUES ('29743', '舞蹈演员', '21');
INSERT INTO `qs_hotword` VALUES ('29762', '安全专员', '15');
INSERT INTO `qs_hotword` VALUES ('29763', '淘宝商城运营主管', '15');
INSERT INTO `qs_hotword` VALUES ('29768', '数学老师', '21');
INSERT INTO `qs_hotword` VALUES ('29857', '药物分析项目主管', '16');
INSERT INTO `qs_hotword` VALUES ('29873', '网络营销人员', '18');
INSERT INTO `qs_hotword` VALUES ('29875', '网站营运主管', '37');
INSERT INTO `qs_hotword` VALUES ('29886', '咨询师课程顾问', '19');
INSERT INTO `qs_hotword` VALUES ('29919', '院长助理', '13');
INSERT INTO `qs_hotword` VALUES ('29922', '检测工程师', '22');
INSERT INTO `qs_hotword` VALUES ('29923', '资深软件工程师', '14');
INSERT INTO `qs_hotword` VALUES ('29953', '化学老师', '10');
INSERT INTO `qs_hotword` VALUES ('29955', 'iPhone开发工程师', '82');
INSERT INTO `qs_hotword` VALUES ('29956', 'delphi工程师', '19');
INSERT INTO `qs_hotword` VALUES ('29986', '日语担当', '11');
INSERT INTO `qs_hotword` VALUES ('29988', '高级研究员', '23');
INSERT INTO `qs_hotword` VALUES ('29996', 'VC软件工程师', '17');
INSERT INTO `qs_hotword` VALUES ('30010', 'seo优化工程师', '11');
INSERT INTO `qs_hotword` VALUES ('30013', '成本管理员', '46');
INSERT INTO `qs_hotword` VALUES ('30015', '临床研究员CRA', '10');
INSERT INTO `qs_hotword` VALUES ('30031', '室内设计师助理', '12');
INSERT INTO `qs_hotword` VALUES ('30032', '影视编导', '18');
INSERT INTO `qs_hotword` VALUES ('30036', '总裁办副主任', '11');
INSERT INTO `qs_hotword` VALUES ('30046', '服装工艺员', '10');
INSERT INTO `qs_hotword` VALUES ('30107', '网页设计师美工', '15');
INSERT INTO `qs_hotword` VALUES ('30108', 'VC++软件工程师', '16');
INSERT INTO `qs_hotword` VALUES ('30111', '保修专员', '15');
INSERT INTO `qs_hotword` VALUES ('30113', '配件计划员', '11');
INSERT INTO `qs_hotword` VALUES ('30115', '旅游产品销售', '12');
INSERT INTO `qs_hotword` VALUES ('30134', '系统集成项目经理', '42');
INSERT INTO `qs_hotword` VALUES ('30149', 'iOS开发工程师', '64');
INSERT INTO `qs_hotword` VALUES ('30152', '集团人力资源总监', '10');
INSERT INTO `qs_hotword` VALUES ('30154', '综合管理部经理', '36');
INSERT INTO `qs_hotword` VALUES ('30155', 'OTC销售经理', '27');
INSERT INTO `qs_hotword` VALUES ('30156', 'IT运维工程师', '10');
INSERT INTO `qs_hotword` VALUES ('30160', '彩妆培训师', '17');
INSERT INTO `qs_hotword` VALUES ('30165', '课程销售顾问', '63');
INSERT INTO `qs_hotword` VALUES ('30168', '初中物理教师', '18');
INSERT INTO `qs_hotword` VALUES ('30169', '高中英语老师', '18');
INSERT INTO `qs_hotword` VALUES ('30170', '初中数学老师', '18');
INSERT INTO `qs_hotword` VALUES ('30220', '广告客户专员', '15');
INSERT INTO `qs_hotword` VALUES ('30231', '排版员', '10');
INSERT INTO `qs_hotword` VALUES ('30232', '市场部人员', '23');
INSERT INTO `qs_hotword` VALUES ('30240', '产品设计工程师', '57');
INSERT INTO `qs_hotword` VALUES ('30258', '钢结构设计工程师', '12');
INSERT INTO `qs_hotword` VALUES ('30268', '发展部经理', '13');
INSERT INTO `qs_hotword` VALUES ('30272', '续保专员', '37');
INSERT INTO `qs_hotword` VALUES ('30276', '物业客服主管', '23');
INSERT INTO `qs_hotword` VALUES ('30284', '生产技术人员', '21');
INSERT INTO `qs_hotword` VALUES ('30293', '安装预算工程师', '23');
INSERT INTO `qs_hotword` VALUES ('30298', '数据库开发工程师', '80');
INSERT INTO `qs_hotword` VALUES ('30302', '技术支持专员', '38');
INSERT INTO `qs_hotword` VALUES ('30303', 'Java项目经理', '61');
INSERT INTO `qs_hotword` VALUES ('30304', '网络管理工程师', '17');
INSERT INTO `qs_hotword` VALUES ('30323', '财务统计员', '13');
INSERT INTO `qs_hotword` VALUES ('30340', '初高中语文教师', '38');
INSERT INTO `qs_hotword` VALUES ('30341', '初高中英语教师', '43');
INSERT INTO `qs_hotword` VALUES ('30342', '初高中化学教师', '36');
INSERT INTO `qs_hotword` VALUES ('30343', '初高中物理教师', '40');
INSERT INTO `qs_hotword` VALUES ('30344', '初高中数学教师', '20');
INSERT INTO `qs_hotword` VALUES ('30348', '区域财务经理', '30');
INSERT INTO `qs_hotword` VALUES ('30375', '原画设计师', '18');
INSERT INTO `qs_hotword` VALUES ('30384', '软件设计工程师', '23');
INSERT INTO `qs_hotword` VALUES ('30419', '绩效考核经理', '15');
INSERT INTO `qs_hotword` VALUES ('30420', '市场研究专员', '13');
INSERT INTO `qs_hotword` VALUES ('30430', '暖通空调工程师', '10');
INSERT INTO `qs_hotword` VALUES ('30431', '热能工程师', '10');
INSERT INTO `qs_hotword` VALUES ('30435', '论坛管理员', '53');
INSERT INTO `qs_hotword` VALUES ('30455', '装配工艺工程师', '21');
INSERT INTO `qs_hotword` VALUES ('30460', '质量体系工程师', '36');
INSERT INTO `qs_hotword` VALUES ('30461', 'IE经理总部', '10');
INSERT INTO `qs_hotword` VALUES ('30462', '焊接工艺工程师', '15');
INSERT INTO `qs_hotword` VALUES ('30482', 'java开发经理', '11');
INSERT INTO `qs_hotword` VALUES ('30489', '计量工程师', '16');
INSERT INTO `qs_hotword` VALUES ('30524', '黄金投资顾问', '12');
INSERT INTO `qs_hotword` VALUES ('30530', '公装设计师', '16');
INSERT INTO `qs_hotword` VALUES ('30578', '行政助理兼出纳', '12');
INSERT INTO `qs_hotword` VALUES ('30583', '见习置业顾问', '12');
INSERT INTO `qs_hotword` VALUES ('30585', '策划执行', '26');
INSERT INTO `qs_hotword` VALUES ('30606', '营销项目经理', '18');
INSERT INTO `qs_hotword` VALUES ('30608', '资深室内设计师', '13');
INSERT INTO `qs_hotword` VALUES ('30636', '客服组长', '16');
INSERT INTO `qs_hotword` VALUES ('30637', '产品规划工程师', '17');
INSERT INTO `qs_hotword` VALUES ('30638', '桌面工程师', '22');
INSERT INTO `qs_hotword` VALUES ('30644', '汽车设计工程师', '12');
INSERT INTO `qs_hotword` VALUES ('30648', '货品主管', '45');
INSERT INTO `qs_hotword` VALUES ('30682', '结算主管', '10');
INSERT INTO `qs_hotword` VALUES ('30683', '国际贸易经理', '13');
INSERT INTO `qs_hotword` VALUES ('30688', 'CEO助理', '10');
INSERT INTO `qs_hotword` VALUES ('30689', '高级商务经理', '15');
INSERT INTO `qs_hotword` VALUES ('30698', '产品研发工程师', '28');
INSERT INTO `qs_hotword` VALUES ('30705', '中餐厅服务员', '15');
INSERT INTO `qs_hotword` VALUES ('30719', '薪资福利主管', '30');
INSERT INTO `qs_hotword` VALUES ('30724', '助听器验配师', '13');
INSERT INTO `qs_hotword` VALUES ('30761', '查勘定损岗', '23');
INSERT INTO `qs_hotword` VALUES ('30770', '助理医师', '12');
INSERT INTO `qs_hotword` VALUES ('30777', 'SEO搜索引擎优化', '21');
INSERT INTO `qs_hotword` VALUES ('30778', '高级UI设计师', '18');
INSERT INTO `qs_hotword` VALUES ('30791', '网络推广seo', '11');
INSERT INTO `qs_hotword` VALUES ('30812', '游戏原画师', '13');
INSERT INTO `qs_hotword` VALUES ('30819', '销售代表实习生', '10');
INSERT INTO `qs_hotword` VALUES ('30840', 'Flex工程师', '14');
INSERT INTO `qs_hotword` VALUES ('30844', '保安人员', '22');
INSERT INTO `qs_hotword` VALUES ('30882', '自动化控制工程师', '12');
INSERT INTO `qs_hotword` VALUES ('30897', '中级软件工程师', '15');
INSERT INTO `qs_hotword` VALUES ('30908', '调色员', '10');
INSERT INTO `qs_hotword` VALUES ('30923', '稽核员', '11');
INSERT INTO `qs_hotword` VALUES ('30940', '游戏特效师', '13');
INSERT INTO `qs_hotword` VALUES ('30941', '执行策划', '44');
INSERT INTO `qs_hotword` VALUES ('30942', '游戏测试工程师', '24');
INSERT INTO `qs_hotword` VALUES ('30947', '商品部经理', '43');
INSERT INTO `qs_hotword` VALUES ('30969', '管理实习生', '16');
INSERT INTO `qs_hotword` VALUES ('30979', 'flash工程师', '11');
INSERT INTO `qs_hotword` VALUES ('30985', '客户开发经理', '45');
INSERT INTO `qs_hotword` VALUES ('31001', '房地产销售总监', '16');
INSERT INTO `qs_hotword` VALUES ('31009', 'PHP高级程序员', '43');
INSERT INTO `qs_hotword` VALUES ('31025', '薪酬福利主管', '10');
INSERT INTO `qs_hotword` VALUES ('31029', '会奖部专员', '14');
INSERT INTO `qs_hotword` VALUES ('31031', '资深项目经理', '13');
INSERT INTO `qs_hotword` VALUES ('31036', '政府行业销售经理', '10');
INSERT INTO `qs_hotword` VALUES ('31055', '物流、采购专员', '16');
INSERT INTO `qs_hotword` VALUES ('31056', '行政、人事管理', '16');
INSERT INTO `qs_hotword` VALUES ('31062', '病理医生', '13');
INSERT INTO `qs_hotword` VALUES ('31064', '医学检验技术员', '10');
INSERT INTO `qs_hotword` VALUES ('31065', '采购副经理', '22');
INSERT INTO `qs_hotword` VALUES ('31070', '电气技术工程师', '14');
INSERT INTO `qs_hotword` VALUES ('31080', '信息技术经理', '15');
INSERT INTO `qs_hotword` VALUES ('31131', '内衣设计师', '12');
INSERT INTO `qs_hotword` VALUES ('31134', '仓储部经理', '15');
INSERT INTO `qs_hotword` VALUES ('31140', 'Cashier', '53');
INSERT INTO `qs_hotword` VALUES ('31144', '软件维护工程师', '18');
INSERT INTO `qs_hotword` VALUES ('31152', '市场企划', '18');
INSERT INTO `qs_hotword` VALUES ('31157', '竞价推广SEM', '12');
INSERT INTO `qs_hotword` VALUES ('31158', '医疗网站客服人员', '12');
INSERT INTO `qs_hotword` VALUES ('31159', '射频工程师', '46');
INSERT INTO `qs_hotword` VALUES ('31166', '网站优化SEO', '17');
INSERT INTO `qs_hotword` VALUES ('31167', '网页策划', '12');
INSERT INTO `qs_hotword` VALUES ('31168', '网站文字编辑文案', '10');
INSERT INTO `qs_hotword` VALUES ('31169', '竞价推广主管', '12');
INSERT INTO `qs_hotword` VALUES ('31243', 'VIP客户经理', '34');
INSERT INTO `qs_hotword` VALUES ('31271', '电气自动化工程师', '28');
INSERT INTO `qs_hotword` VALUES ('31286', '资深视觉设计师', '10');
INSERT INTO `qs_hotword` VALUES ('31287', '互联网产品经理', '25');
INSERT INTO `qs_hotword` VALUES ('31291', '外贸业务跟单员', '14');
INSERT INTO `qs_hotword` VALUES ('31334', 'ERP技术开发', '18');
INSERT INTO `qs_hotword` VALUES ('31345', '高级测试工程师', '62');
INSERT INTO `qs_hotword` VALUES ('31350', '俄语外贸业务员', '20');
INSERT INTO `qs_hotword` VALUES ('31377', '嵌入式开发工程师', '45');
INSERT INTO `qs_hotword` VALUES ('31415', '总机话务员', '12');
INSERT INTO `qs_hotword` VALUES ('31443', '人事、行政专员', '14');
INSERT INTO `qs_hotword` VALUES ('31456', '硬件设计工程师', '28');
INSERT INTO `qs_hotword` VALUES ('31487', '产品策划专员', '11');
INSERT INTO `qs_hotword` VALUES ('31491', '销售统计', '10');
INSERT INTO `qs_hotword` VALUES ('31498', '400客服专员', '12');
INSERT INTO `qs_hotword` VALUES ('31502', '弱电设计师', '12');
INSERT INTO `qs_hotword` VALUES ('31513', '核价员', '17');
INSERT INTO `qs_hotword` VALUES ('31519', '呼叫中心热线坐席', '16');
INSERT INTO `qs_hotword` VALUES ('31540', '宣传专员', '14');
INSERT INTO `qs_hotword` VALUES ('31541', '回款专员', '20');
INSERT INTO `qs_hotword` VALUES ('31545', '软件售前工程师', '14');
INSERT INTO `qs_hotword` VALUES ('31551', 'PHP项目经理', '17');
INSERT INTO `qs_hotword` VALUES ('31562', '技术文档工程师', '13');
INSERT INTO `qs_hotword` VALUES ('31593', '网站测试工程师', '11');
INSERT INTO `qs_hotword` VALUES ('31601', 'DBA数据库管理员', '12');
INSERT INTO `qs_hotword` VALUES ('31605', '客服专员非技术', '17');
INSERT INTO `qs_hotword` VALUES ('31610', '电气设计工程师', '89');
INSERT INTO `qs_hotword` VALUES ('31611', '软件测试实习生', '10');
INSERT INTO `qs_hotword` VALUES ('31646', '售前经理', '10');
INSERT INTO `qs_hotword` VALUES ('31682', 'JAVA系统架构师', '12');
INSERT INTO `qs_hotword` VALUES ('31706', '软件设计师', '17');
INSERT INTO `qs_hotword` VALUES ('31725', 'EHS经理', '20');
INSERT INTO `qs_hotword` VALUES ('31732', '电气维修工程师', '12');
INSERT INTO `qs_hotword` VALUES ('31759', '游戏UI设计师', '39');
INSERT INTO `qs_hotword` VALUES ('31809', '程序员应届生', '12');
INSERT INTO `qs_hotword` VALUES ('31810', '宾客关系主任', '14');
INSERT INTO `qs_hotword` VALUES ('31835', '软件实施项目经理', '11');
INSERT INTO `qs_hotword` VALUES ('31852', '餐饮渠道销售代表', '20');
INSERT INTO `qs_hotword` VALUES ('31853', '大区销售总监', '56');
INSERT INTO `qs_hotword` VALUES ('31868', '市场工程师', '23');
INSERT INTO `qs_hotword` VALUES ('31881', '礼仪接待', '10');
INSERT INTO `qs_hotword` VALUES ('31889', '创作总监', '20');
INSERT INTO `qs_hotword` VALUES ('31892', '数据工程师', '10');
INSERT INTO `qs_hotword` VALUES ('31916', '三维设计', '16');
INSERT INTO `qs_hotword` VALUES ('31919', '安装造价工程师', '120');
INSERT INTO `qs_hotword` VALUES ('31940', 'web软件工程师', '10');
INSERT INTO `qs_hotword` VALUES ('31956', '机械结构工程师', '14');
INSERT INTO `qs_hotword` VALUES ('31984', '物流文员', '15');
INSERT INTO `qs_hotword` VALUES ('31993', '产品线经理', '10');
INSERT INTO `qs_hotword` VALUES ('31995', '高级结构工程师', '18');
INSERT INTO `qs_hotword` VALUES ('32005', '报价员', '12');
INSERT INTO `qs_hotword` VALUES ('32008', '技术服务经理', '16');
INSERT INTO `qs_hotword` VALUES ('32011', '高中历史教师', '12');
INSERT INTO `qs_hotword` VALUES ('32051', '驻场工程师', '10');
INSERT INTO `qs_hotword` VALUES ('32053', '包装设计', '30');
INSERT INTO `qs_hotword` VALUES ('32077', '售前技术工程师', '52');
INSERT INTO `qs_hotword` VALUES ('32090', '葡萄牙语翻译', '12');
INSERT INTO `qs_hotword` VALUES ('32094', '3D场景设计师', '11');
INSERT INTO `qs_hotword` VALUES ('32104', '手机开发工程师', '15');
INSERT INTO `qs_hotword` VALUES ('32105', '营运助理', '37');
INSERT INTO `qs_hotword` VALUES ('32171', '珠宝设计师', '21');
INSERT INTO `qs_hotword` VALUES ('32183', '幼儿英语老师', '12');
INSERT INTO `qs_hotword` VALUES ('32200', 'UI设计工程师', '42');
INSERT INTO `qs_hotword` VALUES ('32203', '工艺师', '41');
INSERT INTO `qs_hotword` VALUES ('32208', '大区渠道总监', '18');
INSERT INTO `qs_hotword` VALUES ('32211', 'iPhone软件工程师', '11');
INSERT INTO `qs_hotword` VALUES ('32220', '西班牙语翻译', '15');
INSERT INTO `qs_hotword` VALUES ('32236', '装饰工程项目经理', '10');
INSERT INTO `qs_hotword` VALUES ('32244', '美国留学咨询顾问', '13');
INSERT INTO `qs_hotword` VALUES ('32245', '英国留学咨询顾问', '10');
INSERT INTO `qs_hotword` VALUES ('32275', '销售Sales', '10');
INSERT INTO `qs_hotword` VALUES ('32282', '农业技术员', '10');
INSERT INTO `qs_hotword` VALUES ('32332', '项目技术负责人', '14');
INSERT INTO `qs_hotword` VALUES ('32339', '装饰设计工程师', '11');
INSERT INTO `qs_hotword` VALUES ('32343', '高级数据库工程师', '10');
INSERT INTO `qs_hotword` VALUES ('32370', 'hadoop研发工程师', '18');
INSERT INTO `qs_hotword` VALUES ('32397', '客户端程序员', '26');
INSERT INTO `qs_hotword` VALUES ('32410', '电子商务运营专员', '13');
INSERT INTO `qs_hotword` VALUES ('32437', '中级测试工程师', '11');
INSERT INTO `qs_hotword` VALUES ('32440', '项目管理工程师', '41');
INSERT INTO `qs_hotword` VALUES ('32514', '人力资源部总监', '12');
INSERT INTO `qs_hotword` VALUES ('32532', '投融资经理', '24');
INSERT INTO `qs_hotword` VALUES ('32545', '关卡策划', '14');
INSERT INTO `qs_hotword` VALUES ('32607', '造价工程师土建', '13');
INSERT INTO `qs_hotword` VALUES ('32614', '机电技术员', '21');
INSERT INTO `qs_hotword` VALUES ('32621', '业务分析师', '10');
INSERT INTO `qs_hotword` VALUES ('32643', 'IT技术支持工程师', '22');
INSERT INTO `qs_hotword` VALUES ('32656', '3D角色设计师', '15');
INSERT INTO `qs_hotword` VALUES ('32672', '界面设计师', '16');
INSERT INTO `qs_hotword` VALUES ('32675', 'ERP实施工程师', '43');
INSERT INTO `qs_hotword` VALUES ('32677', '系统设计师', '17');
INSERT INTO `qs_hotword` VALUES ('32683', '系统测试工程师', '26');
INSERT INTO `qs_hotword` VALUES ('32714', '动画导演', '10');
INSERT INTO `qs_hotword` VALUES ('32733', '培训生', '11');
INSERT INTO `qs_hotword` VALUES ('32753', 'J2EE开发工程师', '17');
INSERT INTO `qs_hotword` VALUES ('32778', '园林景观设计师', '40');
INSERT INTO `qs_hotword` VALUES ('32804', '建筑设计工程师', '27');
INSERT INTO `qs_hotword` VALUES ('32811', '土建预算工程师', '43');
INSERT INTO `qs_hotword` VALUES ('32816', 'J2ME开发工程师', '10');
INSERT INTO `qs_hotword` VALUES ('32830', '淘宝运营主管', '20');
INSERT INTO `qs_hotword` VALUES ('32853', '省级门店总经理', '20');
INSERT INTO `qs_hotword` VALUES ('32891', '重点客户主任', '11');
INSERT INTO `qs_hotword` VALUES ('32896', '工程技术部经理', '18');
INSERT INTO `qs_hotword` VALUES ('32913', 'DSP工程师', '13');
INSERT INTO `qs_hotword` VALUES ('32915', 'C#高级软件工程师', '11');
INSERT INTO `qs_hotword` VALUES ('32925', '技术支持主管', '41');
INSERT INTO `qs_hotword` VALUES ('32948', '专柜彩妆师', '15');
INSERT INTO `qs_hotword` VALUES ('32963', '市场营销部经理', '25');
INSERT INTO `qs_hotword` VALUES ('32995', 'UI界面设计师', '11');
INSERT INTO `qs_hotword` VALUES ('33015', '客房领班', '24');
INSERT INTO `qs_hotword` VALUES ('33026', '软件产品经理', '16');
INSERT INTO `qs_hotword` VALUES ('33029', '系统分析工程师', '12');
INSERT INTO `qs_hotword` VALUES ('33032', '成本核算会计', '14');
INSERT INTO `qs_hotword` VALUES ('33041', '产品研发', '12');
INSERT INTO `qs_hotword` VALUES ('33043', '专业网络工程师', '13');
INSERT INTO `qs_hotword` VALUES ('33061', '测试开发工程师', '10');
INSERT INTO `qs_hotword` VALUES ('33086', '产品开发工程师', '54');
INSERT INTO `qs_hotword` VALUES ('33096', '数据通信工程师', '20');
INSERT INTO `qs_hotword` VALUES ('33101', '无线通信工程师', '13');
INSERT INTO `qs_hotword` VALUES ('33222', '医学经理', '24');
INSERT INTO `qs_hotword` VALUES ('33242', '项目质量工程师', '10');
INSERT INTO `qs_hotword` VALUES ('33244', 'Flash程序员', '42');
INSERT INTO `qs_hotword` VALUES ('33277', '外呼专员', '12');
INSERT INTO `qs_hotword` VALUES ('33297', '智能交通项目经理', '21');
INSERT INTO `qs_hotword` VALUES ('33298', '市场销售主管', '10');
INSERT INTO `qs_hotword` VALUES ('33306', '游戏数值策划', '32');
INSERT INTO `qs_hotword` VALUES ('33379', '专职教师', '12');
INSERT INTO `qs_hotword` VALUES ('33384', '规划设计总监', '17');
INSERT INTO `qs_hotword` VALUES ('33389', '招投标主管', '15');
INSERT INTO `qs_hotword` VALUES ('33399', '电气工艺工程师', '11');
INSERT INTO `qs_hotword` VALUES ('33411', '商品车质押监管员', '66');
INSERT INTO `qs_hotword` VALUES ('33417', '淘宝主管', '11');
INSERT INTO `qs_hotword` VALUES ('33433', 'JAVA开发人员', '30');
INSERT INTO `qs_hotword` VALUES ('33472', '综合文秘', '16');
INSERT INTO `qs_hotword` VALUES ('33478', '大区总监', '18');
INSERT INTO `qs_hotword` VALUES ('33489', '助理会计', '18');
INSERT INTO `qs_hotword` VALUES ('33508', '家具设计', '10');
INSERT INTO `qs_hotword` VALUES ('33534', '前厅部经理', '30');
INSERT INTO `qs_hotword` VALUES ('33551', '业务副总经理', '17');
INSERT INTO `qs_hotword` VALUES ('33564', '室内装潢设计师', '17');
INSERT INTO `qs_hotword` VALUES ('33569', '加盟主管', '19');
INSERT INTO `qs_hotword` VALUES ('33575', 'Net软件工程师', '24');
INSERT INTO `qs_hotword` VALUES ('33590', '人资主管', '27');
INSERT INTO `qs_hotword` VALUES ('33600', '行业大客户经理', '18');
INSERT INTO `qs_hotword` VALUES ('33608', '网络高级工程师', '12');
INSERT INTO `qs_hotword` VALUES ('33660', '业务副总', '28');
INSERT INTO `qs_hotword` VALUES ('33663', '行政接待', '12');
INSERT INTO `qs_hotword` VALUES ('33700', '财务分析经理', '64');
INSERT INTO `qs_hotword` VALUES ('33720', '市场拓展部经理', '23');
INSERT INTO `qs_hotword` VALUES ('33721', '合同管理专员', '15');
INSERT INTO `qs_hotword` VALUES ('33822', '针织设计师', '12');
INSERT INTO `qs_hotword` VALUES ('33869', '打版师', '26');
INSERT INTO `qs_hotword` VALUES ('33965', '助理咨询师', '18');
INSERT INTO `qs_hotword` VALUES ('33978', '高级业务跟单', '28');
INSERT INTO `qs_hotword` VALUES ('33994', '人力资源高级经理', '11');
INSERT INTO `qs_hotword` VALUES ('34036', '服装设计助理', '49');
INSERT INTO `qs_hotword` VALUES ('34065', '软件工程师实习生', '12');
INSERT INTO `qs_hotword` VALUES ('34102', '客户服务部经理', '19');
INSERT INTO `qs_hotword` VALUES ('34145', '三维动画设计师', '10');
INSERT INTO `qs_hotword` VALUES ('34185', '辅导员', '24');
INSERT INTO `qs_hotword` VALUES ('34191', '仓库经理', '35');
INSERT INTO `qs_hotword` VALUES ('34202', '房地产销售助理', '10');
INSERT INTO `qs_hotword` VALUES ('34203', '房地产置业顾问', '20');
INSERT INTO `qs_hotword` VALUES ('34205', '卖场销售人员', '11');
INSERT INTO `qs_hotword` VALUES ('34344', '施工经理', '10');
INSERT INTO `qs_hotword` VALUES ('34354', '物业部经理', '23');
INSERT INTO `qs_hotword` VALUES ('34361', '销售总经理助理', '22');
INSERT INTO `qs_hotword` VALUES ('34379', '店铺营业员', '19');
INSERT INTO `qs_hotword` VALUES ('34383', '经营经理', '11');
INSERT INTO `qs_hotword` VALUES ('34395', '软件UI设计师', '19');
INSERT INTO `qs_hotword` VALUES ('34475', 'php开发人员', '10');
INSERT INTO `qs_hotword` VALUES ('34484', '游戏策划师', '15');
INSERT INTO `qs_hotword` VALUES ('34564', '英文网站编辑', '16');
INSERT INTO `qs_hotword` VALUES ('34609', '药品注册专员', '10');
INSERT INTO `qs_hotword` VALUES ('34622', '营养顾问', '11');
INSERT INTO `qs_hotword` VALUES ('34656', '电源研发工程师', '11');
INSERT INTO `qs_hotword` VALUES ('34657', '嵌入式研发工程师', '10');
INSERT INTO `qs_hotword` VALUES ('34671', 'WEB前端开发', '13');
INSERT INTO `qs_hotword` VALUES ('34685', '事业部总监', '10');
INSERT INTO `qs_hotword` VALUES ('34697', '分公司销售主管', '19');
INSERT INTO `qs_hotword` VALUES ('34719', '产品需求分析师', '17');
INSERT INTO `qs_hotword` VALUES ('34743', '餐厅店经理', '21');
INSERT INTO `qs_hotword` VALUES ('34744', '化学分析工程师', '10');
INSERT INTO `qs_hotword` VALUES ('34769', '库房经理', '29');
INSERT INTO `qs_hotword` VALUES ('34778', '商户维护专员', '12');
INSERT INTO `qs_hotword` VALUES ('34903', '特效师', '16');
INSERT INTO `qs_hotword` VALUES ('34908', '生产技术工程师', '13');
INSERT INTO `qs_hotword` VALUES ('34943', '评估助理', '14');
INSERT INTO `qs_hotword` VALUES ('34953', 'linux开发工程师', '18');
INSERT INTO `qs_hotword` VALUES ('34964', '技术维护', '13');
INSERT INTO `qs_hotword` VALUES ('34995', '普通车工', '10');
INSERT INTO `qs_hotword` VALUES ('35013', '楼面管理', '10');
INSERT INTO `qs_hotword` VALUES ('35015', '楼层管理', '20');
INSERT INTO `qs_hotword` VALUES ('35050', '医疗设备销售代表', '11');
INSERT INTO `qs_hotword` VALUES ('35097', '客诉专员', '13');
INSERT INTO `qs_hotword` VALUES ('35102', '程序开发工程师', '28');
INSERT INTO `qs_hotword` VALUES ('35121', '生产工艺工程师', '34');
INSERT INTO `qs_hotword` VALUES ('35156', '渠道业务代表', '18');
INSERT INTO `qs_hotword` VALUES ('35162', '市场分析员', '11');
INSERT INTO `qs_hotword` VALUES ('35180', '模具设计工程师', '37');
INSERT INTO `qs_hotword` VALUES ('35241', '高级工艺工程师', '12');
INSERT INTO `qs_hotword` VALUES ('35263', '区域营销经理', '25');
INSERT INTO `qs_hotword` VALUES ('35270', '服务器管理员', '10');
INSERT INTO `qs_hotword` VALUES ('35276', '终端培训讲师', '15');
INSERT INTO `qs_hotword` VALUES ('35287', '大学生储备干部', '12');
INSERT INTO `qs_hotword` VALUES ('35306', '店铺经理', '12');
INSERT INTO `qs_hotword` VALUES ('35331', '技术研发总监', '17');
INSERT INTO `qs_hotword` VALUES ('35360', 'Asp.net工程师', '17');
INSERT INTO `qs_hotword` VALUES ('35362', '网站架构设计师', '12');
INSERT INTO `qs_hotword` VALUES ('35370', '供应商管理', '13');
INSERT INTO `qs_hotword` VALUES ('35396', '网络运营主管', '15');
INSERT INTO `qs_hotword` VALUES ('35415', 'J2EE高级工程师', '11');
INSERT INTO `qs_hotword` VALUES ('35424', '餐厅副经理', '18');
INSERT INTO `qs_hotword` VALUES ('35458', '医疗器械技术支持', '10');
INSERT INTO `qs_hotword` VALUES ('35476', '合约部经理', '17');
INSERT INTO `qs_hotword` VALUES ('35489', '资深UI设计师', '10');
INSERT INTO `qs_hotword` VALUES ('35504', '资产管理员', '16');
INSERT INTO `qs_hotword` VALUES ('35523', '现场主管', '13');
INSERT INTO `qs_hotword` VALUES ('35541', '加工中心操作工', '15');
INSERT INTO `qs_hotword` VALUES ('35548', '三维网游模型师', '12');
INSERT INTO `qs_hotword` VALUES ('35651', '网络运营专员', '24');
INSERT INTO `qs_hotword` VALUES ('35657', '工艺设计工程师', '12');
INSERT INTO `qs_hotword` VALUES ('35662', '游戏原画设计师', '12');
INSERT INTO `qs_hotword` VALUES ('35761', '技术分析师', '11');
INSERT INTO `qs_hotword` VALUES ('35813', '外联经理', '26');
INSERT INTO `qs_hotword` VALUES ('35816', '楼层经理', '27');
INSERT INTO `qs_hotword` VALUES ('35817', '店总经理', '22');
INSERT INTO `qs_hotword` VALUES ('35853', '直销经理', '20');
INSERT INTO `qs_hotword` VALUES ('35875', '初级测试工程师', '19');
INSERT INTO `qs_hotword` VALUES ('35898', '运作专员', '10');
INSERT INTO `qs_hotword` VALUES ('35990', 'CNC技术员', '10');
INSERT INTO `qs_hotword` VALUES ('36025', '质量检查员', '10');
INSERT INTO `qs_hotword` VALUES ('36031', '多媒体设计', '11');
INSERT INTO `qs_hotword` VALUES ('36047', '细胞培养技术员', '22');
INSERT INTO `qs_hotword` VALUES ('36054', 'GIS数据工程师', '10');
INSERT INTO `qs_hotword` VALUES ('36077', '区域销售工程师', '19');
INSERT INTO `qs_hotword` VALUES ('36082', '外贸单证', '13');
INSERT INTO `qs_hotword` VALUES ('36107', '自动控制工程师', '19');
INSERT INTO `qs_hotword` VALUES ('36128', '楼层领班', '13');
INSERT INTO `qs_hotword` VALUES ('36135', '面料采购员', '13');
INSERT INTO `qs_hotword` VALUES ('36154', '装饰项目经理', '15');
INSERT INTO `qs_hotword` VALUES ('36184', '助理室内设计师', '12');
INSERT INTO `qs_hotword` VALUES ('36197', '日语营业担当', '10');
INSERT INTO `qs_hotword` VALUES ('36203', '服装工艺师', '15');
INSERT INTO `qs_hotword` VALUES ('36205', 'MERCHANDISER', '16');
INSERT INTO `qs_hotword` VALUES ('36267', '财务部实习生', '38');
INSERT INTO `qs_hotword` VALUES ('36269', '工程文员', '25');
INSERT INTO `qs_hotword` VALUES ('36311', '陈列助理', '18');
INSERT INTO `qs_hotword` VALUES ('36373', '硬件维护工程师', '11');
INSERT INTO `qs_hotword` VALUES ('36420', '高级销售工程师', '92');
INSERT INTO `qs_hotword` VALUES ('36471', '品检', '10');
INSERT INTO `qs_hotword` VALUES ('36475', '海外客服', '17');
INSERT INTO `qs_hotword` VALUES ('36507', '有机合成研究员', '19');
INSERT INTO `qs_hotword` VALUES ('36517', '注册造价工程师', '18');
INSERT INTO `qs_hotword` VALUES ('36548', '车床工', '12');
INSERT INTO `qs_hotword` VALUES ('36568', '平面设计-兼职', '24');
INSERT INTO `qs_hotword` VALUES ('36578', '市场部副经理', '21');
INSERT INTO `qs_hotword` VALUES ('36583', '面料QC', '11');
INSERT INTO `qs_hotword` VALUES ('36602', '淘宝商城店长', '23');
INSERT INTO `qs_hotword` VALUES ('36661', '销售管理培训生', '14');
INSERT INTO `qs_hotword` VALUES ('36664', '高级区域销售经理', '23');
INSERT INTO `qs_hotword` VALUES ('36665', '设备维修技术员', '10');
INSERT INTO `qs_hotword` VALUES ('36676', '配套工程师', '11');
INSERT INTO `qs_hotword` VALUES ('36677', '电子设计工程师', '12');
INSERT INTO `qs_hotword` VALUES ('36682', '安装电工', '10');
INSERT INTO `qs_hotword` VALUES ('36726', '教务部主管', '10');
INSERT INTO `qs_hotword` VALUES ('36728', '土建监理工程师', '17');
INSERT INTO `qs_hotword` VALUES ('36772', '铝轧制销售工程师', '24');
INSERT INTO `qs_hotword` VALUES ('36796', '铣床工', '12');
INSERT INTO `qs_hotword` VALUES ('36852', '供应商质量工程师', '37');
INSERT INTO `qs_hotword` VALUES ('36871', '外贸采购员', '12');
INSERT INTO `qs_hotword` VALUES ('36893', '财务审计', '20');
INSERT INTO `qs_hotword` VALUES ('36916', '现场品控', '30');
INSERT INTO `qs_hotword` VALUES ('36926', '游戏主美', '35');
INSERT INTO `qs_hotword` VALUES ('36928', 'AS3.0程序员', '24');
INSERT INTO `qs_hotword` VALUES ('36934', '刀具销售工程师', '36');
INSERT INTO `qs_hotword` VALUES ('36945', 'FPGA开发工程师', '14');
INSERT INTO `qs_hotword` VALUES ('36993', '电子研发工程师', '26');
INSERT INTO `qs_hotword` VALUES ('36999', '机电造价工程师', '10');
INSERT INTO `qs_hotword` VALUES ('37004', '物业维修人员', '36');
INSERT INTO `qs_hotword` VALUES ('37061', '商业空间设计师', '15');
INSERT INTO `qs_hotword` VALUES ('37109', '营销策划部经理', '33');
INSERT INTO `qs_hotword` VALUES ('37128', '景观方案设计师', '17');
INSERT INTO `qs_hotword` VALUES ('37129', '景观施工图设计师', '21');
INSERT INTO `qs_hotword` VALUES ('37192', '电机工程师', '37');
INSERT INTO `qs_hotword` VALUES ('37193', '水泵工程师', '25');
INSERT INTO `qs_hotword` VALUES ('37194', '塑料模具工程师', '24');
INSERT INTO `qs_hotword` VALUES ('37195', '水泵技术员', '25');
INSERT INTO `qs_hotword` VALUES ('37196', '市场推广主任', '41');
INSERT INTO `qs_hotword` VALUES ('37197', '银行保安', '24');
INSERT INTO `qs_hotword` VALUES ('37218', '工程预决算员', '15');
INSERT INTO `qs_hotword` VALUES ('37226', '外勤业务', '10');
INSERT INTO `qs_hotword` VALUES ('37228', '船务人员', '12');
INSERT INTO `qs_hotword` VALUES ('37229', '管道工', '13');
INSERT INTO `qs_hotword` VALUES ('37238', '销售代表上海', '10');
INSERT INTO `qs_hotword` VALUES ('37258', '渠道开发', '11');
INSERT INTO `qs_hotword` VALUES ('37290', '电子商务推广专员', '10');
INSERT INTO `qs_hotword` VALUES ('37302', '软件开发项目经理', '26');
INSERT INTO `qs_hotword` VALUES ('37484', '加工中心操作员', '12');
INSERT INTO `qs_hotword` VALUES ('37510', 'KA业务员', '23');
INSERT INTO `qs_hotword` VALUES ('37530', '业务跟单助理', '61');
INSERT INTO `qs_hotword` VALUES ('37598', '平面设计师助理', '11');
INSERT INTO `qs_hotword` VALUES ('37610', '物业工程主管', '25');
INSERT INTO `qs_hotword` VALUES ('37625', '产品销售工程师', '12');
INSERT INTO `qs_hotword` VALUES ('37640', '成本总监', '12');
INSERT INTO `qs_hotword` VALUES ('37651', '资深课程顾问', '31');
INSERT INTO `qs_hotword` VALUES ('37656', '互联网销售代表', '11');
INSERT INTO `qs_hotword` VALUES ('37668', '服装设计师助理', '18');
INSERT INTO `qs_hotword` VALUES ('37672', '营销工程师', '44');
INSERT INTO `qs_hotword` VALUES ('37691', '总务专员', '12');
INSERT INTO `qs_hotword` VALUES ('37739', '采购跟单员', '18');
INSERT INTO `qs_hotword` VALUES ('37740', '物业公司总经理', '48');
INSERT INTO `qs_hotword` VALUES ('37775', '创意设计师', '11');
INSERT INTO `qs_hotword` VALUES ('37790', '薪资福利专员', '27');
INSERT INTO `qs_hotword` VALUES ('37797', '园林景观工程师', '13');
INSERT INTO `qs_hotword` VALUES ('37818', '非处方药医院代表', '15');
INSERT INTO `qs_hotword` VALUES ('37865', '手机维修工程师', '24');
INSERT INTO `qs_hotword` VALUES ('37894', '商务主任', '16');
INSERT INTO `qs_hotword` VALUES ('37908', '礼品销售员', '10');
INSERT INTO `qs_hotword` VALUES ('37934', 'SQE', '28');
INSERT INTO `qs_hotword` VALUES ('37989', '集团副总裁', '10');
INSERT INTO `qs_hotword` VALUES ('38035', '机械绘图员', '35');
INSERT INTO `qs_hotword` VALUES ('38038', '品保主管', '14');
INSERT INTO `qs_hotword` VALUES ('38039', '助理项目经理', '11');
INSERT INTO `qs_hotword` VALUES ('38089', '房地产销售顾问', '14');
INSERT INTO `qs_hotword` VALUES ('38104', '财务负责人', '12');
INSERT INTO `qs_hotword` VALUES ('38128', 'Linux软件工程师', '20');
INSERT INTO `qs_hotword` VALUES ('38139', '助理客户经理', '27');
INSERT INTO `qs_hotword` VALUES ('38140', 'COBOL软件工程师', '19');
INSERT INTO `qs_hotword` VALUES ('38197', '专用车机械设计师', '25');
INSERT INTO `qs_hotword` VALUES ('38231', '材料研发工程师', '10');
INSERT INTO `qs_hotword` VALUES ('38271', '电气销售工程师', '13');
INSERT INTO `qs_hotword` VALUES ('38299', '美工编辑', '14');
INSERT INTO `qs_hotword` VALUES ('38337', '雅思教师', '25');
INSERT INTO `qs_hotword` VALUES ('38365', 'CEO秘书', '11');
INSERT INTO `qs_hotword` VALUES ('38373', '面料业务员', '10');
INSERT INTO `qs_hotword` VALUES ('38387', '综合办公室主任', '38');
INSERT INTO `qs_hotword` VALUES ('38418', '市场开发部经理', '18');
INSERT INTO `qs_hotword` VALUES ('38419', '资深面料开发', '24');
INSERT INTO `qs_hotword` VALUES ('38420', '业务专员工业通讯', '24');
INSERT INTO `qs_hotword` VALUES ('38421', '环保工程师助理', '25');
INSERT INTO `qs_hotword` VALUES ('38422', '产品经理预付卡', '24');
INSERT INTO `qs_hotword` VALUES ('38472', '营销企划', '13');
INSERT INTO `qs_hotword` VALUES ('38474', '初中化学教师', '17');
INSERT INTO `qs_hotword` VALUES ('38511', '投资分析师', '14');
INSERT INTO `qs_hotword` VALUES ('38528', '订单管理员', '12');
INSERT INTO `qs_hotword` VALUES ('38530', '应收账款会计', '11');
INSERT INTO `qs_hotword` VALUES ('38533', '技术部助理', '10');
INSERT INTO `qs_hotword` VALUES ('38539', '2012届应届生', '14');
INSERT INTO `qs_hotword` VALUES ('38540', '计算机工程师', '13');
INSERT INTO `qs_hotword` VALUES ('38563', '销售技术工程师', '23');
INSERT INTO `qs_hotword` VALUES ('38612', '注塑工艺员', '13');
INSERT INTO `qs_hotword` VALUES ('38622', '电子技术员', '29');
INSERT INTO `qs_hotword` VALUES ('38632', '开发人员', '10');
INSERT INTO `qs_hotword` VALUES ('38638', '游戏美术设计师', '11');
INSERT INTO `qs_hotword` VALUES ('38700', '奢侈品导购', '14');
INSERT INTO `qs_hotword` VALUES ('38719', '资料开发工程师', '12');
INSERT INTO `qs_hotword` VALUES ('38736', '医药招商专员', '11');
INSERT INTO `qs_hotword` VALUES ('38742', '建筑方案设计师', '14');
INSERT INTO `qs_hotword` VALUES ('38767', '公司前台', '16');
INSERT INTO `qs_hotword` VALUES ('38804', '投资移民咨询顾问', '16');
INSERT INTO `qs_hotword` VALUES ('38833', '变压器设计工程师', '14');
INSERT INTO `qs_hotword` VALUES ('38854', '设备管理工程师', '14');
INSERT INTO `qs_hotword` VALUES ('38940', '区域客户经理', '23');
INSERT INTO `qs_hotword` VALUES ('38968', '装饰装修工程师', '10');
INSERT INTO `qs_hotword` VALUES ('38979', '空运销售', '16');
INSERT INTO `qs_hotword` VALUES ('39060', 'Accountant会计', '18');
INSERT INTO `qs_hotword` VALUES ('39070', '分公司副总经理', '31');
INSERT INTO `qs_hotword` VALUES ('39091', '前端设计师', '18');
INSERT INTO `qs_hotword` VALUES ('39122', '软件测试主管', '38');
INSERT INTO `qs_hotword` VALUES ('39126', '业务跟单经理', '12');
INSERT INTO `qs_hotword` VALUES ('39161', '英文助理', '10');
INSERT INTO `qs_hotword` VALUES ('39186', '汽车4S店总经理', '12');
INSERT INTO `qs_hotword` VALUES ('39201', '对日软件工程师', '10');
INSERT INTO `qs_hotword` VALUES ('39293', '设备维修工程师', '34');
INSERT INTO `qs_hotword` VALUES ('39300', '质量检验员QC', '10');
INSERT INTO `qs_hotword` VALUES ('39313', '销售员SALES', '27');
INSERT INTO `qs_hotword` VALUES ('39366', '高级美术指导', '22');
INSERT INTO `qs_hotword` VALUES ('39376', '系统实施工程师', '24');
INSERT INTO `qs_hotword` VALUES ('39430', '行政人事部经理', '36');
INSERT INTO `qs_hotword` VALUES ('39462', '生产部经理助理', '12');
INSERT INTO `qs_hotword` VALUES ('39476', '董事助理', '25');
INSERT INTO `qs_hotword` VALUES ('39478', '网页美工美编', '25');
INSERT INTO `qs_hotword` VALUES ('39479', 'SP平台运营经理', '24');
INSERT INTO `qs_hotword` VALUES ('39480', '切配中工', '24');
INSERT INTO `qs_hotword` VALUES ('39513', '开单员', '29');
INSERT INTO `qs_hotword` VALUES ('39519', '化学工程师', '13');
INSERT INTO `qs_hotword` VALUES ('39665', '工程维修人员', '17');
INSERT INTO `qs_hotword` VALUES ('39684', '工程部副经理', '51');
INSERT INTO `qs_hotword` VALUES ('39748', '商标流程管理员', '24');
INSERT INTO `qs_hotword` VALUES ('39765', '版房主管', '11');
INSERT INTO `qs_hotword` VALUES ('39836', '涂装工艺工程师', '11');
INSERT INTO `qs_hotword` VALUES ('39842', '行政文员兼前台', '10');
INSERT INTO `qs_hotword` VALUES ('39852', 'NET高级程序员', '10');
INSERT INTO `qs_hotword` VALUES ('39904', '注塑工艺工程师', '13');
INSERT INTO `qs_hotword` VALUES ('39932', '工艺主管', '18');
INSERT INTO `qs_hotword` VALUES ('39947', '体系专员', '19');
INSERT INTO `qs_hotword` VALUES ('40025', '接送货员', '12');
INSERT INTO `qs_hotword` VALUES ('40046', '初高中英语老师', '14');
INSERT INTO `qs_hotword` VALUES ('40176', '振动测量专员', '24');
INSERT INTO `qs_hotword` VALUES ('40185', '市场主任', '24');
INSERT INTO `qs_hotword` VALUES ('40186', '项目销售主管', '12');
INSERT INTO `qs_hotword` VALUES ('40203', '高级销售专员', '10');
INSERT INTO `qs_hotword` VALUES ('40255', '品保工程师', '11');
INSERT INTO `qs_hotword` VALUES ('40256', '美容化妆顾问', '24');
INSERT INTO `qs_hotword` VALUES ('40285', '服装跟单QC', '10');
INSERT INTO `qs_hotword` VALUES ('40374', '市场客服', '12');
INSERT INTO `qs_hotword` VALUES ('40489', '加盟督导', '14');
INSERT INTO `qs_hotword` VALUES ('40498', 'B2B行业营销总监', '21');
INSERT INTO `qs_hotword` VALUES ('40539', '分销代表', '14');
INSERT INTO `qs_hotword` VALUES ('40549', '生产车间主任', '15');
INSERT INTO `qs_hotword` VALUES ('40561', '记者及区域代理', '12');
INSERT INTO `qs_hotword` VALUES ('40586', '初高中数学老师', '16');
INSERT INTO `qs_hotword` VALUES ('40595', '门店导购', '10');
INSERT INTO `qs_hotword` VALUES ('40651', '开发报建专员', '12');
INSERT INTO `qs_hotword` VALUES ('40688', '试验工程师', '12');
INSERT INTO `qs_hotword` VALUES ('40747', '质量管理部经理', '14');
INSERT INTO `qs_hotword` VALUES ('40756', '店铺销售员', '10');
INSERT INTO `qs_hotword` VALUES ('40769', '高级建筑设计师', '11');
INSERT INTO `qs_hotword` VALUES ('40795', '工业设计工程师', '12');
INSERT INTO `qs_hotword` VALUES ('40814', '产品渠道经理', '52');
INSERT INTO `qs_hotword` VALUES ('40815', '网店销售', '56');
INSERT INTO `qs_hotword` VALUES ('40816', '卖场营业员', '68');
INSERT INTO `qs_hotword` VALUES ('40817', '区域客服经理', '54');
INSERT INTO `qs_hotword` VALUES ('40818', '商场推广助理', '48');
INSERT INTO `qs_hotword` VALUES ('40837', '高级电子工程师', '11');
INSERT INTO `qs_hotword` VALUES ('40854', '光学设计工程师', '13');
INSERT INTO `qs_hotword` VALUES ('40881', '技术维护工程师', '13');
INSERT INTO `qs_hotword` VALUES ('40893', 'JAVA测试工程师', '22');
INSERT INTO `qs_hotword` VALUES ('40898', '销售工程师电制冷', '10');
INSERT INTO `qs_hotword` VALUES ('40931', '服务器工程师', '14');
INSERT INTO `qs_hotword` VALUES ('40939', '网站优化工程师', '18');
INSERT INTO `qs_hotword` VALUES ('40960', '镀膜工程师', '15');
INSERT INTO `qs_hotword` VALUES ('40971', '安规工程师', '12');
INSERT INTO `qs_hotword` VALUES ('41022', 'LED销售工程师', '34');
INSERT INTO `qs_hotword` VALUES ('41088', '销售工程师自动化', '12');
INSERT INTO `qs_hotword` VALUES ('41089', '销售工程师电力', '14');
INSERT INTO `qs_hotword` VALUES ('41096', '国际业务员', '25');
INSERT INTO `qs_hotword` VALUES ('41097', '店铺销售人员', '12');
INSERT INTO `qs_hotword` VALUES ('41105', '日语业务员', '10');
INSERT INTO `qs_hotword` VALUES ('41109', '产品工艺工程师', '17');
INSERT INTO `qs_hotword` VALUES ('41110', '机构工程师', '17');
INSERT INTO `qs_hotword` VALUES ('41135', '国际贸易部经理', '12');
INSERT INTO `qs_hotword` VALUES ('41175', '资深视觉陈列', '25');
INSERT INTO `qs_hotword` VALUES ('41177', '质量检验员LQC', '25');
INSERT INTO `qs_hotword` VALUES ('41181', '电子产品工程师PE', '25');
INSERT INTO `qs_hotword` VALUES ('41183', '操作工Operator', '26');
INSERT INTO `qs_hotword` VALUES ('41184', '质量文档控制', '25');
INSERT INTO `qs_hotword` VALUES ('41234', 'FPGA设计工程师', '12');
INSERT INTO `qs_hotword` VALUES ('41263', '储干', '13');
INSERT INTO `qs_hotword` VALUES ('41283', '二手车专员', '14');
INSERT INTO `qs_hotword` VALUES ('41335', '化工工艺工程师', '14');
INSERT INTO `qs_hotword` VALUES ('41339', '风险控制', '10');
INSERT INTO `qs_hotword` VALUES ('41347', '包装设计工程师', '36');
INSERT INTO `qs_hotword` VALUES ('41419', 'SMT工程师', '18');
INSERT INTO `qs_hotword` VALUES ('41554', 'Purchaser', '24');
INSERT INTO `qs_hotword` VALUES ('41647', '注册监理工程师', '13');
INSERT INTO `qs_hotword` VALUES ('41679', '主任设计师', '72');
INSERT INTO `qs_hotword` VALUES ('41723', '车板工', '32');
INSERT INTO `qs_hotword` VALUES ('41734', '市场策划主管', '26');
INSERT INTO `qs_hotword` VALUES ('41743', '设备维修员', '28');
INSERT INTO `qs_hotword` VALUES ('41758', '电子工艺工程师', '13');
INSERT INTO `qs_hotword` VALUES ('41771', '会计上岗证教师', '26');
INSERT INTO `qs_hotword` VALUES ('41773', '图书编辑-日语', '24');
INSERT INTO `qs_hotword` VALUES ('41791', 'FLEX程序员', '12');
INSERT INTO `qs_hotword` VALUES ('41863', '原画师', '17');
INSERT INTO `qs_hotword` VALUES ('41883', '平面广告设计师', '10');
INSERT INTO `qs_hotword` VALUES ('41950', '应用软件工程师', '31');
INSERT INTO `qs_hotword` VALUES ('42070', '心外、胸外科医师', '24');
INSERT INTO `qs_hotword` VALUES ('42071', '电气维修技术员', '28');
INSERT INTO `qs_hotword` VALUES ('42072', '绿化养护工', '28');
INSERT INTO `qs_hotword` VALUES ('42081', '机加工工艺工程师', '18');
INSERT INTO `qs_hotword` VALUES ('42096', '信息工程师', '10');
INSERT INTO `qs_hotword` VALUES ('42101', '公司总经理', '15');
INSERT INTO `qs_hotword` VALUES ('42105', '产品应用工程师', '11');
INSERT INTO `qs_hotword` VALUES ('42144', 'linux讲师', '10');
INSERT INTO `qs_hotword` VALUES ('42182', '机械维修技术员', '12');
INSERT INTO `qs_hotword` VALUES ('42188', '销售统计专员', '24');
INSERT INTO `qs_hotword` VALUES ('42189', '资深服装设计师', '31');
INSERT INTO `qs_hotword` VALUES ('42190', '人事数据专员', '24');
INSERT INTO `qs_hotword` VALUES ('42191', '网购部主管', '25');
INSERT INTO `qs_hotword` VALUES ('42192', '直营部区域经理', '24');
INSERT INTO `qs_hotword` VALUES ('42193', '区域门店督导', '24');
INSERT INTO `qs_hotword` VALUES ('42194', '网络平面设计助理', '24');
INSERT INTO `qs_hotword` VALUES ('42195', '市场部企划主管', '27');
INSERT INTO `qs_hotword` VALUES ('42196', '市场策划总监', '11');
INSERT INTO `qs_hotword` VALUES ('42266', '电镀技术员Setter', '24');
INSERT INTO `qs_hotword` VALUES ('42299', '物流、采购人员', '32');
INSERT INTO `qs_hotword` VALUES ('42318', '储备人才', '15');
INSERT INTO `qs_hotword` VALUES ('42366', '市场媒体公关专员', '24');
INSERT INTO `qs_hotword` VALUES ('42367', '商用空调业务员', '24');
INSERT INTO `qs_hotword` VALUES ('42368', '售后服务信息员', '25');
INSERT INTO `qs_hotword` VALUES ('42369', '商用空调销售员', '24');
INSERT INTO `qs_hotword` VALUES ('42431', '成本会计主管', '14');
INSERT INTO `qs_hotword` VALUES ('42457', '机电设计工程师', '11');
INSERT INTO `qs_hotword` VALUES ('42525', '数控铣工', '12');
INSERT INTO `qs_hotword` VALUES ('42538', '直销员', '14');
INSERT INTO `qs_hotword` VALUES ('42577', '销售管理部经理', '11');
INSERT INTO `qs_hotword` VALUES ('42607', '财务分析', '11');
INSERT INTO `qs_hotword` VALUES ('42696', '环境推进Intern', '24');
INSERT INTO `qs_hotword` VALUES ('42697', '全国高级客户经理', '24');
INSERT INTO `qs_hotword` VALUES ('42726', '集团总部税务主管', '24');
INSERT INTO `qs_hotword` VALUES ('42727', '量测技术员', '25');
INSERT INTO `qs_hotword` VALUES ('42728', '修理技术员', '24');
INSERT INTO `qs_hotword` VALUES ('42729', '程序设计员', '27');
INSERT INTO `qs_hotword` VALUES ('42730', '冲压工程部课长', '24');
INSERT INTO `qs_hotword` VALUES ('42915', '市场部实习生', '13');
INSERT INTO `qs_hotword` VALUES ('42958', '安装技师', '10');
INSERT INTO `qs_hotword` VALUES ('43095', '售后维修工程师', '17');
INSERT INTO `qs_hotword` VALUES ('43265', '客户经理终端部', '21');
INSERT INTO `qs_hotword` VALUES ('43310', '副校长', '38');
INSERT INTO `qs_hotword` VALUES ('43406', '人力资源部主管', '16');
INSERT INTO `qs_hotword` VALUES ('43425', '计算机维护工程师', '21');
INSERT INTO `qs_hotword` VALUES ('43429', '机电技工', '10');
INSERT INTO `qs_hotword` VALUES ('43431', '二手车销售顾问', '15');
INSERT INTO `qs_hotword` VALUES ('43433', '服务顾问助理', '10');
INSERT INTO `qs_hotword` VALUES ('43450', 'J2EE软件工程师', '11');
INSERT INTO `qs_hotword` VALUES ('43472', '团购客户经理', '11');
INSERT INTO `qs_hotword` VALUES ('43480', '板房主管', '12');
INSERT INTO `qs_hotword` VALUES ('43526', 'QC专员', '11');
INSERT INTO `qs_hotword` VALUES ('43548', '收款专员', '16');
INSERT INTO `qs_hotword` VALUES ('43688', '制造部经理', '15');
INSERT INTO `qs_hotword` VALUES ('43734', '生产普工', '17');
INSERT INTO `qs_hotword` VALUES ('43795', '现场品管', '13');
INSERT INTO `qs_hotword` VALUES ('43813', '研发助理工程师', '12');
INSERT INTO `qs_hotword` VALUES ('43832', '行业客户销售', '15');
INSERT INTO `qs_hotword` VALUES ('43841', 'UI设计顾问', '10');
INSERT INTO `qs_hotword` VALUES ('43849', '退票专员', '48');
INSERT INTO `qs_hotword` VALUES ('43850', '仓库质检员', '50');
INSERT INTO `qs_hotword` VALUES ('43883', '调度员', '46');
INSERT INTO `qs_hotword` VALUES ('43992', '区域商超经理', '21');
INSERT INTO `qs_hotword` VALUES ('44104', '仓储经理', '13');
INSERT INTO `qs_hotword` VALUES ('44123', '车身设计工程师', '15');
INSERT INTO `qs_hotword` VALUES ('44225', 'QE工程师', '34');
INSERT INTO `qs_hotword` VALUES ('44361', 'Apple精品店收银', '12');
INSERT INTO `qs_hotword` VALUES ('44366', '市场部项目经理', '10');
INSERT INTO `qs_hotword` VALUES ('44396', '前期开发专员', '10');
INSERT INTO `qs_hotword` VALUES ('44411', '销售工程师天津', '12');
INSERT INTO `qs_hotword` VALUES ('44413', '网络技术工程师', '10');
INSERT INTO `qs_hotword` VALUES ('44425', '市场联络员', '24');
INSERT INTO `qs_hotword` VALUES ('44452', 'PB开发工程师', '12');
INSERT INTO `qs_hotword` VALUES ('44504', '海运业务员', '13');
INSERT INTO `qs_hotword` VALUES ('44521', '幼教讲师', '10');
INSERT INTO `qs_hotword` VALUES ('44561', '合约主管', '11');
INSERT INTO `qs_hotword` VALUES ('44601', '施工人员', '12');
INSERT INTO `qs_hotword` VALUES ('44619', '电气主管', '10');
INSERT INTO `qs_hotword` VALUES ('44701', '学管师', '21');
INSERT INTO `qs_hotword` VALUES ('44728', '销售代表天津', '17');
INSERT INTO `qs_hotword` VALUES ('44732', 'c++高级程序员', '14');
INSERT INTO `qs_hotword` VALUES ('44778', '品牌策划经理', '25');
INSERT INTO `qs_hotword` VALUES ('44790', '地区产品经理', '23');
INSERT INTO `qs_hotword` VALUES ('44804', '医药代表第三终端', '31');
INSERT INTO `qs_hotword` VALUES ('44806', '置业顾问就近分配', '17');
INSERT INTO `qs_hotword` VALUES ('44832', '大店经理', '12');
INSERT INTO `qs_hotword` VALUES ('44834', '服务代表', '34');
INSERT INTO `qs_hotword` VALUES ('44852', '高级培训专员', '10');
INSERT INTO `qs_hotword` VALUES ('44865', '珠宝店店长', '29');
INSERT INTO `qs_hotword` VALUES ('44870', '区域拓展经理', '27');
INSERT INTO `qs_hotword` VALUES ('44878', '生产车间管理', '46');
INSERT INTO `qs_hotword` VALUES ('44903', '工程部内勤', '10');
INSERT INTO `qs_hotword` VALUES ('44919', '店长、店员', '15');
INSERT INTO `qs_hotword` VALUES ('44935', '门店总经理', '16');
INSERT INTO `qs_hotword` VALUES ('44940', '工程管理部经理', '31');
INSERT INTO `qs_hotword` VALUES ('44964', '活动执行经理全国', '20');
INSERT INTO `qs_hotword` VALUES ('44987', '地区营业担当经理', '15');
INSERT INTO `qs_hotword` VALUES ('45010', '门店会计', '11');
INSERT INTO `qs_hotword` VALUES ('45021', '二手房销售员', '23');
INSERT INTO `qs_hotword` VALUES ('45049', 'OTC地区总经理', '13');
INSERT INTO `qs_hotword` VALUES ('45057', '计算机硬件工程师', '16');
INSERT INTO `qs_hotword` VALUES ('45058', '计算机软件工程师', '13');
INSERT INTO `qs_hotword` VALUES ('45079', '行政部部长', '10');
INSERT INTO `qs_hotword` VALUES ('45139', '铲车司机', '11');
INSERT INTO `qs_hotword` VALUES ('45155', '食品研发员', '11');
INSERT INTO `qs_hotword` VALUES ('45175', '小区业务推广', '10');
INSERT INTO `qs_hotword` VALUES ('45176', '家装经理', '19');
INSERT INTO `qs_hotword` VALUES ('45222', '售后服务技术员', '11');
INSERT INTO `qs_hotword` VALUES ('45238', '运营商销售经理', '15');
INSERT INTO `qs_hotword` VALUES ('45239', '智能机客户代表', '21');
INSERT INTO `qs_hotword` VALUES ('45297', '施工管理员', '15');
INSERT INTO `qs_hotword` VALUES ('45359', '零售通路代表', '12');
INSERT INTO `qs_hotword` VALUES ('45368', '销售工程师唐山', '23');
INSERT INTO `qs_hotword` VALUES ('45373', '房地产项目经理', '13');
INSERT INTO `qs_hotword` VALUES ('45376', '预决算经理', '11');
INSERT INTO `qs_hotword` VALUES ('45377', '零售代表实习生', '42');
INSERT INTO `qs_hotword` VALUES ('45401', '机房精密空调销售', '17');
INSERT INTO `qs_hotword` VALUES ('45407', '高级行政专员', '10');
INSERT INTO `qs_hotword` VALUES ('45449', '采购部副经理', '14');
INSERT INTO `qs_hotword` VALUES ('45453', '市场部客户经理', '23');
INSERT INTO `qs_hotword` VALUES ('45460', '合同管理工程师', '11');
INSERT INTO `qs_hotword` VALUES ('45468', '储备招商代表', '13');
INSERT INTO `qs_hotword` VALUES ('45475', '医药代表天津', '10');
INSERT INTO `qs_hotword` VALUES ('45493', '胶印机机长', '17');
INSERT INTO `qs_hotword` VALUES ('45534', '零售管理培训生', '10');
INSERT INTO `qs_hotword` VALUES ('45562', '销售代表医院渠道', '21');
INSERT INTO `qs_hotword` VALUES ('45574', '苹果专卖店店员', '10');
INSERT INTO `qs_hotword` VALUES ('45614', '红帽RHCE讲师', '10');
INSERT INTO `qs_hotword` VALUES ('45620', '连锁发展专员', '12');
INSERT INTO `qs_hotword` VALUES ('45633', 'C语言开发工程师', '15');
INSERT INTO `qs_hotword` VALUES ('45642', '运营副总监', '47');
INSERT INTO `qs_hotword` VALUES ('45643', '市场部专任代表', '26');
INSERT INTO `qs_hotword` VALUES ('45676', '兼职歌手主播', '19');
INSERT INTO `qs_hotword` VALUES ('45682', 'C++', '12');
INSERT INTO `qs_hotword` VALUES ('45712', '直销主管', '29');
INSERT INTO `qs_hotword` VALUES ('45713', 'KA业务代表', '34');
INSERT INTO `qs_hotword` VALUES ('45779', '连锁开发经理', '10');
INSERT INTO `qs_hotword` VALUES ('45813', '财务核算', '11');
INSERT INTO `qs_hotword` VALUES ('45871', '电脑维修工程师', '20');
INSERT INTO `qs_hotword` VALUES ('45874', '通路渠道销售代表', '38');
INSERT INTO `qs_hotword` VALUES ('45906', '世界名表销售导购', '13');
INSERT INTO `qs_hotword` VALUES ('45912', '权证专员', '19');
INSERT INTO `qs_hotword` VALUES ('45928', '名表连锁店店长', '28');
INSERT INTO `qs_hotword` VALUES ('45952', '安全管理专员', '25');
INSERT INTO `qs_hotword` VALUES ('45984', '区域广告销售经理', '10');
INSERT INTO `qs_hotword` VALUES ('46034', '人事行政储备干部', '14');
INSERT INTO `qs_hotword` VALUES ('46097', '酒店总经理', '37');
INSERT INTO `qs_hotword` VALUES ('46118', '营业课主任', '60');
INSERT INTO `qs_hotword` VALUES ('46152', '品牌店财务经理', '23');
INSERT INTO `qs_hotword` VALUES ('46153', '高端品牌店总经理', '23');
INSERT INTO `qs_hotword` VALUES ('46180', 'Chemist', '23');
INSERT INTO `qs_hotword` VALUES ('46297', '电气造价师', '11');
INSERT INTO `qs_hotword` VALUES ('46330', '施工管理', '10');
INSERT INTO `qs_hotword` VALUES ('46368', '运作员', '14');
INSERT INTO `qs_hotword` VALUES ('46369', '储备分部经理', '11');
INSERT INTO `qs_hotword` VALUES ('46387', '英语外贸业务员', '15');
INSERT INTO `qs_hotword` VALUES ('46409', '分公司销售经理', '11');
INSERT INTO `qs_hotword` VALUES ('46455', '督导主管', '35');
INSERT INTO `qs_hotword` VALUES ('46469', '家居用品营业员', '14');
INSERT INTO `qs_hotword` VALUES ('46519', '电气控制工程师', '22');
INSERT INTO `qs_hotword` VALUES ('46602', '营销副总监', '46');
INSERT INTO `qs_hotword` VALUES ('46606', '校区主管', '12');
INSERT INTO `qs_hotword` VALUES ('46628', '车队队长', '10');
INSERT INTO `qs_hotword` VALUES ('46658', '兼职装饰设计师', '27');
INSERT INTO `qs_hotword` VALUES ('46692', '分子诊断咨询代表', '26');
INSERT INTO `qs_hotword` VALUES ('46698', '成本部经理', '57');
INSERT INTO `qs_hotword` VALUES ('46774', '行车工', '15');
INSERT INTO `qs_hotword` VALUES ('46793', '兼职神秘访客', '44');
INSERT INTO `qs_hotword` VALUES ('46802', '外贸服装业务跟单', '11');
INSERT INTO `qs_hotword` VALUES ('46803', '外贸专员及助理', '10');
INSERT INTO `qs_hotword` VALUES ('46822', '审计部经理', '15');
INSERT INTO `qs_hotword` VALUES ('46860', '高端理财经理', '10');
INSERT INTO `qs_hotword` VALUES ('46862', '医院育婴助理', '11');
INSERT INTO `qs_hotword` VALUES ('46863', '婴线终端推广员', '29');
INSERT INTO `qs_hotword` VALUES ('46864', '客服专员母婴方向', '20');
INSERT INTO `qs_hotword` VALUES ('46865', '医务推广员', '31');
INSERT INTO `qs_hotword` VALUES ('46874', '诊断试剂推广专员', '11');
INSERT INTO `qs_hotword` VALUES ('46890', 'ISO专员', '16');
INSERT INTO `qs_hotword` VALUES ('46896', '省区商务经理', '28');
INSERT INTO `qs_hotword` VALUES ('46897', '网络销售顾问', '10');
INSERT INTO `qs_hotword` VALUES ('46904', '生产技术科程式组', '23');
INSERT INTO `qs_hotword` VALUES ('46905', '叉车驾驶员仓管', '23');
INSERT INTO `qs_hotword` VALUES ('46906', '机械操作工涂装', '23');
INSERT INTO `qs_hotword` VALUES ('46907', '操作工组立', '23');
INSERT INTO `qs_hotword` VALUES ('46908', '生产技术管理', '25');
INSERT INTO `qs_hotword` VALUES ('46909', '系统设计', '24');
INSERT INTO `qs_hotword` VALUES ('46910', '区域KAM', '24');
INSERT INTO `qs_hotword` VALUES ('46911', '渠道督查', '23');
INSERT INTO `qs_hotword` VALUES ('46918', '资深营业员', '11');
INSERT INTO `qs_hotword` VALUES ('46950', '区域培训师', '15');
INSERT INTO `qs_hotword` VALUES ('46951', '终端主管', '15');
INSERT INTO `qs_hotword` VALUES ('46958', '大区／办事处经理', '14');
INSERT INTO `qs_hotword` VALUES ('46962', '销售业务员Sales', '15');
INSERT INTO `qs_hotword` VALUES ('46995', '技术服务员', '11');
INSERT INTO `qs_hotword` VALUES ('47025', '销售行政经理', '10');
INSERT INTO `qs_hotword` VALUES ('47058', '医药销售OTC代表', '16');
INSERT INTO `qs_hotword` VALUES ('47105', '兼职培训讲师', '36');
INSERT INTO `qs_hotword` VALUES ('47138', '市场部业务经理', '11');
INSERT INTO `qs_hotword` VALUES ('47166', '驻地业务员', '21');
INSERT INTO `qs_hotword` VALUES ('47175', '日语老师', '15');
INSERT INTO `qs_hotword` VALUES ('47286', '风控总监', '12');
INSERT INTO `qs_hotword` VALUES ('47293', '品牌顾问', '18');
INSERT INTO `qs_hotword` VALUES ('47390', '设施主管', '17');
INSERT INTO `qs_hotword` VALUES ('47401', '销售主管第三终端', '17');
INSERT INTO `qs_hotword` VALUES ('47445', '销售代表啤酒设备', '12');
INSERT INTO `qs_hotword` VALUES ('47486', '糯米网-采编', '18');
INSERT INTO `qs_hotword` VALUES ('47570', '销售信息员', '10');
INSERT INTO `qs_hotword` VALUES ('47650', '销售代表经营人员', '31');
INSERT INTO `qs_hotword` VALUES ('47659', '车管员', '28');
INSERT INTO `qs_hotword` VALUES ('47670', '华为产品销售经理', '11');
INSERT INTO `qs_hotword` VALUES ('47711', '人事行政部经理', '45');
INSERT INTO `qs_hotword` VALUES ('47712', '销售外业', '28');
INSERT INTO `qs_hotword` VALUES ('47713', 'SMT设备技术员', '24');
INSERT INTO `qs_hotword` VALUES ('47730', '机电技师', '29');
INSERT INTO `qs_hotword` VALUES ('47734', '推广服务主任', '12');
INSERT INTO `qs_hotword` VALUES ('47740', '质量监督员', '25');
INSERT INTO `qs_hotword` VALUES ('47779', '企业金融部部长', '16');
INSERT INTO `qs_hotword` VALUES ('47804', '驻外融资客户经理', '18');
INSERT INTO `qs_hotword` VALUES ('47805', '口腔医生', '12');
INSERT INTO `qs_hotword` VALUES ('47829', '市场总经理助理', '24');
INSERT INTO `qs_hotword` VALUES ('47839', '日语讲师', '13');
INSERT INTO `qs_hotword` VALUES ('47846', '业代', '10');
INSERT INTO `qs_hotword` VALUES ('47865', '生产计划工程师', '11');
INSERT INTO `qs_hotword` VALUES ('47877', '零售部经理', '10');
INSERT INTO `qs_hotword` VALUES ('47889', '兼职网络写手', '11');
INSERT INTO `qs_hotword` VALUES ('47890', '理工类写手', '13');
INSERT INTO `qs_hotword` VALUES ('47918', '信用险客户经理', '11');
INSERT INTO `qs_hotword` VALUES ('48010', '医用耗材销售代表', '17');
INSERT INTO `qs_hotword` VALUES ('48089', '车务', '16');
INSERT INTO `qs_hotword` VALUES ('48114', '造价工程师挂靠', '29');
INSERT INTO `qs_hotword` VALUES ('48115', '一级建造师挂靠', '37');
INSERT INTO `qs_hotword` VALUES ('48116', '监理工程师挂靠', '27');
INSERT INTO `qs_hotword` VALUES ('48165', '品牌授权专员', '23');
INSERT INTO `qs_hotword` VALUES ('48172', '服务器运维工程师', '11');
INSERT INTO `qs_hotword` VALUES ('48174', '招商主任', '14');
INSERT INTO `qs_hotword` VALUES ('48221', 'OTC医药销售代表', '16');
INSERT INTO `qs_hotword` VALUES ('48234', '驻店药师', '10');
INSERT INTO `qs_hotword` VALUES ('48248', '装饰造价工程师', '10');
INSERT INTO `qs_hotword` VALUES ('48258', '工装夹具工程师', '10');
INSERT INTO `qs_hotword` VALUES ('48264', '质管员', '22');
INSERT INTO `qs_hotword` VALUES ('48274', '银行驻点客户经理', '10');
INSERT INTO `qs_hotword` VALUES ('48295', '前厅接待员', '12');
INSERT INTO `qs_hotword` VALUES ('48333', '物管员', '11');
INSERT INTO `qs_hotword` VALUES ('48344', '销售经理重庆', '10');
INSERT INTO `qs_hotword` VALUES ('48372', '冲压工程师', '14');
INSERT INTO `qs_hotword` VALUES ('48430', '商场管理员', '13');
INSERT INTO `qs_hotword` VALUES ('48468', '物业公司副总经理', '16');
INSERT INTO `qs_hotword` VALUES ('48473', '服装督导', '11');
INSERT INTO `qs_hotword` VALUES ('48479', '医院销售经理', '18');
INSERT INTO `qs_hotword` VALUES ('48493', '项目申报员', '12');
INSERT INTO `qs_hotword` VALUES ('48496', '销售代表重庆', '10');
INSERT INTO `qs_hotword` VALUES ('48616', '营养教育主管', '12');
INSERT INTO `qs_hotword` VALUES ('48639', '省区经理全国', '18');
INSERT INTO `qs_hotword` VALUES ('48668', '门店专员', '19');
INSERT INTO `qs_hotword` VALUES ('48669', '分公司副经理', '10');
INSERT INTO `qs_hotword` VALUES ('48686', '水泥行业销售经理', '16');
INSERT INTO `qs_hotword` VALUES ('48757', '兼职神秘顾客', '13');
INSERT INTO `qs_hotword` VALUES ('48771', '工作人员', '10');
INSERT INTO `qs_hotword` VALUES ('48827', '加盟经理', '12');
INSERT INTO `qs_hotword` VALUES ('48833', '运行维护工程师', '13');
INSERT INTO `qs_hotword` VALUES ('48834', '高压主管', '12');
INSERT INTO `qs_hotword` VALUES ('48835', '中控主管', '12');
INSERT INTO `qs_hotword` VALUES ('48836', '高压值班员', '13');
INSERT INTO `qs_hotword` VALUES ('48905', '水电安装工程师', '50');
INSERT INTO `qs_hotword` VALUES ('48925', '综合助理', '11');
INSERT INTO `qs_hotword` VALUES ('48938', '西南区域销售经理', '10');
INSERT INTO `qs_hotword` VALUES ('49009', '绿化施工员', '10');
INSERT INTO `qs_hotword` VALUES ('49016', '外教助教', '13');
INSERT INTO `qs_hotword` VALUES ('49018', '销售工程师重庆', '14');
INSERT INTO `qs_hotword` VALUES ('49046', '西餐厅经理', '17');
INSERT INTO `qs_hotword` VALUES ('49190', '售后技术员', '22');
INSERT INTO `qs_hotword` VALUES ('49201', '淘宝直通车专员', '11');
INSERT INTO `qs_hotword` VALUES ('49214', '门店助理', '10');
INSERT INTO `qs_hotword` VALUES ('49244', '舞蹈', '14');
INSERT INTO `qs_hotword` VALUES ('49245', '乐器手', '12');
INSERT INTO `qs_hotword` VALUES ('49354', '项目销售工程师', '10');
INSERT INTO `qs_hotword` VALUES ('49378', '零售诊所渠道专员', '17');
INSERT INTO `qs_hotword` VALUES ('49379', '市代拓展经理', '10');
INSERT INTO `qs_hotword` VALUES ('49383', '终端培训主管', '11');
INSERT INTO `qs_hotword` VALUES ('49440', '新房编辑', '79');
INSERT INTO `qs_hotword` VALUES ('49454', '物流操作员线长', '15');
INSERT INTO `qs_hotword` VALUES ('49479', '开发报建员', '11');
INSERT INTO `qs_hotword` VALUES ('49680', '放映员', '11');
INSERT INTO `qs_hotword` VALUES ('49693', '质量保证工程师', '10');
INSERT INTO `qs_hotword` VALUES ('49746', '地区主管', '21');
INSERT INTO `qs_hotword` VALUES ('49779', '装饰公司业务专员', '22');
INSERT INTO `qs_hotword` VALUES ('49780', '布艺窗帘销售', '22');
INSERT INTO `qs_hotword` VALUES ('49781', '墙纸销售店面', '22');
INSERT INTO `qs_hotword` VALUES ('49783', '加盟事业顾问', '23');
INSERT INTO `qs_hotword` VALUES ('49784', '招商经理重庆', '22');
INSERT INTO `qs_hotword` VALUES ('49785', '健康代表重庆', '22');
INSERT INTO `qs_hotword` VALUES ('49879', '监控产品销售经理', '18');
INSERT INTO `qs_hotword` VALUES ('49897', '分公司财务经理', '20');
INSERT INTO `qs_hotword` VALUES ('49899', '信控助理', '10');
INSERT INTO `qs_hotword` VALUES ('49901', '高端设计师', '10');
INSERT INTO `qs_hotword` VALUES ('49918', '信控员', '10');
INSERT INTO `qs_hotword` VALUES ('49919', '市场督察', '18');
INSERT INTO `qs_hotword` VALUES ('49945', '输单员', '13');
INSERT INTO `qs_hotword` VALUES ('49980', '自控工程师DCS', '14');
INSERT INTO `qs_hotword` VALUES ('50008', '房地产总经理', '14');
INSERT INTO `qs_hotword` VALUES ('50016', '二手房置业顾问', '12');
INSERT INTO `qs_hotword` VALUES ('50052', '计算机维修工程师', '11');
INSERT INTO `qs_hotword` VALUES ('50125', '物控员', '11');
INSERT INTO `qs_hotword` VALUES ('50133', '高级导购', '22');
INSERT INTO `qs_hotword` VALUES ('50137', '打磨工', '19');
INSERT INTO `qs_hotword` VALUES ('50163', '市场开发岗', '19');
INSERT INTO `qs_hotword` VALUES ('50164', '营业部营销总监', '14');
INSERT INTO `qs_hotword` VALUES ('50165', '营业部合规总监', '11');
INSERT INTO `qs_hotword` VALUES ('50205', '车位', '12');
INSERT INTO `qs_hotword` VALUES ('50264', '软件工程项目经理', '10');
INSERT INTO `qs_hotword` VALUES ('50271', '医务经理', '14');
INSERT INTO `qs_hotword` VALUES ('50290', '生产技术部经理', '10');
INSERT INTO `qs_hotword` VALUES ('50355', '营销培训生', '11');
INSERT INTO `qs_hotword` VALUES ('50371', '母婴渠道销售代表', '38');
INSERT INTO `qs_hotword` VALUES ('50385', '工程维修主管', '11');
INSERT INTO `qs_hotword` VALUES ('50405', '物料专员', '11');
INSERT INTO `qs_hotword` VALUES ('50423', '化工技术员', '10');
INSERT INTO `qs_hotword` VALUES ('50427', '注塑机业务员', '17');
INSERT INTO `qs_hotword` VALUES ('50518', '开发报建经理', '10');
INSERT INTO `qs_hotword` VALUES ('50532', '兼职人员', '15');
INSERT INTO `qs_hotword` VALUES ('50537', '五星级酒店总经理', '10');
INSERT INTO `qs_hotword` VALUES ('50582', '营养推广代表', '10');
INSERT INTO `qs_hotword` VALUES ('50642', 'KA终端推广员', '26');
INSERT INTO `qs_hotword` VALUES ('50823', '营业员、促销员', '22');
INSERT INTO `qs_hotword` VALUES ('50829', '消防监控员', '12');
INSERT INTO `qs_hotword` VALUES ('50832', '营运主任', '12');
INSERT INTO `qs_hotword` VALUES ('50852', '分站站长', '12');
INSERT INTO `qs_hotword` VALUES ('50881', '安装设计师', '10');
INSERT INTO `qs_hotword` VALUES ('50923', '连锁店经理', '16');
INSERT INTO `qs_hotword` VALUES ('50927', '大区总经理', '28');
INSERT INTO `qs_hotword` VALUES ('50948', '售后维护工程师', '14');
INSERT INTO `qs_hotword` VALUES ('50969', '人事主任', '14');
INSERT INTO `qs_hotword` VALUES ('51105', '销售行政主管', '12');
INSERT INTO `qs_hotword` VALUES ('51139', '产品线总监', '25');
INSERT INTO `qs_hotword` VALUES ('51159', '销售主管医院', '19');
INSERT INTO `qs_hotword` VALUES ('51240', '工程内勤', '15');
INSERT INTO `qs_hotword` VALUES ('51243', '园林水电工程师', '25');
INSERT INTO `qs_hotword` VALUES ('51244', '倒班班长', '23');
INSERT INTO `qs_hotword` VALUES ('51270', '生产部主管', '17');
INSERT INTO `qs_hotword` VALUES ('51287', '质管部经理', '10');
INSERT INTO `qs_hotword` VALUES ('51314', '成本控制部经理', '23');
INSERT INTO `qs_hotword` VALUES ('51430', '餐厅实习店经理', '18');
INSERT INTO `qs_hotword` VALUES ('51634', '省区拓展经理', '12');
INSERT INTO `qs_hotword` VALUES ('51715', '人力资源副经理', '18');
INSERT INTO `qs_hotword` VALUES ('51794', '汽车销售工程师', '18');
INSERT INTO `qs_hotword` VALUES ('51824', '实习交易员', '13');
INSERT INTO `qs_hotword` VALUES ('51826', 'Java实习生', '11');
INSERT INTO `qs_hotword` VALUES ('51906', '美国互惠生', '33');
INSERT INTO `qs_hotword` VALUES ('51935', '采购商务', '10');
INSERT INTO `qs_hotword` VALUES ('52012', '维修学徒', '10');
INSERT INTO `qs_hotword` VALUES ('52088', '形象顾问', '10');
INSERT INTO `qs_hotword` VALUES ('52167', '值班电工', '10');
INSERT INTO `qs_hotword` VALUES ('52170', '终端销售经理', '16');
INSERT INTO `qs_hotword` VALUES ('52197', '助理店经理', '11');
INSERT INTO `qs_hotword` VALUES ('52215', '驻外营销人员', '15');
INSERT INTO `qs_hotword` VALUES ('52230', '市场推广部经理', '13');
INSERT INTO `qs_hotword` VALUES ('52245', '医药代表实习生', '10');
INSERT INTO `qs_hotword` VALUES ('52304', '车险核保岗', '10');
INSERT INTO `qs_hotword` VALUES ('52309', '客服兼房源管理', '13');
INSERT INTO `qs_hotword` VALUES ('52378', '代理商', '23');
INSERT INTO `qs_hotword` VALUES ('52394', '外派业务经理', '10');
INSERT INTO `qs_hotword` VALUES ('52408', '地区经理河北', '10');
INSERT INTO `qs_hotword` VALUES ('52430', '业务管理储备人才', '13');
INSERT INTO `qs_hotword` VALUES ('52441', '区域办事处经理', '10');
INSERT INTO `qs_hotword` VALUES ('52485', '种植师', '10');
INSERT INTO `qs_hotword` VALUES ('52523', '医药代表河北', '11');
INSERT INTO `qs_hotword` VALUES ('52535', '区域人事专员', '18');
INSERT INTO `qs_hotword` VALUES ('52540', '基建工程师', '17');
INSERT INTO `qs_hotword` VALUES ('52550', '销售代表石家庄', '11');
INSERT INTO `qs_hotword` VALUES ('52556', '教学、教务主管', '16');
INSERT INTO `qs_hotword` VALUES ('52660', '物流专员驻厂代表', '14');
INSERT INTO `qs_hotword` VALUES ('52695', 'ATM服务工程师', '11');
INSERT INTO `qs_hotword` VALUES ('52703', '驻厂专员', '10');
INSERT INTO `qs_hotword` VALUES ('52729', '金融项目经理', '13');
INSERT INTO `qs_hotword` VALUES ('52799', '销售事业部经理', '10');
INSERT INTO `qs_hotword` VALUES ('52806', '车务主管', '14');
INSERT INTO `qs_hotword` VALUES ('52856', '出国工作新加坡', '45');
INSERT INTO `qs_hotword` VALUES ('52887', '渠道推广主任', '43');
INSERT INTO `qs_hotword` VALUES ('52888', '渠道推广督导', '26');
INSERT INTO `qs_hotword` VALUES ('52961', '工程拓展经理', '11');
INSERT INTO `qs_hotword` VALUES ('52964', '办事处医务主管', '11');
INSERT INTO `qs_hotword` VALUES ('52982', '兼职区域经理', '11');
INSERT INTO `qs_hotword` VALUES ('52983', '变频器销售工程师', '14');
INSERT INTO `qs_hotword` VALUES ('53015', '培训生储备校长', '11');
INSERT INTO `qs_hotword` VALUES ('53024', '财务副总经理', '11');
INSERT INTO `qs_hotword` VALUES ('53025', '店铺文员', '15');
INSERT INTO `qs_hotword` VALUES ('53043', '网络优化工程师', '33');
INSERT INTO `qs_hotword` VALUES ('53083', '五金专员', '14');
INSERT INTO `qs_hotword` VALUES ('53099', '区销售经理', '13');
INSERT INTO `qs_hotword` VALUES ('53169', '业务发展代表BDR', '25');
INSERT INTO `qs_hotword` VALUES ('53180', '4S店财务经理', '20');
INSERT INTO `qs_hotword` VALUES ('53181', '4S店售后经理', '16');
INSERT INTO `qs_hotword` VALUES ('53182', '4S店销售经理', '26');
INSERT INTO `qs_hotword` VALUES ('53222', '连锁保定店店长', '21');
INSERT INTO `qs_hotword` VALUES ('53223', '往来主任', '21');
INSERT INTO `qs_hotword` VALUES ('53224', '理化微检副主任', '21');
INSERT INTO `qs_hotword` VALUES ('53225', '驻地业务代表', '27');
INSERT INTO `qs_hotword` VALUES ('53226', '店长助理保定', '21');
INSERT INTO `qs_hotword` VALUES ('53227', '英语外教河北三河', '21');
INSERT INTO `qs_hotword` VALUES ('53228', '教务主任河北廊坊', '21');
INSERT INTO `qs_hotword` VALUES ('53229', '英语老师河北廊坊', '21');
INSERT INTO `qs_hotword` VALUES ('53230', '科研专员', '21');
INSERT INTO `qs_hotword` VALUES ('53247', '轮胎销售代表', '11');
INSERT INTO `qs_hotword` VALUES ('53264', '医药销售代表河北', '11');
INSERT INTO `qs_hotword` VALUES ('53290', '优秀应届毕业生', '16');
INSERT INTO `qs_hotword` VALUES ('53335', '二手车经理', '10');
INSERT INTO `qs_hotword` VALUES ('53344', 'BC促销队员', '14');
INSERT INTO `qs_hotword` VALUES ('53358', '助理业务代表', '53');
INSERT INTO `qs_hotword` VALUES ('53359', '直销业务员', '14');
INSERT INTO `qs_hotword` VALUES ('53417', '个人地区代理', '18');
INSERT INTO `qs_hotword` VALUES ('53445', '销售内勤文员', '14');
INSERT INTO `qs_hotword` VALUES ('53518', '银保渠道经理', '10');
INSERT INTO `qs_hotword` VALUES ('53539', '省招商经理', '10');
INSERT INTO `qs_hotword` VALUES ('53577', '销售经理全国范围', '26');
INSERT INTO `qs_hotword` VALUES ('53596', '销售经理中兴', '23');
INSERT INTO `qs_hotword` VALUES ('53598', '产品讲师太原', '20');
INSERT INTO `qs_hotword` VALUES ('53599', '销售工程师-OCS', '20');
INSERT INTO `qs_hotword` VALUES ('53647', '医学信息沟通专员', '17');
INSERT INTO `qs_hotword` VALUES ('53690', '科技产品服务经理', '11');
INSERT INTO `qs_hotword` VALUES ('53906', '裁缝', '10');
INSERT INTO `qs_hotword` VALUES ('53914', '产品主任', '11');
INSERT INTO `qs_hotword` VALUES ('53919', '留学部经理', '10');
INSERT INTO `qs_hotword` VALUES ('53988', 'LED销售代表', '10');
INSERT INTO `qs_hotword` VALUES ('54042', '国内销售代表', '19');
INSERT INTO `qs_hotword` VALUES ('54082', '办事处销售经理', '10');
INSERT INTO `qs_hotword` VALUES ('54102', '兼职代理', '20');
INSERT INTO `qs_hotword` VALUES ('54103', '分公司总经理助理', '25');
INSERT INTO `qs_hotword` VALUES ('54112', '子公司总经理', '21');
INSERT INTO `qs_hotword` VALUES ('54119', '区域人力资源经理', '10');
INSERT INTO `qs_hotword` VALUES ('54131', '渠道拓展主管', '13');
INSERT INTO `qs_hotword` VALUES ('54234', '传媒总监', '13');
INSERT INTO `qs_hotword` VALUES ('54326', '财务副总监', '19');
INSERT INTO `qs_hotword` VALUES ('54358', '片区销售经理', '13');
INSERT INTO `qs_hotword` VALUES ('54474', '驻外司机', '10');
INSERT INTO `qs_hotword` VALUES ('54504', '区域培训专员', '11');
INSERT INTO `qs_hotword` VALUES ('54510', '内场主持与策划', '11');
INSERT INTO `qs_hotword` VALUES ('54519', '清欠律师', '10');
INSERT INTO `qs_hotword` VALUES ('54550', '成本核算员', '20');
INSERT INTO `qs_hotword` VALUES ('54604', '医疗器械销售经理', '34');
INSERT INTO `qs_hotword` VALUES ('54677', '业务兼司机', '12');
INSERT INTO `qs_hotword` VALUES ('54698', '内审员', '12');
INSERT INTO `qs_hotword` VALUES ('54861', '新药推广代表', '15');
INSERT INTO `qs_hotword` VALUES ('54912', '销售代表沈阳', '12');
INSERT INTO `qs_hotword` VALUES ('54926', '成本工程师', '10');
INSERT INTO `qs_hotword` VALUES ('55030', '厢货司机', '10');
INSERT INTO `qs_hotword` VALUES ('55076', '综合管理专员', '21');
INSERT INTO `qs_hotword` VALUES ('55131', '报建主管', '29');
INSERT INTO `qs_hotword` VALUES ('55231', '销售工程师沈阳', '10');
INSERT INTO `qs_hotword` VALUES ('55543', '营销部长', '14');
INSERT INTO `qs_hotword` VALUES ('55567', '车物查勘定损岗', '10');
INSERT INTO `qs_hotword` VALUES ('55577', '营销内勤', '11');
INSERT INTO `qs_hotword` VALUES ('55695', '论坛发帖高手', '14');
INSERT INTO `qs_hotword` VALUES ('55896', '子公司财务经理', '10');
INSERT INTO `qs_hotword` VALUES ('55956', '分公司内销业务员', '18');
INSERT INTO `qs_hotword` VALUES ('55957', '分公司外贸业务员', '18');
INSERT INTO `qs_hotword` VALUES ('55958', '审计员助理', '18');
INSERT INTO `qs_hotword` VALUES ('56082', '助理业代', '18');
INSERT INTO `qs_hotword` VALUES ('56196', '门店营业员', '17');
INSERT INTO `qs_hotword` VALUES ('56254', '大客户公关经理', '11');
INSERT INTO `qs_hotword` VALUES ('56287', '房务总监', '10');
INSERT INTO `qs_hotword` VALUES ('56385', 'SE', '19');
INSERT INTO `qs_hotword` VALUES ('56411', '东北大区经理', '14');
INSERT INTO `qs_hotword` VALUES ('56471', '平面设计教师', '16');
INSERT INTO `qs_hotword` VALUES ('56629', '销售分公司经理', '14');
INSERT INTO `qs_hotword` VALUES ('56701', '网店店长', '20');
INSERT INTO `qs_hotword` VALUES ('56728', '零售通路专员', '21');
INSERT INTO `qs_hotword` VALUES ('56809', '拓展', '10');
INSERT INTO `qs_hotword` VALUES ('56875', '沈阳助理', '10');
INSERT INTO `qs_hotword` VALUES ('56878', '教学部主管', '12');
INSERT INTO `qs_hotword` VALUES ('57216', '电话预约员', '11');
INSERT INTO `qs_hotword` VALUES ('57301', '经销商', '14');
INSERT INTO `qs_hotword` VALUES ('57496', '电话招商经理', '11');
INSERT INTO `qs_hotword` VALUES ('57551', '整机销售代表', '23');
INSERT INTO `qs_hotword` VALUES ('57700', '强、弱电工', '19');
INSERT INTO `qs_hotword` VALUES ('57703', '东北地区销售经理', '21');
INSERT INTO `qs_hotword` VALUES ('57716', '工程管理人员', '20');
INSERT INTO `qs_hotword` VALUES ('57782', '资源开发总监', '10');
INSERT INTO `qs_hotword` VALUES ('57828', '安防销售工程师', '12');
INSERT INTO `qs_hotword` VALUES ('57884', '医药代表LH-MR', '34');
INSERT INTO `qs_hotword` VALUES ('57923', 'OTC零售代表', '10');
INSERT INTO `qs_hotword` VALUES ('58001', '会奖部主管', '36');
INSERT INTO `qs_hotword` VALUES ('58002', '商务中心咨询员', '36');
INSERT INTO `qs_hotword` VALUES ('58003', '国内前台咨询', '36');
INSERT INTO `qs_hotword` VALUES ('58081', '辅导专员岗', '10');
INSERT INTO `qs_hotword` VALUES ('58091', '物料计划员', '14');
INSERT INTO `qs_hotword` VALUES ('58585', '库房保管员', '11');
INSERT INTO `qs_hotword` VALUES ('58639', '收货员', '16');
INSERT INTO `qs_hotword` VALUES ('58652', '信息技术主管', '13');
INSERT INTO `qs_hotword` VALUES ('58979', '长春办事处主任', '18');
INSERT INTO `qs_hotword` VALUES ('58980', '沈阳KA主管', '18');
INSERT INTO `qs_hotword` VALUES ('59416', '教学老师', '18');
INSERT INTO `qs_hotword` VALUES ('59480', '物业客服', '14');
INSERT INTO `qs_hotword` VALUES ('59512', '房地产策划总监', '13');
INSERT INTO `qs_hotword` VALUES ('59583', '监管员', '13');
INSERT INTO `qs_hotword` VALUES ('59781', '综合金融客户经理', '18');
INSERT INTO `qs_hotword` VALUES ('59852', '软件销售总监', '17');
INSERT INTO `qs_hotword` VALUES ('59919', '人资总监', '10');
INSERT INTO `qs_hotword` VALUES ('60036', '股指期货操盘手', '16');
INSERT INTO `qs_hotword` VALUES ('60153', '培训运作岗', '11');
INSERT INTO `qs_hotword` VALUES ('60173', '安防员', '10');
INSERT INTO `qs_hotword` VALUES ('60331', '分行经理', '11');
INSERT INTO `qs_hotword` VALUES ('60352', '外观设计工程师', '15');
INSERT INTO `qs_hotword` VALUES ('60373', '售后服务技师', '18');
INSERT INTO `qs_hotword` VALUES ('60416', '配件专员', '10');
INSERT INTO `qs_hotword` VALUES ('60533', '设备维修经理', '11');
INSERT INTO `qs_hotword` VALUES ('60834', '集团总裁助理', '24');
INSERT INTO `qs_hotword` VALUES ('60926', '对日JAVA工程师', '22');
INSERT INTO `qs_hotword` VALUES ('60992', '初、高中数学教师', '11');
INSERT INTO `qs_hotword` VALUES ('61126', '资讯主管', '10');
INSERT INTO `qs_hotword` VALUES ('61292', '生产储备干部', '14');
INSERT INTO `qs_hotword` VALUES ('61362', '普车车工经验成手', '18');
INSERT INTO `qs_hotword` VALUES ('61363', '生产辅助工', '19');
INSERT INTO `qs_hotword` VALUES ('61383', '服装销售', '11');
INSERT INTO `qs_hotword` VALUES ('61396', '消防专员', '10');
INSERT INTO `qs_hotword` VALUES ('61399', '店面陈列师', '12');
INSERT INTO `qs_hotword` VALUES ('61403', '市场销售总监', '14');
INSERT INTO `qs_hotword` VALUES ('61415', '零售培训师', '18');
INSERT INTO `qs_hotword` VALUES ('61472', 'Java初级工程师', '10');
INSERT INTO `qs_hotword` VALUES ('61675', '苹果专卖店店长', '15');
INSERT INTO `qs_hotword` VALUES ('61814', '加油员', '10');
INSERT INTO `qs_hotword` VALUES ('61843', '投融资专员', '12');
INSERT INTO `qs_hotword` VALUES ('61871', '骨科销售代表', '22');
INSERT INTO `qs_hotword` VALUES ('61950', '监察员', '10');
INSERT INTO `qs_hotword` VALUES ('61981', 'Rigger', '11');
INSERT INTO `qs_hotword` VALUES ('62002', '电子商务文员', '11');
INSERT INTO `qs_hotword` VALUES ('62175', '秩序维护主管', '22');
INSERT INTO `qs_hotword` VALUES ('62241', '行政部副经理', '12');
INSERT INTO `qs_hotword` VALUES ('62245', '客户经理手机产品', '18');
INSERT INTO `qs_hotword` VALUES ('62521', '储备人员', '10');
INSERT INTO `qs_hotword` VALUES ('62589', '拓展总监', '10');
INSERT INTO `qs_hotword` VALUES ('62766', '报纸主编', '19');
INSERT INTO `qs_hotword` VALUES ('62820', '印刷装订工', '12');
INSERT INTO `qs_hotword` VALUES ('62922', '咨询老师', '13');
INSERT INTO `qs_hotword` VALUES ('62938', '后勤文员', '10');
INSERT INTO `qs_hotword` VALUES ('63129', '大中型论坛版主', '10');
INSERT INTO `qs_hotword` VALUES ('63140', '产品包装设计师', '10');
INSERT INTO `qs_hotword` VALUES ('63249', '电气技师', '12');
INSERT INTO `qs_hotword` VALUES ('63685', '高级医药销售代表', '12');
INSERT INTO `qs_hotword` VALUES ('63696', '工程副总-长春', '18');
INSERT INTO `qs_hotword` VALUES ('63819', 'GIS软件工程师', '12');
INSERT INTO `qs_hotword` VALUES ('63894', '烘培技工', '10');
INSERT INTO `qs_hotword` VALUES ('63977', '写手', '10');
INSERT INTO `qs_hotword` VALUES ('64683', '教学主任', '19');
INSERT INTO `qs_hotword` VALUES ('64818', '外阜销售代表', '13');
INSERT INTO `qs_hotword` VALUES ('64926', '企业管理部经理', '11');
INSERT INTO `qs_hotword` VALUES ('64953', '工程部项目经理', '15');
INSERT INTO `qs_hotword` VALUES ('64956', 'otc医药代表', '15');
INSERT INTO `qs_hotword` VALUES ('64992', '医药代表哈尔滨', '14');
INSERT INTO `qs_hotword` VALUES ('65039', '驻地业务经理', '12');
INSERT INTO `qs_hotword` VALUES ('65127', '融资会计', '14');
INSERT INTO `qs_hotword` VALUES ('65238', '初级英语教师', '16');
INSERT INTO `qs_hotword` VALUES ('65469', '自控工程师哈尔滨', '16');
INSERT INTO `qs_hotword` VALUES ('65702', '药店店长', '16');
INSERT INTO `qs_hotword` VALUES ('65712', '彩妆导师', '10');
INSERT INTO `qs_hotword` VALUES ('66571', '电子装配技工', '15');
INSERT INTO `qs_hotword` VALUES ('66582', '现场营运', '15');
INSERT INTO `qs_hotword` VALUES ('66583', '幼教教研员', '15');
INSERT INTO `qs_hotword` VALUES ('66783', '材料专员', '12');
INSERT INTO `qs_hotword` VALUES ('66790', '销售代表南京', '11');
INSERT INTO `qs_hotword` VALUES ('66909', '企业形象代言人', '15');
INSERT INTO `qs_hotword` VALUES ('66910', '房地产销售员江宁', '15');
INSERT INTO `qs_hotword` VALUES ('66911', '房地产投资顾问', '16');
INSERT INTO `qs_hotword` VALUES ('66912', '测试设备工程师', '15');
INSERT INTO `qs_hotword` VALUES ('66913', '塑封工艺工程师', '15');
INSERT INTO `qs_hotword` VALUES ('66914', 'QFN工程师', '15');
INSERT INTO `qs_hotword` VALUES ('66915', '半导体熟练作业员', '15');
INSERT INTO `qs_hotword` VALUES ('66996', '分站经理', '19');
INSERT INTO `qs_hotword` VALUES ('67028', '售后技术服务襄阳', '12');
INSERT INTO `qs_hotword` VALUES ('67105', '仓库主管-太仓', '15');
INSERT INTO `qs_hotword` VALUES ('67438', '学术代表', '18');
INSERT INTO `qs_hotword` VALUES ('67580', '处方医药代表', '19');
INSERT INTO `qs_hotword` VALUES ('67947', 'IT实习生', '18');
INSERT INTO `qs_hotword` VALUES ('67948', '检验员--CT', '15');
INSERT INTO `qs_hotword` VALUES ('67963', 'CAE解析技术员', '15');
INSERT INTO `qs_hotword` VALUES ('67964', '生管企划担当', '15');
INSERT INTO `qs_hotword` VALUES ('67965', '机械设计类', '15');
INSERT INTO `qs_hotword` VALUES ('67966', '行政运营部实习生', '15');
INSERT INTO `qs_hotword` VALUES ('67967', '医药公司财务人员', '15');
INSERT INTO `qs_hotword` VALUES ('67968', '华东地接导游', '30');
INSERT INTO `qs_hotword` VALUES ('67969', '材料课长', '30');
INSERT INTO `qs_hotword` VALUES ('67970', '电池质量经理', '30');
INSERT INTO `qs_hotword` VALUES ('68019', '销售主管工程师', '12');
INSERT INTO `qs_hotword` VALUES ('68025', '驻外行政', '18');
INSERT INTO `qs_hotword` VALUES ('68355', '分支机构副总经理', '12');
INSERT INTO `qs_hotword` VALUES ('68356', '分支机构总经理', '12');
INSERT INTO `qs_hotword` VALUES ('68473', '商务代表_南京', '15');
INSERT INTO `qs_hotword` VALUES ('68666', '压铸工艺工程师', '10');
INSERT INTO `qs_hotword` VALUES ('68733', '手机美容员', '15');
INSERT INTO `qs_hotword` VALUES ('68734', 'LED灯具内销人员', '15');
INSERT INTO `qs_hotword` VALUES ('68735', 'LED灯具外销人员', '15');
INSERT INTO `qs_hotword` VALUES ('68736', 'SMT后道检验员', '15');
INSERT INTO `qs_hotword` VALUES ('68737', 'OEM销售工程师', '19');
INSERT INTO `qs_hotword` VALUES ('68738', '厨师南京德基店', '15');
INSERT INTO `qs_hotword` VALUES ('68739', '文案策划昆山', '15');
INSERT INTO `qs_hotword` VALUES ('68785', '网络产品技术支持', '16');
INSERT INTO `qs_hotword` VALUES ('68786', '云数据库架构师', '16');
INSERT INTO `qs_hotword` VALUES ('68787', '嵌入式项目经理', '16');
INSERT INTO `qs_hotword` VALUES ('68795', '渠道督导', '16');
INSERT INTO `qs_hotword` VALUES ('68796', '财务苏州', '16');
INSERT INTO `qs_hotword` VALUES ('69249', '面料开发', '10');
INSERT INTO `qs_hotword` VALUES ('69265', '百度平台销售总监', '15');
INSERT INTO `qs_hotword` VALUES ('69266', '销售经理硒鼓', '15');
INSERT INTO `qs_hotword` VALUES ('69267', '专员苏州、无锡', '15');
INSERT INTO `qs_hotword` VALUES ('69312', '仓库发货员', '11');
INSERT INTO `qs_hotword` VALUES ('69332', '特通专员', '14');
INSERT INTO `qs_hotword` VALUES ('69338', '网店推广', '12');
INSERT INTO `qs_hotword` VALUES ('69505', '网页开发工程师', '10');
INSERT INTO `qs_hotword` VALUES ('69651', 'android程序员', '10');
INSERT INTO `qs_hotword` VALUES ('69877', '老师', '11');
INSERT INTO `qs_hotword` VALUES ('70050', '模具维护', '17');
INSERT INTO `qs_hotword` VALUES ('70053', '家长指导师', '22');
INSERT INTO `qs_hotword` VALUES ('70203', '中高级测试工程师', '16');
INSERT INTO `qs_hotword` VALUES ('70204', '会计上岗证讲师', '15');
INSERT INTO `qs_hotword` VALUES ('70205', '安装造价员讲师', '15');
INSERT INTO `qs_hotword` VALUES ('70206', '土建造价员讲师', '15');
INSERT INTO `qs_hotword` VALUES ('70207', '土建预算实务讲师', '15');
INSERT INTO `qs_hotword` VALUES ('70208', '安装预算实务讲师', '15');
INSERT INTO `qs_hotword` VALUES ('70210', 'flash交互工程师', '15');
INSERT INTO `qs_hotword` VALUES ('70211', '嵌入式硬件开发', '19');
INSERT INTO `qs_hotword` VALUES ('70212', '模具检测技术员', '16');
INSERT INTO `qs_hotword` VALUES ('70568', '地区办主管', '10');
INSERT INTO `qs_hotword` VALUES ('70696', '物控主管', '13');
INSERT INTO `qs_hotword` VALUES ('70818', 'YCM班长', '15');
INSERT INTO `qs_hotword` VALUES ('70854', 'C++初级程序员', '10');
INSERT INTO `qs_hotword` VALUES ('71023', '项目运营主管', '19');
INSERT INTO `qs_hotword` VALUES ('71024', 'Draftman', '15');
INSERT INTO `qs_hotword` VALUES ('71075', '游戏QA工程师', '15');
INSERT INTO `qs_hotword` VALUES ('71171', '工程设备部经理', '16');
INSERT INTO `qs_hotword` VALUES ('71546', '理财经理不管理', '22');
INSERT INTO `qs_hotword` VALUES ('71680', '材料测试工程师', '17');
INSERT INTO `qs_hotword` VALUES ('71688', '计量工程师CF', '15');
INSERT INTO `qs_hotword` VALUES ('71689', '包装工程师CF', '15');
INSERT INTO `qs_hotword` VALUES ('71690', '董办内务助理', '15');
INSERT INTO `qs_hotword` VALUES ('71721', 'AD客户主任南京', '15');
INSERT INTO `qs_hotword` VALUES ('71722', '仓库主任太仓', '15');
INSERT INTO `qs_hotword` VALUES ('71723', '仓库文员太仓', '15');
INSERT INTO `qs_hotword` VALUES ('71724', '仓库管理员太仓', '15');
INSERT INTO `qs_hotword` VALUES ('71725', 'AD培训主任南京', '15');
INSERT INTO `qs_hotword` VALUES ('71726', '清洁工太仓', '15');
INSERT INTO `qs_hotword` VALUES ('71821', '3D测量技术员CC', '15');
INSERT INTO `qs_hotword` VALUES ('72130', '丹阳业务员', '15');
INSERT INTO `qs_hotword` VALUES ('72131', '销售经理苏州M', '15');
INSERT INTO `qs_hotword` VALUES ('72132', '销售经理南京K', '15');
INSERT INTO `qs_hotword` VALUES ('72133', '工艺设计主管', '15');
INSERT INTO `qs_hotword` VALUES ('72134', '青奥项目活动策划', '30');
INSERT INTO `qs_hotword` VALUES ('72135', '青奥销售总监', '15');
INSERT INTO `qs_hotword` VALUES ('72136', '青奥项目经理', '15');
INSERT INTO `qs_hotword` VALUES ('72137', '媒体编辑', '16');
INSERT INTO `qs_hotword` VALUES ('72138', '宜兴业务员', '15');
INSERT INTO `qs_hotword` VALUES ('72139', '资深软装设计师', '17');
INSERT INTO `qs_hotword` VALUES ('72377', '销售工程师济南', '10');
INSERT INTO `qs_hotword` VALUES ('73155', '营业部总经理如皋', '15');
INSERT INTO `qs_hotword` VALUES ('73156', '网络通信开发人员', '15');
INSERT INTO `qs_hotword` VALUES ('73157', '移动开发人员', '15');
INSERT INTO `qs_hotword` VALUES ('73399', '窗饰设计师', '13');
INSERT INTO `qs_hotword` VALUES ('73507', '医院开发销售代表', '15');
INSERT INTO `qs_hotword` VALUES ('73508', 'IOS培训师', '15');
INSERT INTO `qs_hotword` VALUES ('73526', '产业推广经理', '30');
INSERT INTO `qs_hotword` VALUES ('73527', '住宅项目经理', '31');
INSERT INTO `qs_hotword` VALUES ('73868', '设计师婚纱礼服', '16');
INSERT INTO `qs_hotword` VALUES ('73905', '医药代表江苏', '16');
INSERT INTO `qs_hotword` VALUES ('73913', '班组长工厂', '15');
INSERT INTO `qs_hotword` VALUES ('73914', '操作工工厂', '15');
INSERT INTO `qs_hotword` VALUES ('73915', '研发工程师高分子', '15');
INSERT INTO `qs_hotword` VALUES ('73916', '技术部文员', '21');
INSERT INTO `qs_hotword` VALUES ('74030', '大型货轮船员', '12');
INSERT INTO `qs_hotword` VALUES ('74094', 'Opennebula', '16');
INSERT INTO `qs_hotword` VALUES ('74095', '现代农业项目经理', '16');
INSERT INTO `qs_hotword` VALUES ('74102', '机加工工程师', '13');
INSERT INTO `qs_hotword` VALUES ('74109', '裁床主管', '12');
INSERT INTO `qs_hotword` VALUES ('74143', '在线客服经理', '16');
INSERT INTO `qs_hotword` VALUES ('74144', 'Planner', '18');
INSERT INTO `qs_hotword` VALUES ('74256', '软件系统工程师', '17');
INSERT INTO `qs_hotword` VALUES ('74257', '物联网系统架构师', '15');
INSERT INTO `qs_hotword` VALUES ('74258', 'CEP策划师', '15');
INSERT INTO `qs_hotword` VALUES ('74259', '场馆技术经理VITM', '15');
INSERT INTO `qs_hotword` VALUES ('74260', '云平台系统架构师', '15');
INSERT INTO `qs_hotword` VALUES ('74470', '市调专员', '16');
INSERT INTO `qs_hotword` VALUES ('74496', '废水处理操作工', '14');
INSERT INTO `qs_hotword` VALUES ('74497', '招展部业务助理', '14');
INSERT INTO `qs_hotword` VALUES ('74498', '销售主管零售', '14');
INSERT INTO `qs_hotword` VALUES ('74499', '家纺花稿设计师', '14');
INSERT INTO `qs_hotword` VALUES ('74500', '工程财务', '14');
INSERT INTO `qs_hotword` VALUES ('74511', '车版师', '18');
INSERT INTO `qs_hotword` VALUES ('74576', '纸样师', '59');
INSERT INTO `qs_hotword` VALUES ('74630', '主力设计师', '12');
INSERT INTO `qs_hotword` VALUES ('74731', '售后安装技师', '12');
INSERT INTO `qs_hotword` VALUES ('74789', '销售工程师杭州', '11');
INSERT INTO `qs_hotword` VALUES ('75562', '应届毕业实习生', '12');
INSERT INTO `qs_hotword` VALUES ('75762', 'Led结构工程师', '11');
INSERT INTO `qs_hotword` VALUES ('75763', '初中科学教师', '10');
INSERT INTO `qs_hotword` VALUES ('76414', '加气工', '11');
INSERT INTO `qs_hotword` VALUES ('76424', '文案营销策划', '14');
INSERT INTO `qs_hotword` VALUES ('76425', 'EC培训专员', '14');
INSERT INTO `qs_hotword` VALUES ('76426', '渠道批发销售', '14');
INSERT INTO `qs_hotword` VALUES ('76533', '教学培训生', '14');
INSERT INTO `qs_hotword` VALUES ('76534', '考研教师', '28');
INSERT INTO `qs_hotword` VALUES ('76535', '高考数学教师', '14');
INSERT INTO `qs_hotword` VALUES ('76536', '考研政治教师', '15');
INSERT INTO `qs_hotword` VALUES ('76537', '市场加盟部专员', '14');
INSERT INTO `qs_hotword` VALUES ('76538', '事业部副总经理', '18');
INSERT INTO `qs_hotword` VALUES ('77035', '淘宝文案', '10');
INSERT INTO `qs_hotword` VALUES ('77078', '质安员', '10');
INSERT INTO `qs_hotword` VALUES ('77081', '电子商务运营总监', '13');
INSERT INTO `qs_hotword` VALUES ('80057', '县级经理', '11');
INSERT INTO `qs_hotword` VALUES ('80165', '试衣文员', '12');
INSERT INTO `qs_hotword` VALUES ('80633', 'IT热线服务人员', '14');
INSERT INTO `qs_hotword` VALUES ('80635', '监控值班工程师', '14');
INSERT INTO `qs_hotword` VALUES ('80636', '金渤商副总经理', '14');
INSERT INTO `qs_hotword` VALUES ('80637', '国际贸易常务副总', '14');
INSERT INTO `qs_hotword` VALUES ('80913', '医药代表浙江', '11');
INSERT INTO `qs_hotword` VALUES ('82035', '公共事务主任', '12');
INSERT INTO `qs_hotword` VALUES ('82471', '业务员安徽经销课', '13');
INSERT INTO `qs_hotword` VALUES ('82481', '调味品业务代表', '11');
INSERT INTO `qs_hotword` VALUES ('82542', '见习餐厅经理', '13');
INSERT INTO `qs_hotword` VALUES ('83157', '检验主管', '13');
INSERT INTO `qs_hotword` VALUES ('83158', '生产技术专员', '13');
INSERT INTO `qs_hotword` VALUES ('83159', '基建办文员', '13');
INSERT INTO `qs_hotword` VALUES ('83331', '医药代表安徽', '12');
INSERT INTO `qs_hotword` VALUES ('83554', 'OTC区域经理', '21');
INSERT INTO `qs_hotword` VALUES ('83856', '店铺库房管理员', '16');
INSERT INTO `qs_hotword` VALUES ('84446', '助理营业员', '12');
INSERT INTO `qs_hotword` VALUES ('84635', '第三终端销售代表', '14');
INSERT INTO `qs_hotword` VALUES ('84678', '通信线路抢修员', '12');
INSERT INTO `qs_hotword` VALUES ('84679', '通信线路抢修队长', '12');
INSERT INTO `qs_hotword` VALUES ('84697', '高级营销助理', '13');
INSERT INTO `qs_hotword` VALUES ('85145', '茶叶电话销售专员', '20');
INSERT INTO `qs_hotword` VALUES ('86350', '钢结构生产管理', '12');
INSERT INTO `qs_hotword` VALUES ('86351', '专用汽车营销经理', '12');
INSERT INTO `qs_hotword` VALUES ('86352', '专用汽车经营管理', '12');
INSERT INTO `qs_hotword` VALUES ('86353', '汽车公告', '12');
INSERT INTO `qs_hotword` VALUES ('86354', '技改工程师', '12');
INSERT INTO `qs_hotword` VALUES ('86355', '钢结构副总经理', '12');
INSERT INTO `qs_hotword` VALUES ('86356', '专用汽车业务员', '12');
INSERT INTO `qs_hotword` VALUES ('87342', '执行统筹', '12');
INSERT INTO `qs_hotword` VALUES ('88514', '兼职as程序员', '13');
INSERT INTO `qs_hotword` VALUES ('88718', '医药代表江西', '13');
INSERT INTO `qs_hotword` VALUES ('88964', '前后堂主管', '13');
INSERT INTO `qs_hotword` VALUES ('89353', '医药代表学术专员', '11');
INSERT INTO `qs_hotword` VALUES ('89502', 'MA运维工程师', '11');
INSERT INTO `qs_hotword` VALUES ('89509', '中控电工', '11');
INSERT INTO `qs_hotword` VALUES ('89511', '58同城网页设计', '11');
INSERT INTO `qs_hotword` VALUES ('89513', '58同城电话销售', '11');
INSERT INTO `qs_hotword` VALUES ('89514', '产品经理南昌', '11');
INSERT INTO `qs_hotword` VALUES ('89747', '客户经理济南', '16');
INSERT INTO `qs_hotword` VALUES ('89820', '销售部--茶水小妹', '10');
INSERT INTO `qs_hotword` VALUES ('90071', '区域销售经理净水', '10');
INSERT INTO `qs_hotword` VALUES ('90171', '区域独家经销商', '12');
INSERT INTO `qs_hotword` VALUES ('90212', '维修保养技术员', '11');
INSERT INTO `qs_hotword` VALUES ('90246', '第三终端县区经理', '11');
INSERT INTO `qs_hotword` VALUES ('90269', '销售代表青岛', '10');
INSERT INTO `qs_hotword` VALUES ('90301', '楼盘秘书', '10');
INSERT INTO `qs_hotword` VALUES ('90372', '技术部经理青岛', '10');
INSERT INTO `qs_hotword` VALUES ('90373', '项目营运经理济南', '10');
INSERT INTO `qs_hotword` VALUES ('90374', 'ERP维护', '10');
INSERT INTO `qs_hotword` VALUES ('90375', '高级国际贸易专员', '10');
INSERT INTO `qs_hotword` VALUES ('90376', '机械组装工', '10');
INSERT INTO `qs_hotword` VALUES ('90377', '普工0003', '10');
INSERT INTO `qs_hotword` VALUES ('90378', '机刀', '11');
INSERT INTO `qs_hotword` VALUES ('90379', '印刷副手', '10');
INSERT INTO `qs_hotword` VALUES ('91035', '矿业销售经理', '10');
INSERT INTO `qs_hotword` VALUES ('91252', '装饰顾问', '14');
INSERT INTO `qs_hotword` VALUES ('91522', '室内设计专员家居', '11');
INSERT INTO `qs_hotword` VALUES ('91523', '家具采购助理', '11');
INSERT INTO `qs_hotword` VALUES ('91524', 'ERP实施维护专员', '11');
INSERT INTO `qs_hotword` VALUES ('91525', '摩托车采购专员', '20');
INSERT INTO `qs_hotword` VALUES ('91820', '医药代表山东', '14');
INSERT INTO `qs_hotword` VALUES ('92330', 'OTC业务代表', '15');
INSERT INTO `qs_hotword` VALUES ('93331', '机械装备技师', '10');
INSERT INTO `qs_hotword` VALUES ('93332', '自动化专业应届生', '10');
INSERT INTO `qs_hotword` VALUES ('93801', '地区业务代表', '12');
INSERT INTO `qs_hotword` VALUES ('94618', '驻地业务助理', '18');
INSERT INTO `qs_hotword` VALUES ('94620', '驻地文员', '17');
INSERT INTO `qs_hotword` VALUES ('94621', '驻地代理或合伙人', '18');
INSERT INTO `qs_hotword` VALUES ('94767', 'web软件开发主管', '10');
INSERT INTO `qs_hotword` VALUES ('94768', '驻地记者', '17');
INSERT INTO `qs_hotword` VALUES ('94796', 'CAD文员', '10');
INSERT INTO `qs_hotword` VALUES ('94798', '临床应用医生', '15');
INSERT INTO `qs_hotword` VALUES ('94962', '无损检验员', '10');
INSERT INTO `qs_hotword` VALUES ('94963', '金属材料分析', '10');
INSERT INTO `qs_hotword` VALUES ('94964', '临床应届毕业生', '11');
INSERT INTO `qs_hotword` VALUES ('95940', '日语口译译员', '16');
INSERT INTO `qs_hotword` VALUES ('96114', '销售代表郑州', '10');
INSERT INTO `qs_hotword` VALUES ('97411', '地区业代', '11');
INSERT INTO `qs_hotword` VALUES ('98766', '环保技术人员', '15');
INSERT INTO `qs_hotword` VALUES ('98940', '销售工程师武汉', '19');
INSERT INTO `qs_hotword` VALUES ('100720', '财产险直销经理', '13');
INSERT INTO `qs_hotword` VALUES ('100721', '车行出单内勤', '14');
INSERT INTO `qs_hotword` VALUES ('100727', '电销运营作业岗', '13');
INSERT INTO `qs_hotword` VALUES ('100815', '销售经理武汉', '12');
INSERT INTO `qs_hotword` VALUES ('101160', '销售代表武汉', '12');
INSERT INTO `qs_hotword` VALUES ('101518', '销售工程师长沙', '10');
INSERT INTO `qs_hotword` VALUES ('101548', '汽车租赁主管', '11');
INSERT INTO `qs_hotword` VALUES ('101551', '汽车租赁师', '16');
INSERT INTO `qs_hotword` VALUES ('101898', '医药代表湖北', '15');
INSERT INTO `qs_hotword` VALUES ('106142', '县级OTC业务人员', '13');
INSERT INTO `qs_hotword` VALUES ('106318', '实验研究工程师', '12');
INSERT INTO `qs_hotword` VALUES ('106399', '连锁门店主管', '16');
INSERT INTO `qs_hotword` VALUES ('107133', '医药代表湖南', '12');
INSERT INTO `qs_hotword` VALUES ('108116', '车板师', '21');
INSERT INTO `qs_hotword` VALUES ('108125', '黄金交易学员', '10');
INSERT INTO `qs_hotword` VALUES ('108309', '招电脑打字、兼职', '17');
INSERT INTO `qs_hotword` VALUES ('108325', '打字录入兼职数名', '17');
INSERT INTO `qs_hotword` VALUES ('109078', '旅游销售精英', '12');
INSERT INTO `qs_hotword` VALUES ('109436', '跟单主管', '11');
INSERT INTO `qs_hotword` VALUES ('116421', '民品营销副总', '22');
INSERT INTO `qs_hotword` VALUES ('117162', '销售工程师成都', '24');
INSERT INTO `qs_hotword` VALUES ('117559', '销售代表成都', '11');
INSERT INTO `qs_hotword` VALUES ('121640', '川内外埠主管经理', '13');
INSERT INTO `qs_hotword` VALUES ('122289', '县级终端承包经理', '21');
INSERT INTO `qs_hotword` VALUES ('124097', '医药代表陕西', '20');
INSERT INTO `qs_hotword` VALUES ('126529', '医院销售区域经理', '14');
INSERT INTO `qs_hotword` VALUES ('127200', '医药代表云南', '15');
INSERT INTO `qs_hotword` VALUES ('127775', '沼气营销业务代表', '14');

-- ----------------------------
-- Table structure for qs_hrtools
-- ----------------------------
DROP TABLE IF EXISTS `qs_hrtools`;
CREATE TABLE `qs_hrtools` (
  `h_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `h_typeid` smallint(5) unsigned NOT NULL,
  `h_filename` varchar(200) NOT NULL,
  `h_fileurl` varchar(200) NOT NULL,
  `h_order` int(10) NOT NULL DEFAULT '0',
  `h_color` varchar(7) NOT NULL,
  `h_strong` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`h_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1096 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_hrtools
-- ----------------------------
INSERT INTO `qs_hrtools` VALUES ('1', '1', '录用通知书', '2008010802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('2', '1', '招聘人员登记表', '200210994843.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('3', '1', '录用决定', '2008010401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('4', '1', '新员工入职手续清单', '2008010202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('5', '1', '背景调查电话交流记录表', '2008010201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('6', '1', '招聘评估报告', '2007122702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('7', '1', '人事文员专业知识考核试卷', '2007121801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('8', '1', '招聘统计分析', '2007110702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('9', '1', '面试评分要点', '2007110701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('10', '1', '办公室主任面试评价表', '2007060601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('11', '1', '新员工综合信息登记表', '2007041101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('12', '1', '招聘工作流程', '2007040302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('13', '1', '面试测评问题表', '2007030302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('14', '1', '现代企业薪资福利设计与操作工具表单', '2007010702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('15', '1', '个性特质测量表', '2007010701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('16', '1', '招聘启事的写作格式和内容', '2006120901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('17', '1', '人员补充申请表', '2006101502.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('18', '1', '企业员工中途录用调查表', '2006100801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('19', '1', '应聘人员登记审批表', '2006082501.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('20', '1', '招聘需求申报表', '2006081802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('21', '1', '人员招募作业办法', '2006081702.DOC', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('22', '1', '人员征募申请表', '2006081201.DOC', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('23', '1', '报到程序单', '2006080202.DOC', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('24', '1', '高级费用成本会计岗位手册', '2006072201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('25', '1', '入职手续清单', '2006062902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('26', '1', '面试评价记录表', '2006062901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('27', '1', '面试评估表', '2006060102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('28', '1', '招聘面试综合分析报告', '20060601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('29', '1', '应聘个人情况表', '20060530002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('30', '1', '招聘申请执行单', '2006053001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('31', '1', '某知名合资企业面试测评表', '2006021001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('32', '1', '应征人员登记表', '2005091402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('33', '1', '聘约人员任用核定表格', '2005082402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('34', '1', '企业聘用人员任用表', '2005062202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('35', '1', '兼职面试录用检查表', '2005062201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('36', '1', '委托招聘申请表', '2005062002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('37', '1', '企业保证条件规定表', '2005062001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('38', '1', '职位分析面谈表', '2005052502.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('39', '1', '面试评分标准表', '2005052501.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('40', '1', '招聘人员职位描述表', '2005050901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('41', '1', '模拟应聘评估表', '2005030901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('42', '1', '面谈构成表', '2002109110259.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('43', '1', '面谈考评用表', '2005022802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('44', '1', '操作人员工作应聘表', '2005022801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('45', '1', '教育状况确认书', '2005011402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('46', '1', '招聘录用应届毕业生制度', '2005011102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('47', '1', '招聘面试管理制度', '2005011101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('48', '1', '人员录用制度', '2005010601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('49', '1', '招聘渠道评估表', '2004121302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('50', '1', '临时工人员雇用资料表', '2004121301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('51', '1', '公司技术能力的知识检查表', '2004719155833.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('52', '1', '关于应聘者情况的电话交流记录', '2004719155817.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('53', '1', '员工离职结算', '200475142723.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('54', '1', '录用通知单', '200475142700.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('55', '1', '吸烟政策', '2004519152847.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('56', '1', '面试人员测评表', '2004519152821.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('57', '1', '任职同意书', '2004412163545.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('58', '1', '招聘人员测评表', '200447114507.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('59', '1', '招聘面试记录表', '200447114447.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('60', '1', '应聘报名申请表', '2004330152212.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('61', '1', '招聘进程表', '2004315164719.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('62', '1', '招聘事项表', '2004315164635.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('63', '1', '人员甄选录用管理制度', '200439154804.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('64', '1', '员工甄选及任用管理办法', '200439154747.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('65', '1', '内部人员求职申请表', '2004216114805.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('66', '1', '外部人员求职申请表', '2004216114623.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('67', '1', '录用员工报到通知书', '2004131171319.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('68', '1', '人事部年度招聘计划报批表', '20031231151420.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('69', '1', '员工每月工作状况考核表', '20031217151405.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('70', '1', '员工引荐担保书', '20031217151047.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('71', '1', '不录用通知', '2003126144701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('72', '1', '新员工甄选报告表', '20031124165523.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('73', '1', '面试约见时间表', '20031113142415.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('74', '1', '招聘申请表', '20031110154612.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('76', '1', '应聘人员复试表', '2002109110349.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('77', '1', '新员工试用申请核定表', '2002109110635.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('78', '1', '求职者基本情况登记表', '2002109110701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('79', '1', '面谈记录表', '2002109110309.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('80', '1', '面谈构成表', '2002109110259.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('81', '1', '面试评价表', '2002109110247.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('82', '1', '面试表', '2002109110235.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('83', '1', '年度招聘计划报批表', '2002109110727.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('84', '2', '预算部职能说明', '2007082702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('85', '2', '劳动工资员岗位职责', '2007030301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('86', '2', '客户服务部经理工作职责', '2007012902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('87', '2', '职位说明书营销总监', '2007012901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('88', '2', '系统分析员职位说明书', '2007011302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('89', '2', '职位说明书-系统开发工程师', '2007071301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('90', '2', '职位说明书-高级程序员', '2006120902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('91', '2', '企业档案存放表', '2006102402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('92', '2', '企业档案调阅单', '2006102401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('93', '2', '财务中心总经理岗位手册表', '2006082902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('94', '2', '职务说明书-QE', '2006072901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('95', '2', '标准职位说明书样本', '2006072602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('96', '2', '职务调查表', '2006072601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('97', '2', '电子公司岗位责任书', '2006052701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('98', '2', '业务部门每月工作任务书', '2006032402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('99', '2', '企划管理类职权划分表', '2006032401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('100', '2', '企业归档案卷记录表', '2006021303.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('101', '2', '总裁办公室主任职位说明书', '2005081702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('102', '2', '某电子公司?位?任?', '2005081701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('103', '2', '培训主管岗位职责说明', '2005071102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('104', '2', '人事部部长岗位职责', '2005071101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('105', '2', '职位说明书：检测员', '2005061003.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('106', '2', '职位说明书：人力资源顾问', '2005061002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('107', '2', '出纳员职务说明书', '2005061001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('108', '2', '机械维修主管岗位工作说明书', '2005060202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('109', '2', '品保部经理岗位工作说明书', '2005060201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('110', '2', '财务总监职务描述', '2005051802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('111', '2', '财务经理职务说明书', '2005051801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('112', '2', '企业人员编制变更申请表', '2005050902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('113', '2', '总经理工作职能标准', '2005040601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('114', '2', '行政主任岗位职责说明书', '2005030103.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('115', '2', '工作说明书-人力资源管理类', '2005030102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('116', '2', '工作说明书--营销经理', '2005030101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('117', '2', '职位说明书：客户代表', '2005012203.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('118', '2', '职位说明书：销售总监', '2005012202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('119', '2', '职位说明书：绩效考核主管', '2005012201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('120', '2', '总经理助理岗位职责', '2005010602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('121', '2', '员工档案表', '2004112902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('122', '2', '背景调查表', '200434172045.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('123', '2', '工作评价表', '200434171743.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('124', '2', '人事管理工作事项责权划分表', '20031211152451.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('125', '2', '从业人员登记表', '20031016154618.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('126', '2', '年度所需增补人力类别表', '2003829143438.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('127', '2', '主管人员研习班意见调查表', '2003827143158.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('128', '2', '人员增加说明表', '2003827142738.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('129', '2', '人员需求申请表', '2003816110816.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('130', '2', '人员增减申请书', '200388143424.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('131', '2', '员工培训计划', '2003619154206.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('132', '2', '员工职位变动通知单', '2003619154152.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('133', '2', '招聘申请书', '2002109111910.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('134', '2', '增补人员申请书', '2002109111903.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('135', '2', '员工招聘申请书', '2002109111850.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('136', '2', '员工人事资料卡', '2002109111840.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('137', '2', '员工档案', '2002109111830.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('138', '2', '人员增补申请表', '2002109111817.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('139', '2', '人事作业程序', '2002109111806.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('140', '2', '人事资料记录表', '2002109111752.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('141', '2', '人事资料表', '2002109111314.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('142', '2', '人事日报表', '2002109111305.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('143', '2', '人事流动月报表', '2002109111247.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('144', '2', '人事考核制度', '2002109111229.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('145', '2', '人事管理制度样例', '2002109111211.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('146', '2', '人事管理的程序与规则', '2002109111201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('147', '2', '人事动态及费用资料表', '2002109111148.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('148', '2', '人事登记表', '2002109111133.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('149', '2', '人事部门月报表', '2002109111119.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('150', '2', '人事变更报告单', '2002109111109.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('151', '2', '人事变动申请表', '2002109111059.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('152', '2', '管理人员升迁计划表', '2002109111046.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('153', '2', '管理人才储备表', '2002109111032.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('154', '2', '岗位职务说明书', '2002109111022.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('155', '2', '人事档案管理制度', '2002109110951.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('156', '3', '职员保证书', '2008100402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('157', '3', '岗位轮换制度', '2007121802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('158', '3', '销毁文件登记表', '2007121202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('159', '3', '员工手册（制造类）', '2007121201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('160', '3', '某电子公司人力资源管理程序', '2007120402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('161', '3', '工厂人事制度范本精华-厂规厂纪', '2007120401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('162', '3', '公司员工暂借款管理办法', '2007112201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('163', '3', '工伤报告单', '2007112002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('164', '3', '保安值勤管理制度', '2007112001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('165', '3', '人力资源统计分析(空表）', '2007111302.xls', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('166', '3', '免交社保申请书', '2007111301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('167', '3', '模具工段员工岗位资格矩阵表', '2007103102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('168', '3', '人力资源规划操作手册', '2007103101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('169', '3', '员工行为礼仪规范文本', '2007102902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('170', '3', '新员工入职须知', '2007102901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('171', '3', '机动班工段员工岗位资格矩阵1', '2007102602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('172', '3', '岗位人员矩阵图', '2007102601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('173', '3', '企业综合工作情况测量表', '2007090602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('174', '3', '人事管理的程序与规则', '2007082701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('175', '3', '办公室物资管理规定', '2007082001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('176', '3', '员工处罚条件规定', '2007081602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('177', '3', '员工奖惩制度范本', '2007081601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('178', '3', '电话管理规定', '2007080602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('179', '3', '安全保卫制度', '2007080601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('180', '3', '部门临时人员管理办法', '2007080101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('181', '3', '行政检查表', '2007051901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('182', '3', '员工职位变动通知单', '2007043002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('183', '3', '员工岗位聘用办法', '2007042902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('184', '3', '员工着装管理规定', '2007042602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('185', '3', '员工配用公车管理规定', '2007042601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('186', '3', '员工食堂管理规定', '2007041902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('187', '3', '员工请假休假管理规定', '2007041901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('188', '3', '员工奖惩细则', '2007041702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('189', '3', '员工离职处理细则', '2007041701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('190', '3', '内部客户投诉管理办法', '2007040502.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('191', '3', '奖惩建立申请单', '2007040301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('192', '3', '工资管理操作手册', '2007032302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('193', '3', '5S车间作业指导书', '2007032301.xls', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('194', '3', '公司办公室发文处理程序', '2007022602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('195', '3', '经理人员述职报告', '2007022601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('196', '3', '个人申报规定', '2007020501.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('197', '3', '文件收发规定', '2007010502.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('198', '3', '询证函', '2007010501.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('199', '3', '对员工违规行为的处理执行记录', '2006122902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('200', '3', '从业员退休申请书', '2006122901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('201', '3', '人事部部长岗位职责', '2006122602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('202', '3', '行政奖罚标准作业规程', '2006122601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('203', '3', '公司职工计划生育管理办法', '2006122301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('204', '3', '人事权限划分表', '2006120502.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('205', '3', '人事决策权一览表', '2006120501.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('206', '3', '公司内事故发生报告书', '2006112702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('207', '3', '人事管理资料卡', '2006112701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('208', '3', '现职人员综合日报表', '2006111601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('209', '3', '短途旅费申请表', '2006110902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('210', '3', '企业员工日常事务管理表格', '2006110901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('211', '3', '资遣通知单', '2006110702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('212', '3', '工作催办单', '2006110701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('213', '3', '日常借款管理规定', '2006103102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('214', '3', '出门证统计表', '2006101501.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('215', '3', '十佳员工提名表', '2006091801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('216', '3', '工亡补偿协议书', '2006091302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('217', '3', '人事动态和费用资料表', '2006090701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('218', '3', '财务中心行政助理岗位手册表', '2006082602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('219', '3', '部门工作分类表', '2006082601.rtf', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('220', '3', '核决权限规则', '2006081202.DOC', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('221', '3', '临时人员申请表', '2006081002.DOC', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('222', '3', '工作传单', '2006081001.DOC', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('223', '3', '外出登记簿', '2006080402.DOC', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('224', '3', '奖助备案申请表', '2006072402.DOC', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('225', '3', '解除终止劳动合同审批表', '2006043002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('226', '3', '人事通报表', '2006043001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('227', '3', '奖惩公告', '2006042801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('228', '3', '企业文化共识化调查', '2006040402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('229', '3', '测试员工适合部门表格', '2006040401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('230', '3', '书面警告记录样本', '2006032903.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('231', '3', '口头警告样本', '2006032902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('232', '3', '公开个人资料认可书', '2006032901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('233', '3', '每周活动报告书', '2006031802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('234', '3', '反馈员工指导工作表', '206031801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('235', '3', '职业生涯阶段界定表', '2006031503.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('236', '3', '提高能力方法表', '2006031502.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('237', '3', '电子公司岗位责任书', '2006031501.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('238', '3', '最易承担的管理角色分析表', '2006030803.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('239', '3', '团队建设原则表', '2006030802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('240', '3', '授权条件表', '2006030602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('241', '3', '人员工作量汇总表', '2006022102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('242', '3', '公司书刊管理办法', '2006022101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('243', '3', '授权工作清单', '2006021802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('244', '3', '公司个人办公PC登记表', '2006021501.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('245', '3', '公司行动工作日志表', '2006021302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('246', '3', '企业工作内容调查日报表', '2006021301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('247', '3', '出入厂管理规则', '2006020701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('248', '3', '工作调动申请书的格式', '2005092602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('249', '3', '员工改善提案实施成效表', '2005092102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('250', '3', '员工纪律处分通知表', '2005092101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('251', '3', '个人优缺点平衡表', '2005090502.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('252', '3', '人事动态及费用控制表', '2005090501.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('253', '3', '请示处理单', '2005081002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('254', '3', '企业保证人条件规定表', '2005081001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('255', '3', '职工工作日志', '2005073001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('256', '3', '人事接受函', '2005072302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('257', '3', '工作条件规定表', '2005072301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('258', '3', '企业人员状况记录表', '2005071802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('259', '3', '企业现有人数统计表', '2005071801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('260', '3', '企业员工工伤报告表', '2005051601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('261', '3', '员工医疗补贴规定', '2005051102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('262', '3', '值日值夜及餐费给付办法', '2005012803.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('263', '3', '员工着装管理规定', '2005012802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('264', '3', '员工打卡管理规定', '2005012801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('265', '3', '员工轮休办法', '2005012503.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('266', '3', '春节放假细则', '2005012502.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('267', '3', '值勤细则', '2005012501.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('268', '3', '员工上下班遵守细则', '2005012003.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('269', '3', '员工给假细则', '2005012002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('270', '3', '员工给假实施细则', '2005012001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('271', '3', '所有员工当日活动时间记录', '2005011401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('272', '3', '外销主管岗位工作说明书', '2005011202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('273', '3', '统计规划助理员工作说明书', '2005011201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('274', '3', '人事管理制度总则', '2005010303.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('275', '3', '事务处理制度', '2005010302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('276', '3', '人事管理规章', '20050103.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('277', '3', '服务自愿书', '2004110502.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('278', '3', '员工发展规划表', '2004110302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('279', '3', '员工工作轮换登记卡', '2004110301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('280', '3', '业务改善检讨表', '2004103001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('281', '3', '职位说明书：销售代表', '2004621144311.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('282', '3', '职位说明书：销售统计员', '2004621144042.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('283', '3', '职位说明书：电话销售代表', '2004621143843.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('284', '3', '工作评价总结表', '2004512150407.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('285', '3', '职工奖惩条例', '2004512150349.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('286', '3', '离职移交清单', '200441101848.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('287', '3', '人事主管岗位职责', '200441101822.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('288', '3', '员工特殊事项纪录表', '2004318162422.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('289', '3', '计件工资幅度调查表', '2004318162406.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('290', '3', '新进员工教育成果检测表', '2004223165223.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('291', '3', '月份员工统计表', '2004223165154.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('292', '3', '奖惩申报表', '2004211160827.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('293', '3', '人事流动月报表', '20042492933.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('294', '3', '人员需求估计表', '2004112150142.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('295', '3', '奖惩建议申请单', '2004112145837.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('296', '3', '职员统一薪金等级表', '200412154836.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('297', '3', '月度用餐统计表', '20031229104927.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('298', '3', '在职训练结训报表', '2003124155617.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('299', '3', '新进职员研修事项检查表', '2003124155316.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('300', '3', '员工职务等级划分表', '2003111101156.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('301', '3', '人员保证记录表', '2003106155958.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('302', '3', '工作出勤表', '2003106155642.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('303', '3', '工作内容说明书', '2003924140507.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('304', '3', '部门工作分配表', '200399154008.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('305', '3', '公伤报告单', '200387111347.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('306', '3', '值班餐费申请单', '200387111335.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('307', '3', '员工保证书', '20038295343.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('308', '3', '员工考勤纪录表', '2003717102531.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('309', '3', '综合工作情况表', '2002109112347.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('310', '3', '职务分配表', '2002109112337.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('311', '3', '员工任免通知书', '2002109112323.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('312', '3', '员工奖惩月报表', '2002109112314.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('313', '3', '员工奖惩建议申请表', '2002109112302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('314', '3', '员工奖惩登记表', '2002109112253.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('315', '3', '员工工资变动申请表', '2002109112240.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('316', '3', '员工岗位变动通知书', '2002109112232.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('317', '3', '员工到职单', '2002109112222.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('318', '3', '员工处罚条件参照表', '2002109112211.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('319', '3', '引荐担保书', '2002109112204.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('320', '3', '业务员工作日报', '2002109112153.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('321', '3', '人员调职申请书', '2002109112142.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('322', '3', '人员调动申请单', '2002109112132.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('323', '3', '请购单', '2002109112120.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('324', '3', '奖惩登记表', '2002109112104.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('325', '3', '纪律处分通知书', '2002109112052.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('326', '3', '公司奖励种类一览表', '2002109112045.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('327', '3', '公司纪律规定', '2002109112036.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('328', '3', '工作说明书', '2002109112027.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('329', '3', '工作内容调查日报表', '2002109112018.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('330', '3', '面谈构成表', '051019x.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('331', '3', '职员品行评述表', '1.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('332', '3', '职员品行考核表', '2.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('333', '3', '职员品行分析表', '3.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('334', '3', '员工奖惩申请建议书', '4.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('335', '4', '最新劳动合同样本（2008）', '2007112408.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('336', '4', '以完成一定工作任务为期限劳动合同范本', '2007112407.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('337', '4', '无固定期限劳动合同范本（新）', '2007112406.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('338', '4', '劳务派遣劳动合同范本（新）', '2007112405.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('339', '4', '江西省劳动合同范本（新）', '2007112404.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('340', '4', '固定期限劳动合同范本（新）', '2007112403.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('341', '4', '非全日制从业人员使用劳动合同范本（新）', '2007112402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('342', '4', '东莞市职工劳动合同范本（新）', '2007112401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('343', '4', '中外合资经营合同（中英文）', '2007031901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('344', '4', '劳动合同（英文版）', '2007031202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('345', '4', '国际劳务合同', '2007031201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('346', '4', '中外劳务合同', '2007030102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('347', '4', '技术保密合同书', '2007030101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('348', '4', '集体劳动合同', '2007020702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('349', '4', '介绍信格式范本', '2007020701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('350', '4', '实习合约', '2007020502.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('351', '4', '借调合同', '2007020202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('352', '4', '借用人员劳务协议', '2007020201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('353', '4', '聘请外籍工作人员合同', '2007012502.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('354', '4', '教育系统聘用合同', '2007011002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('355', '4', '反竞争协议样本', '2007011001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('356', '4', '企业员工保密合同', '2006120701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('357', '4', '企业员工竞业限制合同', '2006120702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('358', '4', '保证书规约', '2006111402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('359', '4', '聘书', '2006111401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('360', '4', '面试核定表', '2006080802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('361', '4', '新进人员任用表', '2006080401.DOC', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('362', '4', '签约核准表', '2006072101.DOC', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('363', '4', '甄询记录表', '2006060602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('364', '4', '解除劳动合同通知书', '2006060601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('365', '4', '劳动合同顺延通知书', '2006041202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('366', '4', '解除劳动合同协议书', '2006041201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('367', '4', '终止劳动合同通知书', '2006041003.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('368', '4', '劳动合同中止确认书', '2006041002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('369', '4', '劳动合同变更协议书', '200604101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('370', '4', '劳动合同签订意向调查表', '2006040602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('371', '4', 'AA公司劳动合同续订书', '2006040601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('372', '4', '外商投资企业劳动合同说明', '2006031303.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('373', '4', '全员劳动合同书', '2006031302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('374', '4', '化工行业劳动合同书', '2006031301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('375', '4', '外籍工作人员聘请合同', '2005080801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('376', '4', '中外合资企业劳动合同', '2005070102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('377', '4', '解除劳动合同证明书', '2005070101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('378', '4', '雇佣合同书范本', '2005061401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('379', '4', '经营财务人员保证书', '2005031602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('380', '4', '保守商业秘密协议', '2005031601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('381', '4', '外商投资企业劳动合同', '2005031401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('382', '4', '兼职员工工作契约书', '2005011802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('383', '4', '劳动合同签收备案表', '2004122002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('384', '4', '学生实习协议', '2004120903.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('385', '4', '劳动争议调解协议书', '2004120603.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('386', '4', '劳动争议调解申请书', '2004120602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('387', '4', '变更终止解除劳动合同通书', '2004120601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('388', '4', '劳动合同顺延登记表', '2004714142636.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('389', '4', '劳动合同中止继续履行审批表', '2004714142621.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('390', '4', '职员试用通知单', '2002109112727.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('391', '4', '招聘（录用）通知单', '2002109112719.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('392', '4', '员工聘用制度', '2002109112711.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('393', '4', '员工到职单', '2002109112705.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('394', '4', '新员工甄选比较表', '2002109112657.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('395', '4', '新员工甄选报告表', '2002109112649.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('396', '4', '新员工试用考察表', '2002109112639.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('397', '4', '新员工试用表', '2002109112632.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('398', '4', '试用员工考核表', '2002109112624.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('399', '4', '试用合同书', '2002109112616.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('400', '4', '试用察看通知单', '2002109112603.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('401', '4', '试用查看通知', '2002109112556.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('402', '4', '试用保证书', '2002109112546.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('403', '4', '人员试用标准', '2002109112533.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('404', '4', '聘约人员任用核定表', '2002109112524.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('405', '4', '聘任书', '2002109112516.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('406', '4', '劳动合同管理规定', '2002109112455.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('407', '5', '纳税申报文书填写使用说明', '2007112202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('408', '5', '2007年绩效考核标准表', '2007110502.xls', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('409', '5', '机动班工段员工岗位资格矩阵表', '2007110501.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('410', '5', 'XX公司停薪留职规定', '2007101602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('411', '5', '不动产业薪资制度', '2007101601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('412', '5', '企业奖金管理制度', '2007101102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('413', '5', '部门薪水调整表', '2007101101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('414', '5', '薪酬管理章程', '2007100802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('415', '5', '国际工作派遣补贴表示例', '2007100801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('416', '5', '工资报告单', '2007092802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('417', '5', '给予驻外人员的津贴类型', '2007092801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('418', '5', '工资单补充表', '2007092602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('419', '5', '工资标准及发放办法', '2007092601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('420', '5', '工资预算表', '2007092402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('421', '5', '公司薪水调整表', '2007092401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('422', '5', '计件工资调整报告单', '2007091902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('423', '5', '机械制造业薪资制度', '2007091901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('424', '5', '计时工资核定表', '2007091702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('425', '5', '家电制造业薪资制度', '2007091701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('426', '5', '津贴及奖金制度', '2007091302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('427', '5', '某企业员工退休金领取证书', '2007091301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('428', '5', '计件工资管理办法', '2007091102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('429', '5', '技能工资管理规定', '2007091101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('430', '5', '薪资调查表', '2007090802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('431', '5', '最低工资率测算方法', '2007090801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('432', '5', '制订最低工资确定办法', '2007082902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('433', '5', '报酬待遇管理规定', '2007082901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('434', '5', '薪资与福利管理', '2007080102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('435', '5', '销售人员绩效奖金发放办法', '2007051902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('436', '5', '员工工资管理规程', '2007043001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('437', '5', '某电子公司员工薪资制度', '2007040501.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('438', '5', '薪资福利设计表单', '2007033102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('439', '5', '薪资等级构成表', '2007033101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('440', '5', '销售团队薪酬激励的设计', '2007031602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('441', '5', '销售人员工资管理办法', '2007031601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('442', '5', '员工健康安全福利制度', '2006121802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('443', '5', '员工家族生活补助费支给办法', '2006121801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('444', '5', '员工公伤补助费支给办法', '2006112102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('445', '5', '福利预算表', '2006090402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('446', '5', '福利管理工作的境界检查表', '2006090401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('447', '5', '企业自主福利项目开发方案设计表', '2006083102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('448', '5', '福利工作策略标准检查表', '2006083101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('449', '5', '职级对照暨薪资级距表', '2006071702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('450', '5', '膳杂费申请表', '2006071701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('451', '5', '薪资管理问题与困境解决表', '2006070802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('452', '5', '其他工资调整类型检查表', '2006070801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('453', '5', '薪资调整沟通工具表单', '2006062102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('454', '5', '工资发放管理检查表', '2006062101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('455', '5', '企业员工工资信息表', '2006061602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('456', '5', '工资福利市场调查方案设计', '2006061601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('457', '5', '工资管理政策检查表', '2006061402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('458', '5', '项目奖金规划表', '2006061401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('459', '5', '具体职位工资标准设计表', '2006052702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('460', '5', '工资结构方案表', '2006052402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('461', '5', '企业月份福利工作计划', '2006032703.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('462', '5', '国际工作派遣补贴表', '2006032702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('463', '5', '公司福利制度方案', '2006032701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('464', '5', '员工应发应扣薪金单', '2006082402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('465', '5', '年工资基金计划表', '2006082401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('466', '5', '企业员工保险记录表', '2005092802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('467', '5', '各岗位技能工资结构表', '2005092801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('468', '5', '福利金收支预算表', '2005080302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('469', '5', '员工值班餐费申请表', '2005080301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('470', '5', '职工福利委员会费用报销单', '20050801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('471', '5', '企业员工重大伤病补助申请表', '2005071502.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('472', '5', '员工婚丧喜庆补贴申请表', '2005071501.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('473', '5', '结构工资表', '2005053001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('474', '5', '某公司薪酬制度', '2005041101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('475', '5', '员工工资职级设计表', '2005030902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('476', '5', '员工薪水调整表', '2004311164334.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('477', '5', '月份工作考评表', '2004226155146.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('478', '5', '计件薪核定通知单', '2004226155134.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('479', '5', '普遍员工工资计算', '200415154938.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('480', '5', '生产人员工资提成计算', '200415154926.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('481', '5', '主管助理人员奖金核定表', '2003116145018.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('482', '5', '记件工资幅度调查表', '20031013154737.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('483', '5', '计件工资每日报表', '20031013154630.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('484', '5', '新员工职务、工资核准表', '2003721155346.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('485', '5', '工资登记表', '2003721155335.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('486', '5', '生产奖金核定表', '2002109114740.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('487', '5', '操作员奖金分配表', '2002109114726.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('488', '5', '间接人员奖金核定', '2002109114709.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('489', '5', '主管助理奖金核定表', '2002109114651.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('490', '5', '工作奖金核定表（一）', '2002109114629.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('491', '5', '工作奖金核定表（二）', '2002109114614.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('492', '5', '利润中心奖金分配表', '2002109114541.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('493', '5', '员工薪金单', '2002109113720.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('494', '5', '员工奖金合计表', '2002109113706.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('495', '5', '员工工资职级核定表', '2002109113649.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('496', '5', '员工工资调整表', '2002109113637.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('497', '5', '员工工资单', '2002109113627.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('498', '5', '员工工资表', '2002109113612.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('499', '5', '员工抚恤申请表', '2002109113602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('500', '5', '员工出勤工薪记算表', '2002109113555.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('501', '5', '预支工资申请书', '2002109113538.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('502', '5', '薪资制度', '2002109113529.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('503', '5', '薪酬制度', '2002109113517.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('504', '5', '新员工职务工资标准表', '2002109113259.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('505', '5', '新员工工资核定表', '2002109113241.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('506', '5', '销售人员工资提成计算', '2002109113233.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('507', '5', '生产人员工资提成计算', '2002109113219.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('508', '5', '普遍员工工资计算表', '2002109113038.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('509', '5', '年工资基金使用计划表', '2002109113029.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('510', '5', '津贴申请单', '2002109113019.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('511', '5', '件薪计算表', '2002109113007.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('512', '5', '间接人员奖金核定表', '2002109112954.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('513', '5', '计件工资计算表', '2002109112946.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('514', '5', '公司劳动工资结构', '2002109112937.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('515', '5', '公司工资制度方案', '2002109112929.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('516', '5', '工资统计表', '2002109112920.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('517', '5', '工资扣缴表', '2002109112912.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('518', '5', '工资分析表', '2002109112904.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('519', '5', '工资调整表', '2002109112854.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('520', '5', '工资登记表', '2002109112848.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('521', '5', '工资标准表', '2002109112840.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('522', '5', '变更工资申请单', '2002109112833.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('523', '5', '变更工资申请表', '2002109112826.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('524', '5', '工资调查表', '5.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('525', '5', '加班费申请单', '6.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('660', '8', '公司薪酬调整建议方案', '2007012302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('659', '8', '业务主管培训内容构成', '2007032701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('658', '8', '培训协议', '2007032702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('657', '8', '各级培训机构工作职责', '2007061101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('656', '8', '在职员工受训意见调查表', '2007061402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('655', '8', '在职员工培训测验成绩表', '2007062001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('654', '8', '培训跟踪表', '2007072602.ppt', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('653', '8', '培养员工职业意识', '2007090301.ppt', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('651', '8', '外出学习考察管理规定', '2007122401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('652', '8', '业务代表培训教材', '2007090302.ppt', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('650', '8', '因公出国管理规定', '2007122402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('649', '6', '加班费申请单', '2002109114909.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('648', '6', '加班管理制度', '2002109114918.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('647', '6', '加班申请单', '2002109114926.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('646', '6', '考勤制度', '2002109114936.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('645', '6', '人员出勤表', '2002109114945.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('644', '6', '员工工时记录簿', '2002109115031.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('643', '6', '员工考勤记录表', '2002109115045.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('642', '6', '员工签到卡', '2002109115058.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('641', '6', '员工请假单', '2002109115104.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('640', '6', '员工请假公出单', '2002109115113.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('639', '6', '月度考勤统计表', '2002109115119.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('638', '6', '职员签到簿', '2002109115126.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('637', '6', '缺勤报告表', '200431160648.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('636', '6', '公司职员签到簿', '200431160705.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('635', '6', '特别休假请假单', '200467145255.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('634', '6', '上司、部属休假掌握表', '200467145309.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('633', '6', '员工考勤和休假的规定', '2005011902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('632', '6', '员工出勤日报表', '2005030701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('631', '6', '值班时间变更通知表', '2005030702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('630', '6', '员工年度缺勤累计表', '2005030703.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('629', '6', '工作轮换申请表', '2005032201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('628', '6', '员工加班细则', '2005051103.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('627', '6', '员工请假公出表', '2005083101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('626', '6', '值班替换申请书', '2006021503.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('625', '6', 'XX网络公司出差申请表', '2006030101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('624', '6', '工作班制的评价标准', '2006030102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('623', '6', '内部培训考勤表', '2006030103.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('622', '6', '留言记录表', '2006030601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('621', '6', '值班安排表', '2006030801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('620', '6', '休假程序', '2006050801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('619', '6', '特休假计算方法', '2006080801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('618', '6', '假别规定表', '2006081501.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('617', '6', '职务授权及代理人作业办法', '2006081502.DOC', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('616', '6', '出勤管理办法', '2006081801.DOC', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('615', '6', '补休假申请表', '2006082502.DOC', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('614', '6', '公司职员的人事考绩表格', '2006100802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('613', '6', '考勤管理制度', '2007073001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('612', '6', '管理人员录用制度', '2007073002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('588', '7', '出差管理规定2', '2007122102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('589', '7', '出差管理规定1', '2007122101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('590', '7', '出差管理办法', '2007082002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('591', '7', '国内出差作业流程图', '2006090702.DOC', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('592', '7', '出差旅费报支单', '2006082901.DOC', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('593', '7', '国外出差管理作业流程图', '2006072401.DOC', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('594', '7', '工作申请表', '2005042903.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('595', '7', '劳动合同范例', '2005042902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('596', '7', '面试结果评价表', '2005042901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('597', '7', '短程出差误餐申领单', '200418150456.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('598', '7', '预借旅费申请单', '20031215155232.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('599', '7', '年度出差日数及拜访次数报告表', '20031215155113.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('600', '7', '管理才能考核及建议表', '2003128160724.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('601', '7', '短程出差车费报销单', '2003128160545.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('602', '7', '出差业务报告书', '2003928154958.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('603', '7', '一周出差预定报告表', '2002109115549.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('604', '7', '业务人员出差报告书', '2002109115540.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('605', '7', '短程旅费申请表', '2002109115532.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('606', '7', '出差用品检查重点', '2002109115524.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('607', '7', '出差申请单', '2002109115515.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('608', '7', '出差申请单（一）', '2002109115442.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('609', '7', '出差申请单（二）', '2002109115434.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('610', '7', '出差旅费清单', '2002109115423.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('611', '7', '出差旅费报销清单', '2002109115415.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('661', '8', '新进员工职前培训表', '2007012301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('662', '8', '企业内训的全面评估方案', '2006123102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('663', '8', '企业内训策划书', '2006123101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('664', '8', '培训协议书', '2006092102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('665', '8', '员工培训报告书', '2006071302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('666', '8', '上岗前三级安全教育卡片', '2006052202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('667', '8', '人员培训审批表', '2005090702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('668', '8', '内部培训考勤表', '2005090701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('669', '8', '外部培训实施记录', '2005082902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('670', '8', '职业培训费用补贴审批表', '2005081601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('671', '8', '部门培训申请表', '2005032202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('672', '8', '培训表格', '2005030403.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('673', '8', '兼职教育检查表', '2005030402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('674', '8', '新进销售员训练教材', '2005030401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('675', '8', '职员培训报告表', '2005013103.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('676', '8', '员工培训记录表', '2005013102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('677', '8', '岗前人员培训制度', '2005013101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('678', '8', '员工培训管理办法', '2004122702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('679', '8', '新员工培训方案', '2004122701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('680', '8', '员工岗前培训规定', '2004122201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('681', '8', '员工教育培训制度', '2004121502.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('682', '8', '员工教育培训协议书', '2004121501.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('683', '8', '培训评估表', '2004628141911.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('684', '8', '培训规划表', '2004628141856.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('685', '8', '企划管理类职权划分表', '200457161048.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('686', '8', '生产管理类职权划分表', '200457160859.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('687', '8', '员工培训反馈信息', '200457160652.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('688', '8', '在职技能培训计划申请表', '2004414155416.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('689', '8', '从业人员在职训练资历表', '20031224111113.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('690', '8', '新进员工教育内容检查表', '20031222155220.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('691', '8', '部属不当行为的分析表', '20031222155201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('692', '8', '加班记录表', '20031117155124.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('693', '8', '培训需求申请表', '20031117155018.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('694', '8', '在职训练学员意见调查表', '20031112160127.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('695', '8', '新员工试用申请及核定表', '20031024151032.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('696', '8', '训练总结报告表', '200392113359.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('697', '8', '年度训练计划与预算表', '200392113343.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('698', '8', '训练意见调查表', '200389105630.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('699', '8', '团体训练申请表', '2003728144512.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('700', '8', '新进员工教育内容检查表', '2003611143101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('701', '8', '从业人员在职训练资历表', '2003611143030.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('702', '8', '在职员工受训意见调查', '2002109120613.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('703', '8', '在职员工培训测验成绩', '2002109120604.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('704', '8', '在职训练学员意见调查', '2002109120549.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('705', '8', '在职训练实施结果表', '2002109120533.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('706', '8', '在职训练费用申请表', '2002109120527.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('707', '8', '在职训练测验成绩表', '2002109120518.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('708', '8', '在职技能培训计划申请', '2002109120509.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('709', '8', '员工在职训练制度', '2002109120455.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('710', '8', '员工培训需求调查表', '2002109120443.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('711', '8', '员工培训考核表', '2002109120435.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('712', '8', '员工培训计划表', '2002109120405.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('713', '8', '员工培训档案', '2002109120357.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('714', '8', '员工培训报告书', '2002109120346.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('715', '8', '员工培训报告表', '2002109120341.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('716', '8', '训练成效调查表', '2002109120318.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('717', '8', '新员工培训计划表', '2002109120310.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('718', '8', '新员工培训成绩评核表', '2002109120301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('719', '8', '新进职员教育成果检测', '2002109120254.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('720', '8', '新进职员教育', '2002109120241.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('721', '8', '团体培训申请表', '2002109120234.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('722', '8', '提高能力的对策表', '2002109120218.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('723', '8', '培训管理制度', '2002109120149.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('724', '8', '年度培训计划', '2002109120033.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('725', '8', '观摩报告书', '2002109120018.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('726', '8', '各级培训机构工作职责', '2002109120011.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('727', '8', '个人训练教学记录表', '2002109120000.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('728', '8', '个人训练', '2002109115953.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('729', '8', '个人外部训练申请表', '2002109115944.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('730', '8', '个人外部培训申请表', '2002109115934.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('731', '8', '从业人员在职培训资历', '2002109115924.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('732', '8', '提高能力方法表', '7.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('733', '9', '外聘专业技术管理人员年度绩效评价标准', '2007122701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('734', '9', '公司绩效管理制度', '2007102202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('735', '9', '绩效考核实施办法', '2007102201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('736', '9', '销售部门绩效考核指标', '2007101702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('737', '9', '设计部绩效考核指标', '2007101701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('738', '9', '绩效管理操作手册', '2007072601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('739', '9', '总工办主任考核指标', '2007072002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('740', '9', '工程合同预结算考核指标', '2007072001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('741', '9', '预算合同部部长考核指标', '2007071802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('742', '9', '技术审核考核指标', '2007071801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('743', '9', '规划部部长考核指标', '2007071602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('744', '9', '市场部部长考核指标', '2007071601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('745', '9', '分公司经理考核指标', '2007071302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('746', '9', '总工程师考核指标', '2007071301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('747', '9', '总建筑师考核指标', '2007070902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('748', '9', '总会计师考核指标', '2007070901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('749', '9', '总经济师考核指标', '2007070402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('750', '9', '销售副总经理考核指标', '2007070401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('751', '9', '副总经理(租赁、拆迁)考核指标', '2007080202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('752', '9', '行政副总经理考核指标', '2007070201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('753', '9', '常务副总经理考核指标', '2007062702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('754', '9', '分厂考核分值表', '2007062701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('755', '9', '供应部考核分值表', '2007062502.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('756', '9', '品质管理部考核分值表', '2007062501.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('757', '9', '技术开发部考核分值表', '2007062202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('758', '9', '生产计划部考核分值表', '2007062201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('759', '9', '职员具体工作能力考核表', '2007061401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('760', '9', '公司部门中层领导年度工作考核表', '2007061102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('761', '9', '生产管理指标', '2007060802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('762', '9', '财务会计指标', '2007060801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('763', '9', '500强名企的KPI绩效管理操作手册', '2007060602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('764', '9', '员工绩效改进计划表', '2007060402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('765', '9', '员工绩效考核结果处理表', '2007060401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('766', '9', '员工工作态度评估表', '2007053102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('767', '9', '员工工作能力评估表', '2007053101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('768', '9', '员工工作业绩评估表', '2007052902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('769', '9', '干部绩效考核办法', '2007052901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('770', '9', '分厂月度绩效考核管理办法', '2007052602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('771', '9', 'BOM考核管理办法', '2007052601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('772', '9', '本厂保安人员考核办法', '2007052202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('773', '9', '部门绩效考评管理办法', '2007052201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('774', '9', '每周自我鉴定', '2007051602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('775', '9', '从业人员服务成绩考核表', '2007051601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('776', '9', '员工考核管理办法', '2007042901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('777', '9', '关键绩效考评指标分解表', '2007042301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('778', '9', '技术质量部总监绩效评估表', '2007041402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('779', '9', '资金财务部总监绩效评估表', '2007041401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('780', '9', '生产管理部总监绩效评估表', '2007041102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('781', '9', '市场营销部总监绩效评估表', '2007040902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('782', '9', '总经理绩效评估表', '2007040901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('783', '9', '销售公司KPI组成表', '2007032202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('784', '9', '系统工程师季度考核表', '2007032201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('785', '9', '秘书的绩效标准', '2007030802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('786', '9', '中小企业诊断表', '2007030801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('787', '9', '职等加给与绩效奖金基数表', '2007030602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('788', '9', '职务岗位考核要素表', '2007030601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('789', '9', '办事处工作人员季度考核表', '2006122302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('790', '9', '在职员工培训测试成绩表', '2006112902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('791', '9', '人力资源考核指标KPI表', '2006112901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('792', '9', '工人年度考核表', '2006112402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('793', '9', '党政机关工作人员年度考评表', '2006112401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('794', '9', '关键职能设计标准', '2006102002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('795', '9', '合理化建议反馈信息单', '2006102001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('796', '9', '企业员工平时考绩记录表', '2006092802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('797', '9', '企业员工升等条件表', '2006092801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('798', '9', '销售公司KPI组成表', '2006092101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('799', '9', '通信品管办岗位KPI构成表', '2006062702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('800', '9', '销售公司用户服务中心考核关系表', '2006062701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('801', '9', '员工综合考评表', '2006060802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('802', '9', '营销员工业绩评价样', '2006042502.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('803', '9', '业务单位公司职员的人事表', '2006042501.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('804', '9', '制造业成绩与效率增长率考核表典范', '2006042201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('805', '9', '营业销售人员的人事考绩表格', '2006042202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('806', '9', '中高层经理绩效评价表', '2006042002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('807', '9', '主管人员绩效评价表', '2006042001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('808', '9', '总务部门业务能力分析表', '2006041802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('809', '9', '作业员考绩表', '2006041801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('810', '9', '目标执行追踪卡', '2006032203.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('811', '9', '厂长年度绩效考核表', '2006032202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('812', '9', '标准作业时间评定表', '2006032201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('813', '9', '外务员成绩表', '2006030603.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('814', '9', '下属重要任务考评表', '2006022403.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('815', '9', '销售实绩统计表', '2006022103.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('816', '9', '业务说明书', '2006021003.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('817', '9', '外务员成绩表', '2006021002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('818', '9', '会计部门能力分析表', '2006020703.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('819', '9', '联想集团绩效考核用表(部门经理用)', '051205.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('820', '9', 'HR绩效改进计划表', '2005091902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('821', '9', '公司管理人员评分表', '2005091901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('822', '9', '未参加考核人员情况', '2005091202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('823', '9', '月份劳动纪律检查奖罚通知单', '2005091201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('824', '9', '部属行为意识分析表格', '2005082901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('825', '9', '普通员工评定表', '2005081202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('826', '9', '技术单位人事考绩表', '2005081201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('827', '9', '保安员绩效考评方案', '2005072602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('828', '9', '员工专项评定表', '2005072601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('829', '9', '公司行为考核表', '2005072002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('830', '9', '转正评估审批表', '2005072001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('831', '9', '办事处人员季度考核表', '2005071302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('832', '9', '客户访问计划与实绩日报', '2005071301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('833', '9', '市场销售人员工作实绩综合记录表', '2005070502.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('834', '9', '员工工作表现贡献评估表', '2005070501.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('835', '9', '员工旅游活动费用补助申请表', '2005062802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('836', '9', '绩效考核分数比例分配表', '2005062801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('837', '9', '企业销售人员考绩表', '2005062402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('838', '9', '企业管理人员评分表', '2005062401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('839', '9', '岗位任职确认书', '2005061702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('840', '9', '企业人事考核评议表', '2005061701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('841', '9', '企业专业人员服务成绩考核表', '2005060602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('842', '9', '成绩与效率评估表格', '2005060601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('843', '9', '员工季度绩效考核评分表', '2005053002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('844', '9', '年度晋级考核制度', '2005031802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('845', '9', '普通职员考核表', '2005022503.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('846', '9', '高级职员考核表', '2005022502.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('847', '9', '职员考核安排表', '2005022501.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('848', '9', '业务人员业绩增减月报表', '2005012603.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('849', '9', '外务员成绩表', '2005012602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('850', '9', '生产部员工年终考绩表', '2005012601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('851', '9', '职员考核调查表', '2005011801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('852', '9', '重要干部的人事考绩表格（2）', '2005011702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('853', '9', '重要干部的人事考绩表格', '2005011701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('854', '9', '职员考核总结表', '2005011002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('855', '9', '公司职员的人事考绩表格', '2004122902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('856', '9', '仓库管理员考核表', '2004112901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('857', '9', '不同职别员工的评价方法表', '2004111602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('858', '9', '职员分阶段考绩表', '2004111201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('859', '9', '绩效考核流程图表', '2004110901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('860', '9', '员工自评表', '员工自评表.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('861', '9', '绩效考核申述表', '绩效考核申述表.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('862', '9', '新进中、高级人员资历量表', '200471142521.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('863', '9', '技术单位的人事考绩表格', '200471142325.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('864', '9', '职务调整说明书', '2004325153045.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('865', '9', '职员考评表', '2004325153001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('866', '9', '生产部门业务能力分析表', '200429154910.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('867', '9', '营业部门业务能力分析表', '200429154819.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('868', '9', '普通员工服务成绩考核表', '20031023163618.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('869', '9', '年度考绩表', '20031021152124.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('870', '9', '干部指导能力检查表', '2003108152536.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('871', '9', '业务能力规定表', '2003912151804.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('872', '9', '平时成绩记录表', '2003813170616.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('873', '9', '人事管理业务评核表', '2003729150234.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('874', '9', '业务人员考核表（二）', '2003630151032.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('875', '9', '管理员工考核表(二)', '2003630150959.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('876', '9', '总务部门业务能力分析', '2002109121933.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('877', '9', '综合能力考核表', '2002109121921.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('878', '9', '自我鉴定表', '2002109121913.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('879', '9', '自我报告书', '2002109121905.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('880', '9', '主管人员考核表', '2002109121852.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('881', '9', '主管人员服务成绩考核', '2002109121843.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('882', '9', '重要任务考评表', '2002109121832.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('883', '9', '职员品行评定表', '2002109121824.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('884', '9', '职员品行考核表', '2002109121811.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('885', '9', '职员品行分析表', '2002109121804.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('886', '9', '职员考核表', '2002109121755.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('887', '9', '职员具体工作能力考核', '2002109121741.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('888', '9', '职员阶段考绩表', '2002109121728.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('889', '9', '员工自我鉴定表', '2002109121714.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('890', '9', '员工专项考核表', '2002109121706.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('891', '9', '员工通用项目考核表', '2002109121658.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('892', '9', '营业部门业务能力分析', '2002109121630.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('893', '9', '营销人员能力考核表', '2002109121554.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('894', '9', '业务人员考核表', '2002109121543.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('895', '9', '选拔干部候选人评分表', '2002109121532.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('896', '9', '相互评价表', '2002109121512.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('897', '9', '生产部门业务能力分析', '2002109121503.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('898', '9', '软件工程师考评表', '2002109121450.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('899', '9', '人事考评表', '2002109121442.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('900', '9', '普通员工考核表', '2002109121433.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('901', '9', '普通员工服务成绩考核', '2002109121423.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('902', '9', '年度考绩表', '2002109121349.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('903', '9', '考核制度', '2002109121328.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('904', '9', '考核表范例', '2002109121317.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('905', '9', '经理人员综合素质考核', '2002109121135.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('906', '9', '经理人员能力考核表', '2002109121123.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('907', '9', '间接员工考绩表', '2002109121114.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('908', '9', '技术人员能力考核表', '2002109121106.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('909', '9', '绩效考评制度', '2002109121053.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('910', '9', '绩效考核面谈表', '2002109121043.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('911', '9', '会计部门业务能力分析', '2002109121035.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('912', '9', '管理员工考核表', '2002109121018.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('913', '9', '管理才能考核表', '2002109121007.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('914', '9', '中层领导年度工作考核', '2002109120958.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('915', '9', '定期考绩汇总表', '2002109120928.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('916', '9', '部属行为意识分析表', '2002109120917.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('917', '9', '部门工作综合测量表', '2002109120910.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('918', '10', '公司培训记录单', '2007111502.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('919', '10', '人员离职率', '2007111501.xls', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('920', '10', '员工离职率计算方法', '2007090601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('921', '10', '职务代理授权表', '2006091802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('922', '10', '职务代理人变更表', '2006081701.DOC', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('923', '10', '离职审批交接单', '2005082401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('924', '10', '辞职报告格式', '2005080802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('925', '10', '员工离职处理原则', '2005011901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('926', '10', '员工辞职管理办法', '2004122202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('927', '10', '员工岗位变动通知', '2004120902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('928', '10', '员工岗位变动回执', '2004120901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('929', '10', '职工调动审批程序', '2004110501.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('930', '10', '员工辞退申请表', '20031119145648.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('931', '10', '离职通知书', '2002109122412.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('932', '10', '员工辞职管理办法', '2002109122312.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('933', '10', '员工离职单', '2002109122305.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('934', '10', '移交清单', '2002109122258.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('935', '10', '移交清册（一）', '2002109122249.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('936', '10', '移交清册（二）', '2002109122243.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('937', '10', '离职申请书', '2002109122226.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('938', '10', '辞职申请书', '2002109122216.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('939', '10', '辞职申请表', '2002109122155.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('940', '10', '离职声明书', '离职声明书.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('941', '11', '中小型企业行政事务', '2007082302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('942', '11', '公司档案管理制度', '2007082301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('943', '11', '员工婚丧喜庆应酬办法', '2007081302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('944', '11', '安全保卫防范工作规则', '2007081301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('945', '11', '文书管理规则', '2007081002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('946', '11', '电话管理制度', '2007081001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('947', '11', '岗位分析调查问卷', '2007072402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('948', '11', '人力资源规划表', '2007072401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('949', '11', '印章管理办法', '2007062002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('950', '11', '费用报销单', '2007051402.xls', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('951', '11', '客户档案登记表', '2007043002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('952', '11', '客户跟踪表-营销人员', '2007051102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('953', '11', '意见反馈表', '2007051101.xls', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('954', '11', '收货凭证', '2007050802.xls', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('955', '11', '周计划表', '2007050801.xls', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('956', '11', '回款计划', '2007042302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('957', '11', '员工损耗指数统计表', '2007032902.xls', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('958', '11', '企业聘请律师委托书', '2007032901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('959', '11', '提案单', '2007012702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('960', '11', '客户访问预定及实施表', '2007012701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('961', '11', '企业应急计划样本', '2007011901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('962', '11', '年度经营目标预测表', '2007011902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('963', '11', '历年销售业绩比较表', '2007011702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('964', '11', '每月巡回调查状况报告书', '2007011701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('965', '11', '工作分析流程', '2006121402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('966', '11', '广告预算表', '2006121401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('967', '11', '产品售价表', '2006121202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('968', '11', '产品市场性分析表', '2006121201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('969', '11', '历年客户营业额统计表', '2006112101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('970', '11', '表格请印申请单', '2006111702.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('971', '11', '打卡申请单', '2006111701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('972', '11', '产品质量管理表', '2006111602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('973', '11', '每日销售报表', '2006111102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('974', '11', '业务处理表使用例范', '2006110302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('975', '11', '经理范围及规模表', '2006110301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('976', '11', '用印申请单', '2006102802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('977', '11', '劳务费用报销单', '2006102801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('978', '11', '领用单', '2006102602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('979', '11', '会议记录格式', '2006102601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('980', '11', '访问客户预定及结果报告书', '2006101802.DOC', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('981', '11', '年度业务报告格式', '2006101801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('982', '11', '职员纪律处分通知书', '2006101302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('983', '11', '客户数量变动分析表', '2006101301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('984', '11', '收货款自动报告表', '2006092602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('985', '11', '市场总需求量调查估计表', '2006092601.DOC', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('986', '11', 'XX公司用车申请单', '2006091301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('987', '11', '同业产品市场价格调查表', '2006091202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('988', '11', '推销日报', '2006091201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('989', '11', '产品广告预定及实施报告表', '2006090902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('990', '11', '产品定价分析表', '2006090901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('991', '11', '抱怨处理报告书', '2006082202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('992', '11', '报价单', '2006082201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('993', '11', '名片申请单', '2006080201.DOC', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('994', '11', '销售额回收额管理一览表', '2006072902.DOC', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('995', '11', '采购验收单', '2006072102.DOC', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('996', '11', '销售额统计表', '2006071902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('997', '11', '用印申请单', '2006071901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('998', '11', '销售计划分析表', '2006071301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('999', '11', '展厅助理岗位手册', '2006071102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1000', '11', '销货明细表', '2006071101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1001', '11', '部门决策权一览表', '2006070502.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1002', '11', '各种委员会一览表', '2006070501.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1003', '11', '销售日报表', '2006062302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1004', '11', '销售人员业务预定及实绩报告表', '2006062301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1005', '11', '销售效率分析表', '2006061202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1006', '11', '销售业务状况报告书', '2006061201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1007', '11', '销售预测表', '2006060801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1008', '11', '成本估价', '2006052401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1009', '11', '内审检查表', '2006052201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1010', '11', '销售月报', '2006051801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1011', '11', '新产品潜在客户追踪表', '2006051602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1012', '11', '新开发客户报告表', '2006051601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1013', '11', '新事业开拓调查检查表', '2006051302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1014', '11', '营业日报', '2006051301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1015', '11', '月份产销统计表', '2006051002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1016', '11', '月份经营利益检核表', '2006051001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1017', '11', '产品售价表', '2006050802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1018', '11', '有效的散会检查表', '2006042802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1019', '11', '企业文化共识化调查', '2006041402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1020', '11', '经理人的影响力计分表', '2006041401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1021', '11', '策划部个人年度工作总结', '策划部工作总结.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1022', '11', '人力资源部工作总结', '051212.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1023', '11', '管理费用设定表', '2005092601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1024', '11', '会议开销表', '2005091401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1025', '11', '劳动争议仲裁申诉登记表', '2005083102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1026', '11', '企业优势和劣势评价表', '2005082202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1027', '11', '管理者确认评价表', '2005082201.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1028', '11', '开会通知表', '2005072902.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1029', '11', '公司部门间需求请调单', '2005072901.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1030', '11', '生产线进度安排表', '2005061402.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1031', '11', '工资标准表', '2005060802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1032', '11', '生产日报表', '2005060801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1033', '11', '月份式成本管理表', '2005052303.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1034', '11', '月份式赔偿处理报表', '2005052302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1035', '11', '订货明细表', '2005052301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1036', '11', '停工报告单', '2005051603.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1037', '11', '生产数量统计表', '2005051602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1038', '11', '生产主管业务审核一览表', '2005051101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1039', '11', '定岗定编原理与操作', '05041201.ppt', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1040', '11', '销售人员考核办法', '2005032802.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1041', '11', '外国人就业申请表', '2005032801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1042', '11', '部门销售管理月报表', '2005031801.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1043', '11', '员工手册（工厂类）', '2005031603.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1044', '11', '生产效率日报表', '2005022302.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1045', '11', '工作进度周报表', '2005022301.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1046', '11', '工作申请书', '2005022103.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1047', '11', '制造月报表', '2005022102.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1048', '11', '作业时间与计件工资标准表', '2005022101.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1049', '11', '生产车间工作管理表', '2005021603.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1050', '11', '销售报表', '2005021602.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1051', '11', '产量分析表', '2005021601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1052', '11', '员工保险办法', '2004122703.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1053', '11', '消防设施器材检查月报表', '2004122001.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1054', '11', '书面请示表格', '2004111601.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1055', '11', '一周业务报表', '2004111202.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1056', '11', '间接部门活性化检讨表', '2004103002.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1057', '11', '结款通知单', '结款通知单.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1058', '11', '采购部目标达成考核表', '采购部目标达成考核表.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1059', '11', '产量记录表', '产量记录表.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1060', '11', '部门年度工作目标沟通与评价表', '部门年度工作目标沟通与评价表.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1061', '11', '特殊违规及处理方式', '2004728142112.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1062', '11', '人力资源部年度目标', '2004728141630.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1063', '11', '员工过失单', '2004712141440.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1064', '11', '部门季度工作计划评价表', '2004712141401.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1065', '11', '例会主题检查表', '2004616145846.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1066', '11', '签呈表格', '2004616145825.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1067', '11', '标准、指导书划定权责表', '2004510150837.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1068', '11', '异动、辞职、退休等作业程序', '2004510150821.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1069', '11', '工作成果周报表', '2003114111021.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1070', '11', '综合长期计划表', '2003911113341.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1071', '11', '财务损益表', '2003723102954.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1072', '11', '暂借款管理办法', '2002109122804.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1073', '11', '员工手册', '2002109122757.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1074', '11', '印章管理办法', '2002109122749.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1075', '11', '医疗及人身意外伤害保险管理办法', '2002109122741.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1076', '11', '休假程序', '2002109122724.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1077', '11', '物资管理办法', '2002109122717.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1078', '11', '文书管理办法', '2002109122710.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1079', '11', '图书、报刊管理办法', '2002109122701.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1080', '11', '经济合同管理办法', '2002109122654.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1081', '11', '计算机管理规定', '2002109122647.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1082', '11', '会议管理规定', '2002109122640.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1083', '11', '规范化管理实施大纲', '2002109122629.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1084', '11', '费用开支管理办法', '2002109122623.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1085', '11', '费用报销规定', '2002109122615.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1086', '11', '法律工作制度', '2002109122607.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1087', '11', '档案管理规定', '2002109122559.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1088', '11', '餐饮业人事管理规章', '2002109122550.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1089', '11', '财务管理规定', '2002109122541.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1090', '11', '保密制度', '2002109122510.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1091', '11', '办公行为规范', '2002109122502.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1092', '11', '办公室物资管理条例', '2002109122453.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1093', '11', '员工请假单', '8.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1094', '11', '请购单', '9.doc', '0', '', '0');
INSERT INTO `qs_hrtools` VALUES ('1095', '11', '考核制度', '10.doc', '0', '', '0');

-- ----------------------------
-- Table structure for qs_hrtools_category
-- ----------------------------
DROP TABLE IF EXISTS `qs_hrtools_category`;
CREATE TABLE `qs_hrtools_category` (
  `c_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `c_name` varchar(80) NOT NULL,
  `c_order` int(11) NOT NULL DEFAULT '0',
  `c_adminset` tinyint(3) NOT NULL DEFAULT '0',
  `c_img` varchar(200) NOT NULL,
  `c_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_hrtools_category
-- ----------------------------
INSERT INTO `qs_hrtools_category` VALUES ('1', '招聘/面试', '0', '1', '', '包含各种人事招聘和人才面试专用表格文档，招聘专员可根据需求自行下载hr资料，实现人企互聘第一步。');
INSERT INTO `qs_hrtools_category` VALUES ('2', '人事档案', '0', '0', '', '以表单和文字形式记录企业和员工的主要经历、政治面貌、素质文化等内容，作为企业文化的内在凭证。 ');
INSERT INTO `qs_hrtools_category` VALUES ('3', '员工管理', '0', '0', '', '包含工作内容、员工纪律等一系列直接涉及员工福利和工作性质的资料。帮助hr快速专业的落实人才工作。');
INSERT INTO `qs_hrtools_category` VALUES ('4', '合同/试用', '0', '0', '', 'hr下载合适的合同范本作为跟人才之间的契约协议签订，成功实现企业和人才之间的双向选择。');
INSERT INTO `qs_hrtools_category` VALUES ('5', '薪酬制度', '0', '0', '', 'hr可以适时参考工具箱内的资料表单，制定合理人性的薪酬制度，在众多招聘企业中一招制胜。');
INSERT INTO `qs_hrtools_category` VALUES ('6', '加班/考勤', '0', '0', '', '工具箱内提供各种形式的考勤表格供hr参考，以维护企业正常的工作秩序，严肃企业纪律。');
INSERT INTO `qs_hrtools_category` VALUES ('7', '出差', '0', '0', '', '针对公司出差问题，提供相关的出差规定、出差情况记录表等，准确掌握员工工作动态，明晰公司财务清单。');
INSERT INTO `qs_hrtools_category` VALUES ('8', '员工培训', '0', '0', '', '提供各类员工培训参考，包含出国培训、新进职员培训等，为企业提供多样的培训意见，提高员工素质能力。');
INSERT INTO `qs_hrtools_category` VALUES ('9', '绩效考核', '0', '0', '', '多种绩效考核办法标准，为企业提供全面的参考，正面引导员工的工作行为和工作业绩，实现企业战略目标。 ');
INSERT INTO `qs_hrtools_category` VALUES ('10', '辞退/移交', '0', '0', '', '工具箱内提供各种辞职申请范本，企业可以进行参考，制定合理的离职流程。');
INSERT INTO `qs_hrtools_category` VALUES ('11', '其它', '0', '0', '', '企业hr工作中其他事项的参考标准，可以自定义选择添加。');

-- ----------------------------
-- Table structure for qs_jobs
-- ----------------------------
DROP TABLE IF EXISTS `qs_jobs`;
CREATE TABLE `qs_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `jobs_name` varchar(50) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `company_addtime` int(10) unsigned NOT NULL,
  `company_audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `emergency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `stick` tinyint(1) NOT NULL,
  `nature` int(10) unsigned NOT NULL,
  `nature_cn` varchar(30) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `sex_cn` varchar(3) NOT NULL,
  `age` varchar(10) NOT NULL,
  `amount` smallint(5) unsigned NOT NULL,
  `topclass` smallint(5) unsigned NOT NULL,
  `category` smallint(5) unsigned NOT NULL,
  `subclass` smallint(5) unsigned NOT NULL,
  `category_cn` varchar(100) NOT NULL DEFAULT '',
  `trade` smallint(5) unsigned NOT NULL,
  `trade_cn` varchar(30) NOT NULL,
  `scale` smallint(5) unsigned NOT NULL,
  `scale_cn` varchar(30) NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `tdistrict` smallint(5) unsigned NOT NULL,
  `district_cn` varchar(100) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `tag_cn` varchar(100) NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `education_cn` varchar(30) NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `experience_cn` varchar(30) NOT NULL,
  `minwage` int(10) NOT NULL,
  `maxwage` int(10) NOT NULL,
  `negotiable` tinyint(1) unsigned NOT NULL,
  `contents` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `deadline` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `stime` int(10) NOT NULL,
  `setmeal_deadline` int(10) unsigned NOT NULL DEFAULT '0',
  `setmeal_id` smallint(5) unsigned NOT NULL,
  `setmeal_name` varchar(60) NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `key` text NOT NULL,
  `user_status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `robot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tpl` varchar(60) NOT NULL,
  `map_x` decimal(9,6) NOT NULL,
  `map_y` decimal(9,6) NOT NULL,
  `map_zoom` tinyint(3) unsigned NOT NULL,
  `add_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_entrust` tinyint(1) NOT NULL DEFAULT '0',
  `department` varchar(60) NOT NULL,
  `famous` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `company_id` (`company_id`),
  KEY `audit_id` (`audit`,`id`),
  KEY `audit_deadline` (`audit`,`deadline`),
  KEY `audit_addtime` (`audit`,`addtime`),
  KEY `audit_refreshtime` (`audit`,`refreshtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for qs_jobs_contact
-- ----------------------------
DROP TABLE IF EXISTS `qs_jobs_contact`;
CREATE TABLE `qs_jobs_contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `contact` varchar(80) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `telephone` varchar(80) NOT NULL,
  `landline_tel` varchar(50) NOT NULL,
  `address` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `notify` tinyint(3) unsigned NOT NULL,
  `notify_mobile` tinyint(3) NOT NULL,
  `contact_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `telephone_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `email_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `qq_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `landline_tel_show` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_jobs_contact
-- ----------------------------

-- ----------------------------
-- Table structure for qs_jobs_search
-- ----------------------------
DROP TABLE IF EXISTS `qs_jobs_search`;
CREATE TABLE `qs_jobs_search` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `emergency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `stick` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `nature` int(10) unsigned NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `topclass` smallint(5) unsigned NOT NULL,
  `category` smallint(5) unsigned NOT NULL,
  `subclass` smallint(5) unsigned NOT NULL,
  `trade` smallint(5) unsigned NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `tdistrict` smallint(5) unsigned NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `minwage` int(10) unsigned NOT NULL,
  `maxwage` int(10) NOT NULL,
  `scale` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `stime` int(10) NOT NULL,
  `setmeal_id` smallint(5) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `map_x` double(9,6) unsigned NOT NULL,
  `map_y` double(9,6) unsigned NOT NULL,
  `jobs_name` varchar(30) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `license` tinyint(1) NOT NULL,
  `famous` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `refreshtime` (`refreshtime`),
  KEY `stime` (`stime`),
  KEY `district_sdistrict_rtime` (`district`,`sdistrict`,`refreshtime`),
  KEY `district_sdistrict_stime` (`district`,`sdistrict`,`stime`),
  KEY `category_subclass_stime` (`category`,`subclass`,`stime`),
  KEY `category_subclass_rtime` (`category`,`subclass`,`refreshtime`),
  KEY `addtime_click` (`addtime`,`click`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_jobs_search
-- ----------------------------

-- ----------------------------
-- Table structure for qs_jobs_search_key
-- ----------------------------
DROP TABLE IF EXISTS `qs_jobs_search_key`;
CREATE TABLE `qs_jobs_search_key` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `stick` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `emergency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `nature` int(10) unsigned NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `topclass` smallint(5) unsigned NOT NULL,
  `category` smallint(5) unsigned NOT NULL,
  `subclass` smallint(5) unsigned NOT NULL,
  `trade` smallint(5) unsigned NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `tdistrict` smallint(5) unsigned NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `minwage` int(10) unsigned NOT NULL,
  `maxwage` int(10) unsigned NOT NULL,
  `scale` smallint(5) unsigned NOT NULL DEFAULT '0',
  `click` int(10) unsigned NOT NULL,
  `map_x` double(9,6) NOT NULL,
  `map_y` double(9,6) NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `stime` int(10) NOT NULL,
  `key` text NOT NULL,
  `setmeal_id` smallint(5) unsigned NOT NULL,
  `license` tinyint(1) NOT NULL,
  `famous` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `refreshtime` (`refreshtime`),
  KEY `stime` (`stime`),
  FULLTEXT KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_jobs_search_key
-- ----------------------------

-- ----------------------------
-- Table structure for qs_jobs_tag
-- ----------------------------
DROP TABLE IF EXISTS `qs_jobs_tag`;
CREATE TABLE `qs_jobs_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `tag` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_jobs_tag
-- ----------------------------

-- ----------------------------
-- Table structure for qs_jobs_tmp
-- ----------------------------
DROP TABLE IF EXISTS `qs_jobs_tmp`;
CREATE TABLE `qs_jobs_tmp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `jobs_name` varchar(50) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `company_addtime` int(10) unsigned NOT NULL,
  `company_audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `emergency` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `stick` tinyint(1) NOT NULL,
  `nature` int(10) unsigned NOT NULL,
  `nature_cn` varchar(30) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `sex_cn` varchar(3) NOT NULL,
  `age` varchar(10) NOT NULL,
  `amount` smallint(5) unsigned NOT NULL,
  `topclass` smallint(5) unsigned NOT NULL,
  `category` smallint(5) unsigned NOT NULL,
  `subclass` smallint(5) unsigned NOT NULL,
  `category_cn` varchar(100) NOT NULL DEFAULT '',
  `trade` smallint(5) unsigned NOT NULL,
  `trade_cn` varchar(30) NOT NULL,
  `scale` smallint(5) unsigned NOT NULL,
  `scale_cn` varchar(30) NOT NULL,
  `district` smallint(5) unsigned NOT NULL,
  `sdistrict` smallint(5) unsigned NOT NULL,
  `tdistrict` smallint(5) unsigned NOT NULL,
  `district_cn` varchar(100) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `tag_cn` varchar(100) NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `education_cn` varchar(30) NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `experience_cn` varchar(30) NOT NULL,
  `minwage` int(10) NOT NULL,
  `maxwage` int(10) NOT NULL,
  `negotiable` tinyint(1) unsigned NOT NULL,
  `contents` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `deadline` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `stime` int(10) NOT NULL,
  `setmeal_deadline` int(10) unsigned NOT NULL DEFAULT '0',
  `setmeal_id` smallint(5) unsigned NOT NULL,
  `setmeal_name` varchar(60) NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `key` text NOT NULL,
  `user_status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `robot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tpl` varchar(60) NOT NULL,
  `map_x` decimal(9,6) NOT NULL,
  `map_y` decimal(9,6) NOT NULL,
  `map_zoom` tinyint(3) unsigned NOT NULL,
  `add_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_entrust` tinyint(1) NOT NULL DEFAULT '0',
  `department` varchar(60) NOT NULL,
  `famous` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `company_id` (`company_id`),
  KEY `audit_id` (`audit`,`id`),
  KEY `audit_deadline` (`audit`,`deadline`),
  KEY `audit_addtime` (`audit`,`addtime`),
  KEY `audit_refreshtime` (`audit`,`refreshtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_jobs_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for qs_link
-- ----------------------------
DROP TABLE IF EXISTS `qs_link`;
CREATE TABLE `qs_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `alias` varchar(30) NOT NULL,
  `link_name` varchar(255) NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `link_logo` varchar(255) NOT NULL,
  `show_order` smallint(5) unsigned NOT NULL DEFAULT '50',
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`link_id`),
  KEY `show_order` (`show_order`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_link
-- ----------------------------
INSERT INTO `qs_link` VALUES ('1', '1', 'QS_index', 'Mr jobscms官方站', 'http://www.jobs.kalichimall.com', 'Mr jobs.gif', '999', '官网链');
INSERT INTO `qs_link` VALUES ('2', '1', 'QS_index', 'Mr jobs猎头', 'http://www.74lietou.com/', '74lietou.gif', '777', '');
INSERT INTO `qs_link` VALUES ('3', '1', 'QS_index', '麒云GTD', 'http://www.7yun.com', '7yun.gif', '888', '');
INSERT INTO `qs_link` VALUES ('4', '1', 'QS_index', '论坛', 'http://www.jobs.kalichimall.com/bbs/forum.php', 'bbs.jpg', '666', '用户社区');

-- ----------------------------
-- Table structure for qs_link_category
-- ----------------------------
DROP TABLE IF EXISTS `qs_link_category`;
CREATE TABLE `qs_link_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(80) NOT NULL,
  `c_sys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `c_alias` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_link_category
-- ----------------------------
INSERT INTO `qs_link_category` VALUES ('1', '网站首页', '1', 'QS_index');

-- ----------------------------
-- Table structure for qs_mailconfig
-- ----------------------------
DROP TABLE IF EXISTS `qs_mailconfig`;
CREATE TABLE `qs_mailconfig` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_mailconfig
-- ----------------------------
INSERT INTO `qs_mailconfig` VALUES ('1', 'method', '1');
INSERT INTO `qs_mailconfig` VALUES ('2', 'smtpservers', '');
INSERT INTO `qs_mailconfig` VALUES ('3', 'smtpusername', '');
INSERT INTO `qs_mailconfig` VALUES ('4', 'smtppassword', '');
INSERT INTO `qs_mailconfig` VALUES ('5', 'smtpfrom', '');
INSERT INTO `qs_mailconfig` VALUES ('6', 'smtpport', '25');
INSERT INTO `qs_mailconfig` VALUES ('7', 'set_reg', '0');
INSERT INTO `qs_mailconfig` VALUES ('8', 'set_applyjobs', '0');
INSERT INTO `qs_mailconfig` VALUES ('9', 'set_invite', '0');
INSERT INTO `qs_mailconfig` VALUES ('10', 'set_order', '0');
INSERT INTO `qs_mailconfig` VALUES ('11', 'set_payment', '0');
INSERT INTO `qs_mailconfig` VALUES ('12', 'set_editpwd', '0');
INSERT INTO `qs_mailconfig` VALUES ('13', 'set_jobsallow', '0');
INSERT INTO `qs_mailconfig` VALUES ('14', 'set_jobsnotallow', '0');
INSERT INTO `qs_mailconfig` VALUES ('15', 'set_licenseallow', '0');
INSERT INTO `qs_mailconfig` VALUES ('16', 'set_licensenotallow', '0');
INSERT INTO `qs_mailconfig` VALUES ('17', 'set_addmap', '1');
INSERT INTO `qs_mailconfig` VALUES ('18', 'set_resumeallow', '0');
INSERT INTO `qs_mailconfig` VALUES ('19', 'set_resumenotallow', '0');
INSERT INTO `qs_mailconfig` VALUES ('20', 'set_teaallow', '0');
INSERT INTO `qs_mailconfig` VALUES ('21', 'set_teanotallow', '1');
INSERT INTO `qs_mailconfig` VALUES ('22', 'set_couallow', '0');
INSERT INTO `qs_mailconfig` VALUES ('23', 'set_counotallow', '1');
INSERT INTO `qs_mailconfig` VALUES ('24', 'set_applycou', '0');
INSERT INTO `qs_mailconfig` VALUES ('25', 'set_downapp', '1');
INSERT INTO `qs_mailconfig` VALUES ('26', 'set_hunallow', '0');
INSERT INTO `qs_mailconfig` VALUES ('27', 'set_hunnotallow', '1');
INSERT INTO `qs_mailconfig` VALUES ('28', 'set_hunjobsallow', '0');
INSERT INTO `qs_mailconfig` VALUES ('29', 'set_hunjobsnotallow', '1');
INSERT INTO `qs_mailconfig` VALUES ('30', 'set_resume_photoallow', '0');
INSERT INTO `qs_mailconfig` VALUES ('31', 'set_resume_photonotallow', '0');

-- ----------------------------
-- Table structure for qs_mailqueue
-- ----------------------------
DROP TABLE IF EXISTS `qs_mailqueue`;
CREATE TABLE `qs_mailqueue` (
  `m_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m_addtime` int(10) unsigned NOT NULL,
  `m_sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  `m_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `m_mail` varchar(80) NOT NULL,
  `m_subject` varchar(200) NOT NULL,
  `m_body` text NOT NULL,
  PRIMARY KEY (`m_id`),
  KEY `m_uid` (`m_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_mailqueue
-- ----------------------------

-- ----------------------------
-- Table structure for qs_mail_templates
-- ----------------------------
DROP TABLE IF EXISTS `qs_mail_templates`;
CREATE TABLE `qs_mail_templates` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` text NOT NULL,
  `value` text NOT NULL,
  `variate` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_mail_templates
-- ----------------------------
INSERT INTO `qs_mail_templates` VALUES ('1', 'set_reg', '注册会员', '恭喜你成为{sitename}的{utype}会员', '恭喜你成为&lt;strong&gt;&lt;a href=&quot;{sitedomain}&quot; target=&quot;_blank&quot;&gt;{sitename}&lt;/a&gt;&lt;/strong&gt;的{utype}会员&lt;br /&gt;\r\n你的用户名是：&lt;strong&gt;{username}&lt;/strong&gt;&lt;br /&gt;\r\n你的密码是：&lt;strong&gt;{password}&lt;/strong&gt;&lt;br /&gt;\r\n此邮件由系统自动发出，请勿回复！&lt;br /&gt;', 'a:3:{s:10:\"{username}\";s:9:\"用户名\";s:10:\"{password}\";s:6:\"密码\";s:7:\"{utype}\";s:12:\"会员类型\";}', '1');
INSERT INTO `qs_mail_templates` VALUES ('2', 'set_applyjobs', '申请职位', '{personalfullname}申请了您发布的职位:{jobsname}', '应聘职位{jobsname}，请通过简历中的电话或邮件联系我（请勿直接回复邮件）。', 'a:2:{s:18:\"{personalfullname}\";s:9:\"申请人\";s:10:\"{jobsname}\";s:18:\"申请职位名称\";}', '1');
INSERT INTO `qs_mail_templates` VALUES ('3', 'set_invite', '邀请面试', '{companyname}邀请你参加面试', '亲爱的会员：<br />\r\n<strong>{companyname}</strong>  对你发起了面试邀请<br />\r\n请登录<a href=\"{sitedomain}\" target=\"_blank\">会员中心</a>详细查看。<br />\r\n此信息由系统自动发送，请勿回复！', 'a:1:{s:13:\"{companyname}\";s:23:\"邀请方(公司名称)\";}', '1');
INSERT INTO `qs_mail_templates` VALUES ('4', 'set_order', '新增订单', '充值订单添加成功', '亲爱的会员：<br />\r\n你的订单已添加成功，请及时付款，订单号：{oid}，付款方式为：{paymenttpye}，应付金额为：{amount} 元。<br />\r\n付款后系统将为您自动开通相关服务。<br />\r\n请登录<a href=\"{sitedomain}\" target=\"_blank\">会员中心</a>详细查看。<br />\r\n此信息由系统自动发送，请勿回复！', 'a:3:{s:13:\"{companyname}\";s:12:\"付款方式\";s:8:\"{amount}\";s:6:\"金额\";s:5:\"{oid}\";s:9:\"订单号\";}', '1');
INSERT INTO `qs_mail_templates` VALUES ('5', 'set_payment', '付款成功', '充值成功，系统已为您开通服务！', '亲爱的会员：<br />\r\n你已经付款成功，系统已为您开通服务。<br />\r\n请登录<a href=\"{sitedomain}\" target=\"_blank\">会员中心</a>详细查看。<br />\r\n此信息由系统自动发送，请勿回复！', '', '1');
INSERT INTO `qs_mail_templates` VALUES ('6', 'set_editpwd', '修改密码', '密码修改成功！', '亲爱的会员：<br />\r\n你已经成功修改密码，新密码为：{newpassword}。<br />\r\n此信息由系统自动发送，请勿回复！', 'a:1:{s:13:\"{newpassword}\";s:12:\"付款方式\";}', '1');
INSERT INTO `qs_mail_templates` VALUES ('7', 'set_jobsallow', '职位审核通过', '恭喜，您发布的职位({jobsname})已经通过审核！', '亲爱的会员：<br />\r\n恭喜，你发布的职位({jobsname})已经通过审核！<br />\r\n请登录<a href=\"{sitedomain}\" target=\"_blank\">会员中心</a>详细查看。<br />\r\n此信息由系统自动发送，请勿回复！', 'a:1:{s:10:\"{jobsname}\";s:12:\"职位名称\";}', '1');
INSERT INTO `qs_mail_templates` VALUES ('8', 'set_jobsnotallow', '职位审核未通过', '很抱歉，你发布的职位({jobsname})未通过审核！', '亲爱的会员：<br />\r\n很抱歉，你发布的职位({jobsname})未通过审核，请修改后再次提交审核！<br />\r\n请登录<a href=\"{sitedomain}\" target=\"_blank\">会员中心</a>详细查看。<br />\r\n此信息由系统自动发送，请勿回复！', 'a:1:{s:10:\"{jobsname}\";s:12:\"职位名称\";}', '1');
INSERT INTO `qs_mail_templates` VALUES ('9', 'set_licenseallow', '营业执照审核通过', '恭喜，你的企业信息已认证通过！', '亲爱的会员：<br />\r\n恭喜，您的企业资料已认证通过！<br />\r\n请登录<a href=\"{sitedomain}\" target=\"_blank\">会员中心</a>详细查看。<br />\r\n此信息由系统自动发送，请勿回复！', '', '1');
INSERT INTO `qs_mail_templates` VALUES ('10', 'set_licensenotallow', '营业执照审核未通过', '很抱歉，你的企业信息未认证通过！', '亲爱的会员：<br />\r\n很抱歉，你的企业认证未通过，请重新上传营业执照！<br />\r\n请登录<a href=\"{sitedomain}\" target=\"_blank\">会员中心</a>详细查看。<br />\r\n此信息由系统自动发送，请勿回复！', '', '1');
INSERT INTO `qs_mail_templates` VALUES ('11', 'set_resumeallow', '简历审核通过', '恭喜，您的简历已通过审核！', '亲爱的会员：<br />\r\n恭喜，您的简历已通过审核！<br />\r\n请登录<a href=\"{sitedomain}\" target=\"_blank\">会员中心</a>详细查看。<br />\r\n此信息由系统自动发送，请勿回复！', '', '1');
INSERT INTO `qs_mail_templates` VALUES ('12', 'set_resumenotallow', '简历审核未通过', '很抱歉，你的简历未通过审核！', '亲爱的会员：<br />\r\n很抱歉，您的简历未通过审核，请修改后再次提交审核！<br />\r\n请登录<a href=\"{sitedomain}\" target=\"_blank\">会员中心</a>详细查看。<br />\r\n此信息由系统自动发送，请勿回复！', '', '1');
INSERT INTO `qs_mail_templates` VALUES ('13', 'set_auth', '邮箱验证', '{sitename}提醒您，请验证您的Email', '', '', '1');
INSERT INTO `qs_mail_templates` VALUES ('14', 'set_resume_photoallow', '简历头像审核通过', '恭喜，你的简历头像已通过审核', '', '', '1');
INSERT INTO `qs_mail_templates` VALUES ('15', 'set_resume_photonotallow', '简历头像审核未通过', '很抱歉，你的简历头像未通过审核', '', '', '1');

-- ----------------------------
-- Table structure for qs_members
-- ----------------------------
DROP TABLE IF EXISTS `qs_members`;
CREATE TABLE `qs_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `utype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `username` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL,
  `email_audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(11) NOT NULL,
  `mobile_audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `password` varchar(100) NOT NULL DEFAULT '',
  `pwd_hash` varchar(30) NOT NULL,
  `reg_time` int(10) unsigned NOT NULL,
  `reg_ip` varchar(15) NOT NULL,
  `reg_address` varchar(30) NOT NULL,
  `last_login_time` int(10) unsigned NOT NULL,
  `last_login_ip` varchar(15) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `avatars` varchar(255) NOT NULL,
  `robot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `consultant` smallint(5) unsigned NOT NULL,
  `remind_email_time` int(10) unsigned DEFAULT NULL,
  `imei` varchar(50) NOT NULL DEFAULT '',
  `sms_num` int(10) NOT NULL DEFAULT '0',
  `reg_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remind_email_ex_time` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `invitation_code` varchar(8) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_members
-- ----------------------------

-- ----------------------------
-- Table structure for qs_members_appeal
-- ----------------------------
DROP TABLE IF EXISTS `qs_members_appeal`;
CREATE TABLE `qs_members_appeal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `realname` varchar(30) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `description` varchar(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_members_appeal
-- ----------------------------

-- ----------------------------
-- Table structure for qs_members_bind
-- ----------------------------
DROP TABLE IF EXISTS `qs_members_bind`;
CREATE TABLE `qs_members_bind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(60) NOT NULL,
  `keyid` varchar(100) NOT NULL,
  `info` text NOT NULL,
  `bindingtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_type` (`uid`,`type`),
  KEY `type_keyid` (`type`,`keyid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_members_bind
-- ----------------------------

-- ----------------------------
-- Table structure for qs_members_charge_log
-- ----------------------------
DROP TABLE IF EXISTS `qs_members_charge_log`;
CREATE TABLE `qs_members_charge_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_uid` int(10) NOT NULL,
  `log_username` varchar(60) NOT NULL,
  `log_addtime` int(10) NOT NULL,
  `log_value` varchar(255) NOT NULL,
  `log_amount` decimal(10,2) NOT NULL,
  `log_ismoney` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `log_type` tinyint(1) unsigned NOT NULL,
  `log_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `log_utype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`log_id`),
  KEY `log_username` (`log_username`),
  KEY `log_addtime` (`log_addtime`),
  KEY `type_addtime` (`log_type`,`log_addtime`),
  KEY `uid_addtime` (`log_uid`,`log_addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_members_charge_log
-- ----------------------------

-- ----------------------------
-- Table structure for qs_members_handsel
-- ----------------------------
DROP TABLE IF EXISTS `qs_members_handsel`;
CREATE TABLE `qs_members_handsel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `htype` varchar(60) NOT NULL,
  `htype_cn` varchar(30) NOT NULL,
  `operate` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `points` int(10) unsigned NOT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`htype`,`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_members_handsel
-- ----------------------------

-- ----------------------------
-- Table structure for qs_members_info
-- ----------------------------
DROP TABLE IF EXISTS `qs_members_info`;
CREATE TABLE `qs_members_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `realname` varchar(30) NOT NULL,
  `sex` smallint(1) unsigned NOT NULL,
  `sex_cn` varchar(10) NOT NULL,
  `birthday` varchar(30) NOT NULL,
  `residence` varchar(30) NOT NULL DEFAULT '',
  `education` smallint(5) unsigned NOT NULL,
  `education_cn` varchar(30) NOT NULL,
  `major` smallint(5) NOT NULL,
  `major_cn` varchar(50) NOT NULL,
  `experience` smallint(5) unsigned NOT NULL,
  `experience_cn` varchar(30) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  `height` varchar(5) NOT NULL DEFAULT '',
  `householdaddress` varchar(30) NOT NULL DEFAULT '',
  `marriage` smallint(5) unsigned NOT NULL,
  `marriage_cn` varchar(30) NOT NULL,
  `display_name` tinyint(1) NOT NULL DEFAULT '1',
  `photo_audit` tinyint(1) unsigned NOT NULL,
  `photo_display` tinyint(1) NOT NULL DEFAULT '1',
  `qq` varchar(30) NOT NULL,
  `weixin` varchar(30) NOT NULL,
  `resume_num` int(10) NOT NULL,
  `view_resume_num` int(10) NOT NULL,
  `interview_num` int(10) NOT NULL,
  `jobs_num` int(10) NOT NULL,
  `view_jobs_num` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_members_info
-- ----------------------------

-- ----------------------------
-- Table structure for qs_members_log
-- ----------------------------
DROP TABLE IF EXISTS `qs_members_log`;
CREATE TABLE `qs_members_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_uid` int(10) NOT NULL,
  `log_username` varchar(60) NOT NULL,
  `log_addtime` int(10) NOT NULL,
  `log_value` varchar(255) NOT NULL,
  `log_ip` varchar(20) NOT NULL,
  `log_address` varchar(50) NOT NULL,
  `log_utype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `log_type` smallint(5) unsigned NOT NULL DEFAULT '1',
  `log_source` varchar(20) NOT NULL,
  `param_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `log_username` (`log_username`),
  KEY `log_addtime` (`log_addtime`),
  KEY `type_addtime` (`log_type`,`log_addtime`),
  KEY `utype_addtime` (`log_utype`,`log_addtime`),
  KEY `uid_addtime` (`log_uid`,`log_addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_members_log
-- ----------------------------

-- ----------------------------
-- Table structure for qs_members_msgtip
-- ----------------------------
DROP TABLE IF EXISTS `qs_members_msgtip`;
CREATE TABLE `qs_members_msgtip` (
  `uid` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1:系统消息,2：业务流程',
  `update_time` int(10) unsigned NOT NULL,
  `unread` int(10) NOT NULL,
  `num` int(10) NOT NULL,
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_members_msgtip
-- ----------------------------

-- ----------------------------
-- Table structure for qs_members_points
-- ----------------------------
DROP TABLE IF EXISTS `qs_members_points`;
CREATE TABLE `qs_members_points` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_members_points
-- ----------------------------

-- ----------------------------
-- Table structure for qs_members_setmeal
-- ----------------------------
DROP TABLE IF EXISTS `qs_members_setmeal`;
CREATE TABLE `qs_members_setmeal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `expire` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL,
  `setmeal_id` int(10) unsigned NOT NULL,
  `setmeal_name` varchar(200) NOT NULL,
  `days` int(10) unsigned NOT NULL,
  `expense` int(10) unsigned NOT NULL,
  `jobs_meanwhile` int(10) unsigned NOT NULL,
  `refresh_jobs_free` int(10) unsigned NOT NULL,
  `download_resume` int(10) unsigned NOT NULL,
  `download_resume_max` int(10) unsigned NOT NULL,
  `added` varchar(250) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `setmeal_img` varchar(50) NOT NULL,
  `show_apply_contact` tinyint(1) unsigned NOT NULL,
  `is_free` tinyint(1) unsigned NOT NULL,
  `discount_download_resume` double(2,1) unsigned NOT NULL,
  `discount_sms` double(2,1) unsigned NOT NULL,
  `discount_stick` double(2,1) unsigned NOT NULL,
  `discount_emergency` double(2,1) unsigned NOT NULL,
  `discount_tpl` double(2,1) unsigned NOT NULL,
  `discount_auto_refresh_jobs` double(2,1) unsigned NOT NULL,
  `show_contact_direct` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `effective_setmealid` (`expire`,`setmeal_id`),
  KEY `effective_endtime` (`expire`,`endtime`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_members_setmeal
-- ----------------------------

-- ----------------------------
-- Table structure for qs_members_setmeal_log
-- ----------------------------
DROP TABLE IF EXISTS `qs_members_setmeal_log`;
CREATE TABLE `qs_members_setmeal_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_uid` int(10) NOT NULL,
  `log_username` varchar(60) NOT NULL,
  `log_addtime` int(10) NOT NULL,
  `log_value` varchar(255) NOT NULL,
  `log_ip` varchar(20) NOT NULL,
  `log_address` varchar(50) NOT NULL,
  `log_utype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `log_leave` smallint(5) unsigned NOT NULL DEFAULT '1',
  `log_source` varchar(20) NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_username` (`log_username`),
  KEY `log_addtime` (`log_addtime`),
  KEY `utype_addtime` (`log_utype`,`log_addtime`),
  KEY `uid_addtime` (`log_uid`,`log_addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_members_setmeal_log
-- ----------------------------

-- ----------------------------
-- Table structure for qs_menu
-- ----------------------------
DROP TABLE IF EXISTS `qs_menu`;
CREATE TABLE `qs_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引ID',
  `name` varchar(20) NOT NULL COMMENT '菜单各称',
  `pid` int(10) unsigned NOT NULL COMMENT '菜单父索引ID',
  `spid` varchar(50) NOT NULL,
  `log_cn` varchar(30) NOT NULL,
  `module_name` varchar(30) NOT NULL COMMENT '模块',
  `controller_name` varchar(30) NOT NULL COMMENT '控制器',
  `action_name` varchar(30) NOT NULL COMMENT '方法',
  `menu_type` tinyint(1) NOT NULL COMMENT '类型(0:按钮或功能1:导航)',
  `is_parent` tinyint(1) unsigned NOT NULL COMMENT '是否有子菜单列表',
  `data` varchar(100) NOT NULL COMMENT '附加参数',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `often` tinyint(1) unsigned NOT NULL,
  `ordid` int(10) unsigned NOT NULL COMMENT '排序',
  `display` tinyint(1) unsigned NOT NULL COMMENT '是否激活',
  `stat` varchar(20) NOT NULL,
  `sys_set` tinyint(1) unsigned NOT NULL COMMENT '是否系统设置',
  `mods` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=736 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_menu
-- ----------------------------
INSERT INTO `qs_menu` VALUES ('1', '系统', '0', '1|', '', 'Admin', 'Config', 'index', '1', '1', '', '', '0', '9', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('2', '系统菜单', '1', '1|2|', '', 'Admin', 'Menu', 'index', '1', '1', '', '', '1', '3', '1', '', '1', '1');
INSERT INTO `qs_menu` VALUES ('3', '新增', '2', '1|2|3|', '添加菜单(id:%s)', 'Admin', 'Menu', 'add', '0', '0', '', '', '0', '1', '1', '', '1', '1');
INSERT INTO `qs_menu` VALUES ('4', '编辑菜单', '2', '1|2|4|', '修改菜单(id:%s)', 'Admin', 'Menu', 'edit', '0', '0', '', '', '0', '0', '1', '', '1', '1');
INSERT INTO `qs_menu` VALUES ('5', '删除菜单', '2', '1|2|5|', '删除菜单(id:%s)', 'Admin', 'Menu', 'delete', '0', '0', '', '', '0', '0', '1', '', '1', '1');
INSERT INTO `qs_menu` VALUES ('6', '网站配置', '1', '1|6|', '', 'Admin', 'Config', 'index', '1', '1', '', '', '0', '1', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('7', '网站管理员', '1', '1|7|', '', 'Admin', 'Admin', 'index', '1', '1', '', '', '0', '2', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('8', '管理员列表', '7', '1|7|8|', '', 'Admin', 'Admin', 'index', '1', '1', '', '', '0', '1', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('9', '添加管理员', '7', '1|7|9|', '添加管理员(id:%s)', 'Admin', 'Admin', 'add', '1', '0', '', '', '0', '2', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('10', '角色管理', '7', '1|7|10|', '', 'Admin', 'AdminRole', 'index', '1', '1', '', '', '0', '3', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('11', '添加管理员', '7', '1|7|11|', '添加管理员(id:%s)', 'Admin', 'Admin', 'add', '0', '0', '', '', '0', '4', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('12', '网站配置', '6', '1|6|12|', '', 'Admin', 'Config', 'index', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('13', '注册设置', '6', '1|6|13|', '修改注册设置', 'Admin', 'Config', 'reg', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('14', '电子地图', '6', '1|6|14|', '修改电子地图设置', 'Admin', 'Config', 'map', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('15', '工具', '0', '15|', '', 'Admin', 'Database', 'index', '1', '1', '', '', '0', '7', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('16', '数据库', '15', '15|16|', '', 'Admin', 'Database', 'index', '1', '1', '', '', '0', '6', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('17', '备份', '16', '15|16|17|', '', 'Admin', 'Database', 'index', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('18', '恢复', '16', '15|16|18|', '', 'Admin', 'Database', 'restore', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('19', '备份', '16', '15|16|19|', '备份数据库(%s)', 'Admin', 'Database', 'doBackup', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('20', '恢复', '16', '15|16|20|', '还原数据库(%s)', 'Admin', 'Database', 'import', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('21', '删除备份', '16', '15|16|21|', '删除数据库备份(%s)', 'Admin', 'Database', 'del', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('22', '优化', '16', '15|16|22|', '', 'Admin', 'Database', 'optimize', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('23', '优化', '16', '15|16|23|', '优化数据表', 'Admin', 'Database', 'doOptimize', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('24', '分类管理', '1', '1|24|', '', 'Admin', 'CategoryDistrict', 'index', '1', '1', '', '', '0', '4', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('25', '安全设置', '1', '1|25|', '修改极验配置', 'Admin', 'Safety', 'index', '1', '1', '&type=captcha', '', '0', '1', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('26', '邮件设置', '1', '1|26|', '修改邮件配置', 'Admin', 'Mailconfig', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('28', '短信设置', '1', '1|28|', '修改短信配置', 'Admin', 'Sms', 'config_edit', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('413', '积分配置', '6', '1|6|413|', '', 'Admin', 'Config', 'config_points', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('29', '配置', '28', '1|28|29|', '修改短信配置', 'Admin', 'Sms', 'config_edit', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('30', '服务商接入', '28', '1|28|30|', '', 'Admin', 'Sms', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('31', '验证码', '25', '1|25|31|', '修改极验配置', 'Admin', 'Safety', 'index', '1', '0', '&type=captcha', '', '0', '1', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('32', '禁止IP', '25', '1|25|32|', '修改IP过滤配置', 'Admin', 'Safety', 'ip_filter', '1', '0', '&type=ipFilter', '', '0', '1', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('34', '关键词过滤', '25', '1|25|34|', '', 'Admin', 'Safety', 'badword_index', '1', '0', '', '', '0', '1', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('35', '添加关键词', '34', '1|25|34|35|', '添加敏感关键词(id:%s)', 'Admin', 'Safety', 'badword_add', '0', '0', '&amp;type=badwordAdd', '', '0', '1', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('36', '编辑关键词', '34', '1|25|34|36|', '修改敏感关键词(id:%s)', 'Admin', 'Safety', 'badword_edit', '0', '0', '', '', '0', '1', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('37', '删除关键词', '34', '1|25|34|37|', '删除敏感关键词(id:%s)', 'Admin', 'Safety', 'badword_delete', '0', '0', '', '', '0', '1', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('409', '审核/认证', '248', '171|248|409|', '', 'Admin', 'SetPer', 'set_audit', '1', '0', '', '', '0', '2', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('39', '热门关键字', '1', '1|39|', '', 'Admin', 'Hotword', 'index', '1', '0', '', '', '0', '1', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('40', '添加热门关键词', '39', '1|39|40|', '添加热门关键词(id:%s)', 'Admin', 'Hotword', 'add', '0', '0', '', '', '0', '1', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('41', '编辑热门关键词', '39', '1|39|41|', '修改热门关键词(id:%s)', 'Admin', 'Hotword', 'edit', '0', '0', '', '', '0', '1', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('42', '删除热门关键词', '39', '1|39|42|', '删除热门关键词(id:%s)', 'Admin', 'Hotword', 'delete', '0', '0', '', '', '0', '1', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('43', '角色编辑', '10', '1|7|10|43|', '角色编辑(id:%s)', 'Admin', 'AdminRole', 'edit', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('562', '删除', '490', '171|179|187|490|562|', '', 'Admin', 'Personal', 'user_interview_delete', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('561', '导出信息', '345', '15|339|345|561|', '', 'Admin', 'SmsQueue', 'export_info', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('560', '导入号码', '343', '15|339|343|560|', '', 'Admin', 'SmsQueue', 'import_num', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('693', '升级授权', '350', '1|350|693|', '', 'Admin', 'Apply', 'updater_auth', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('559', '获取简历列表', '519', '171|179|187|489|519|559|', '', 'Admin', 'Personal', 'ajax_get_resume', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('50', '支付方式', '15', '15|50|', '', 'Admin', 'Payment', 'index', '1', '1', '', '', '0', '5', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('51', '编辑支付方式', '50', '15|50|51|', '编辑支付方式(id:%s)', 'Admin', 'Payment', 'edit', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('52', '卸载支付方式', '50', '15|50|52|', '卸载支付方式(id:%s)', 'Admin', 'Payment', 'uninstall', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('53', '安装支付方式', '50', '15|50|53|', '安装支付方式(id:%s)', 'Admin', 'Payment', 'install', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('57', '测试', '28', '1|28|57|', '发送测试短信', 'Admin', 'Sms', 'testing', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('58', '发送规则', '28', '1|28|58|', '修改短信发送规则', 'Admin', 'Sms', 'rule', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('61', '编辑', '30', '1|28|30|61|', '修改短信服务商接入配置', 'Admin', 'Sms', 'edit', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('62', '授权', '10', '1|7|10|62|', '', 'Admin', 'AdminRole', 'auth', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('63', '计划任务', '15', '15|63|', '', 'Admin', 'Crons', 'index', '1', '1', '', '', '0', '4', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('64', '第三方账号登录', '15', '15|64|', '', 'Admin', 'Oauth', 'index', '1', '1', '', '', '0', '3', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('65', 'QQ账号登录', '64', '15|64|65|', '', 'Admin', 'Oauth', 'index', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('69', '模板配置', '30', '1|28|30|69|', '', 'Admin', 'Sms', 'tpl', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('66', '新浪微博登录', '64', '15|64|66|', '', 'Admin', 'Oauth', 'sina', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('67', '淘宝账号登录', '64', '15|64|67|', '', 'Admin', 'Oauth', 'taobao', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('68', '执行计划任务', '63', '15|63|68|', '执行计划任务(id:%s)', 'Admin', 'Crons', 'execution', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('70', '添加计划任务', '63', '15|63|70|', '添加计划任务(id:%s)', 'Admin', 'Crons', 'add', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('71', '编辑计划任务', '63', '15|63|71|', '编辑计划任务(id:%s)', 'Admin', 'Crons', 'edit', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('72', '删除计划任务', '63', '15|63|72|', '删除计划任务(id:%s)', 'Admin', 'Crons', 'delete', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('333', '批量发送', '326', '15|326|333|', '批量发送邮件', 'Admin', 'MailQueue', 'totalsend', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('332', '更新模板', '324', '15|320|324|332|', '更新模板', 'Admin', 'Tp', 'refresh_tpl', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('326', '邮件营销', '15', '15|326|', '', 'Admin', 'MailQueue', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('85', '安装', '30', '1|28|30|85|', '安装短信服务商(id:%s)', 'Admin', 'Sms', 'setup', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('86', '卸载', '30', '1|28|30|86|', '卸载短信服务商(id:%s)', 'Admin', 'Sms', 'unload', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('89', '编辑', '69', '1|28|30|69|89|', '编辑短信服务商(id:%s)', 'Admin', 'SmsOauth', 'edit', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('90', '配置', '26', '1|26|90|', '修改邮件配置', 'Admin', 'Mailconfig', 'index', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('91', '测试', '26', '1|26|91|', '发送测试邮件', 'Admin', 'Mailconfig', 'testing', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('92', '发送规则', '26', '1|26|92|', '修改邮件发送规则', 'Admin', 'Mailconfig', 'rule', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('93', '邮件模板', '26', '1|26|93|', '', 'Admin', 'MailTemplates', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('94', '邮件日志', '26', '1|26|94|', '', 'Admin', 'SysEmailLog', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('95', '消息', '112', '112|95|', '', 'Admin', 'Pms', 'index', '1', '1', '', '', '0', '3', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('96', '添加消息', '95', '112|95|96|', '添加消息(id:%s)', 'Admin', 'Pms', 'add', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('97', '修改消息', '95', '112|95|97|', '修改消息(id:%s)', 'Admin', 'Pms', 'edit', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('98', '删除消息', '95', '112|95|98|', '删除消息(id:%s)', 'Admin', 'Pms', 'delete', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('99', '编辑', '93', '1|26|93|99|', '编辑短信模板(id:%s)', 'Admin', 'MailTemplates', 'edit', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('692', '升级', '350', '1|350|692|', '', 'Admin', 'Apply', 'updater', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('104', '会员日志', '1', '1|104|', '', 'Admin', 'MembersLog', 'index', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('322', '风格模板', '320', '15|320|322|', '', 'Admin', 'Tpl', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('110', '系统错误日志', '1', '1|110|', '', 'Admin', 'Syslog', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('112', '内容', '0', '112|', '', 'Admin', 'Article', 'index', '1', '1', '', '', '0', '3', '1', 'content', '1', '0');
INSERT INTO `qs_menu` VALUES ('114', '新闻资讯', '112', '112|114|', '', 'Admin', 'Article', 'index', '1', '1', '', '', '0', '3', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('115', '说明页', '112', '112|115|', '', 'Admin', 'Explain', 'index', '1', '1', '', '', '0', '2', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('116', '公告管理', '112', '112|116|', '', 'Admin', 'Notice', 'index', '1', '1', '', '', '0', '1', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('117', 'HR工具箱', '112', '112|117|', '', 'Admin', 'Hrtools', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('118', '帮助中心', '112', '112|118|', '', 'Admin', 'Help', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('119', '举报信息', '112', '112|119|', '', 'Admin', 'Report', 'index', '1', '1', '', '', '0', '255', '1', 'report', '1', '0');
INSERT INTO `qs_menu` VALUES ('120', '意见与建议', '112', '112|120|', '', 'Admin', 'Feedback', 'index', '1', '1', '', '', '0', '255', '1', 'feedback', '1', '0');
INSERT INTO `qs_menu` VALUES ('121', '百度链接提交', '15', '15|121|', '', 'Admin', 'BaiduSubmiturl', 'index', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('122', '新闻列表', '114', '112|114|122|', '', 'Admin', 'Article', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('123', '添加新闻', '114', '112|114|123|', '添加新闻(id:%s)', 'Admin', 'Article', 'add', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('124', '新闻分类', '114', '112|114|124|', '', 'Admin', 'ArticleCategory', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('125', '新闻属性', '114', '112|114|125|', '', 'Admin', 'Article', 'property', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('126', '修改', '122', '112|114|122|126|', '修改新闻(id:%s)', 'Admin', 'Article', 'edit', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('127', '添加', '124', '112|114|124|127|', '添加新闻分类(id:%s)', 'Admin', 'ArticleCategory', 'add', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('128', '修改', '124', '112|114|124|128|', '修改新闻分类(id:%s)', 'Admin', 'ArticleCategory', 'edit', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('129', '删除', '124', '112|114|124|129|', '删除新闻分类(id:%s)', 'Admin', 'ArticleCategory', 'delete', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('130', '删除', '122', '112|114|122|130|', '删除新闻(id:%s)', 'Admin', 'Article', 'delete', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('538', '修改广告', '275', '112|267|275|538|', '', 'Admin', 'Ad', 'edit', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('132', '添加', '125', '112|114|125|132|', '添加新闻属性(id:%s)', 'Admin', 'Article', 'add_property', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('133', '修改', '125', '112|114|125|133|', '修改新闻属性(id:%s)', 'Admin', 'Article', 'edit_property', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('134', '删除', '125', '112|114|125|134|', '删除新闻属性(id:%s)', 'Admin', 'Article', 'del_property', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('135', '说明页列表', '115', '112|115|135|', '', 'Admin', 'Explain', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('136', '添加', '115', '112|115|136|', '添加说明页(id:%s)', 'Admin', 'Explain', 'add', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('137', '分类', '115', '112|115|137|', '', 'Admin', 'Explain', 'category', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('141', '添加分类', '137', '112|115|137|141|', '添加说明页分类(id:%s)', 'Admin', 'Explain', 'add_category', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('139', '修改', '135', '112|115|135|139|', '修改说明页(id:%s)', 'Admin', 'Explain', 'edit', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('140', '删除', '135', '112|115|135|140|', '删除说明页(id:%s)', 'Admin', 'Explain', 'delete', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('142', '修改', '137', '112|115|137|142|', '修改说明页分类(id:%s)', 'Admin', 'Explain', 'edit_category', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('143', '删除', '137', '112|115|137|143|', '删除说明页分类(id:%s)', 'Admin', 'Explain', 'del_category', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('144', '公告列表', '116', '112|116|144|', '', 'Admin', 'Notice', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('145', '添加公告', '116', '112|116|145|', '添加公告(id:%s)', 'Admin', 'Notice', 'add', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('146', '公告分类', '116', '112|116|146|', '', 'Admin', 'Notice', 'category', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('147', '修改', '144', '112|116|144|147|', '修改公告(id:%s)', 'Admin', 'Notice', 'edit', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('148', '删除', '144', '112|116|144|148|', '删除公告(id:%s)', 'Admin', 'Notice', 'delete', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('149', '添加分类', '146', '112|116|146|149|', '添加公告分类(id:%s)', 'Admin', 'Notice', 'add_category', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('150', '修改', '146', '112|116|146|150|', '修改公告分类(id:%s)', 'Admin', 'Notice', 'edit_category', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('151', '删除', '146', '112|116|146|151|', '删除公告分类(id:%s)', 'Admin', 'Notice', 'del_category', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('152', '列表', '117', '112|117|152|', '', 'Admin', 'Hrtools', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('153', '添加', '117', '112|117|153|', '添加hr工具箱(id:%s)', 'Admin', 'Hrtools', 'add', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('154', '分类', '117', '112|117|154|', '', 'Admin', 'Hrtools', 'category', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('155', '修改', '152', '112|117|152|155|', '修改hr工具箱(id:%s)', 'Admin', 'Hrtools', 'edit', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('156', '删除', '152', '112|117|152|156|', '删除hr工具箱(id:%s)', 'Admin', 'Hrtools', 'delete', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('157', '添加分类', '154', '112|117|154|157|', '添加hr工具箱分类(id:%s)', 'Admin', 'Hrtools', 'add_category', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('158', '修改', '154', '112|117|154|158|', '修改hr工具箱分类(id:%s)', 'Admin', 'Hrtools', 'edit_category', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('159', '删除', '154', '112|117|154|159|', '删除hr工具箱分类(id:%s)', 'Admin', 'Hrtools', 'del_category', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('160', '帮助列表', '118', '112|118|160|', '', 'Admin', 'Help', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('161', '添加', '118', '112|118|161|', '添加帮助(id:%s)', 'Admin', 'Help', 'add', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('162', '帮助分类', '118', '112|118|162|', '', 'Admin', 'HelpCategory', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('163', '修改', '160', '112|118|160|163|', '修改帮助(id:%s)', 'Admin', 'Help', 'edit', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('164', '删除', '160', '112|118|160|164|', '删除帮助(id:%s)', 'Admin', 'Help', 'delete', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('165', '添加分类', '162', '112|118|162|165|', '添加帮助分类(id:%s)', 'Admin', 'HelpCategory', 'add', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('166', '修改', '162', '112|118|162|166|', '修改帮助分类(id:%s)', 'Admin', 'HelpCategory', 'edit', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('167', '删除', '162', '112|118|162|167|', '删除帮助分类(id:%s)', 'Admin', 'HelpCategory', 'delete', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('168', '删除', '119', '112|119|168|', '删除举报(id:%s)', 'Admin', 'Report', 'delete', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('169', '审核', '119', '112|119|169|', '审核举报(id:%s)', 'Admin', 'Report', 'report_audit', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('170', '删除', '120', '112|120|170|', '删除意见建议(id:%s)', 'Admin', 'Feedback', 'delete', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('171', '个人', '0', '171|', '', 'Admin', 'Personal', 'index', '1', '1', '', '', '0', '2', '1', 'personal', '1', '0');
INSERT INTO `qs_menu` VALUES ('172', '简历列表', '171', '171|172|', '', 'Admin', 'Personal', 'index', '1', '1', '', '', '0', '1', '1', 'resume', '1', '0');
INSERT INTO `qs_menu` VALUES ('517', '取消订单', '176', '171|176|517|', '', 'Admin', 'Order', 'order_cancel_per', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('250', '任务', '248', '171|248|250|', '修改个人任务设置', 'Admin', 'SetPer', 'config_task', '1', '0', '', '', '0', '4', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('176', '订单管理', '171', '171|176|', '', 'Admin', 'Order', 'index_per', '1', '1', '', '', '0', '6', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('253', '微信公众平台', '1', '1|253|', '', 'Admin', 'Weixin', 'index', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('516', '设置订单', '488', '171|179|187|488|516|', '', 'Admin', 'Order', 'order_set_per', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('179', '个人会员', '171', '171|179|', '', 'Admin', 'Personal', 'member_list', '1', '1', '', '', '0', '5', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('180', '审核简历', '172', '171|172|180|', '审核简历(id:%s)', 'Admin', 'Personal', 'set_audit', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('183', '刷新简历', '172', '171|172|183|', '刷新简历(id:%s)', 'Admin', 'Personal', 'refresh', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('184', '删除简历', '172', '171|172|184|', '删除简历(id:%s)', 'Admin', 'Personal', 'resume_delete', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('185', '删除会员', '179', '171|179|185|', '删除会员(id:%s)', 'Admin', 'Personal', 'member_delete', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('186', '添加会员', '179', '171|179|186|', '添加会员(id:%s)', 'Admin', 'Personal', 'member_add', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('187', '编辑个人会员', '179', '171|179|187|', '修改会员(id:%s)', 'Admin', 'Personal', 'member_edit', '0', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('556', '删除简历', '485', '171|179|187|485|556|', '', 'Admin', 'Personal', 'resume_delete', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('189', '加载会员详情', '171', '171|189|', '', 'Admin', 'Personal', 'ajax_get_user_info', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('190', '加载委托详情', '171', '171|190|', '', 'Admin', 'Personal', 'ajax_get_entrust_inf', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('191', '管理会员中心', '171', '171|191|', '', 'Admin', 'Personal', 'management', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('192', '查看简历', '172', '171|172|192|', '', 'Admin', 'Personal', 'resume_show', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('567', '新增', '501', '171|248|501|567|', '', 'Admin', 'Personal', 'increment_stick_add', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('194', '企业', '0', '194|', '', 'Admin', 'Jobs', 'index', '1', '1', '', '', '0', '1', '1', 'company', '1', '0');
INSERT INTO `qs_menu` VALUES ('195', '职位列表', '194', '194|195|', '', 'Admin', 'Jobs', 'index', '1', '1', '', '', '0', '1', '1', 'jobs', '1', '0');
INSERT INTO `qs_menu` VALUES ('513', '查看', '488', '171|179|187|488|513|', '', 'Admin', 'Order', 'order_show_per', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('198', '企业列表', '194', '194|198|', '', 'Admin', 'Company', 'index', '1', '1', '', '', '0', '3', '1', 'company_audit', '1', '0');
INSERT INTO `qs_menu` VALUES ('200', '企业会员', '194', '194|200|', '', 'Admin', 'CompanyMembers', 'index', '1', '1', '', '', '0', '5', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('201', '订单管理', '194', '194|201|', '', 'Admin', 'Order', 'index', '1', '1', '', '', '0', '6', '1', 'company_order', '1', '0');
INSERT INTO `qs_menu` VALUES ('202', '企业推广', '194', '194|202|', '', 'Admin', 'Promotion', 'index', '1', '1', '', '', '0', '7', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('203', '企业风采', '194', '194|203|', '', 'Admin', 'CompanyImg', 'index', '1', '1', '', '', '0', '8', '1', 'company_img', '1', '0');
INSERT INTO `qs_menu` VALUES ('204', '顾问管理', '194', '194|204|', '', 'Admin', 'Consultant', 'index', '1', '1', '', '', '0', '9', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('205', '推广列表', '202', '194|202|205|', '', 'Admin', 'Promotion', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('550', '管理', '194', '194|550|', '', 'Admin', 'Ajax', 'userinfo', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('214', '删除企业', '198', '194|198|214|', '删除企业(id:%s)', 'Admin', 'Company', 'delete_company', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('210', '删除职位', '195', '194|195|210|', '删除职位(id:%s)', 'Admin', 'Jobs', 'delete_jobs', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('211', '审核职位', '195', '194|195|211|', '审核职位(id:%s)', 'Admin', 'Jobs', 'set_audit', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('212', '刷新职位', '195', '194|195|212|', '刷新职位(id:%s)', 'Admin', 'Jobs', 'refresh_jobs', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('215', '认证企业', '198', '194|198|215|', '认证企业(id:%s)', 'Admin', 'Company', 'com_audit', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('216', '刷新企业', '198', '194|198|216|', '刷新企业(id:%s)', 'Admin', 'Company', 'refresh_company', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('218', '查看企业会员中心', '550', '194|550|218|', '', 'Admin', 'Company', 'management', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('219', '修改企业', '198', '194|198|219|', '修改企业基本资料(id:%s)', 'Admin', 'Company', 'edit_company', '0', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('220', '删除企业审核日志', '219', '194|198|219|220|', '删除企业审核日志(id:%s)', 'Admin', 'Company', 'del_auditreason', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('221', '添加企业会员', '200', '194|200|221|', '添加企业会员(id:%s)', 'Admin', 'CompanyMembers', 'add', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('222', '编辑企业会员', '200', '194|200|222|', '修改企业会员(id:%s)', 'Admin', 'CompanyMembers', 'edit', '0', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('554', '审核', '511', '171|511|554|', '', 'Admin', 'ResumeImg', 'set_audit', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('555', '删除', '511', '171|511|555|', '', 'Admin', 'ResumeImg', 'delete', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('224', '积分', '222', '194|200|222|224|', '修改用户积分(id:%s)', 'Admin', 'CompanyMembers', 'user_points_edit', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('225', '套餐', '222', '194|200|222|225|', '修改用户套餐(id:%s)', 'Admin', 'CompanyMembers', 'user_setmeal_edit', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('226', '重新开通用户套餐', '222', '194|200|222|226|', '为用户重新开通套餐(id:%s)', 'Admin', 'CompanyMembers', 'user_setmeal_set', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('227', '删除会员', '200', '194|200|227|', '删除会员(id:%s)', 'Admin', 'CompanyMembers', 'delete', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('228', '添加推广', '205', '194|202|205|228|', '添加职位推广(id:%s)', 'Admin', 'Promotion', 'add', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('229', 'ajax获取职位', '205', '194|202|205|229|', '', 'Admin', 'Promotion', 'ajax_get_jobs', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('230', '取消推广', '205', '194|202|205|230|', '取消职位推广(id:%s)', 'Admin', 'Promotion', 'delete', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('231', '修改推广', '205', '194|202|205|231|', '修改职位推广(id:%s)', 'Admin', 'Promotion', 'edit', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('233', '认证图片', '203', '194|203|233|', '认证企业风采(id:%s)', 'Admin', 'CompanyImg', 'set_audit', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('234', '删除图片', '203', '194|203|234|', '删除企业风采(id:%s)', 'Admin', 'CompanyImg', 'delete', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('235', '添加顾问', '683', '194|204|683|235|', '添加顾问(id:%s)', 'Admin', 'Consultant', 'add', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('236', '管理', '683', '194|204|683|236|', '', 'Admin', 'Consultant', 'manage', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('237', '重置', '683', '194|204|683|237|', '重置顾问(id:%s)', 'Admin', 'Consultant', 'resetting', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('238', '编辑顾问', '683', '194|204|683|238|', '编辑顾问(id:%s)', 'Admin', 'Consultant', 'edit', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('239', '删除顾问', '683', '194|204|683|239|', '删除顾问(id:%s)', 'Admin', 'Consultant', 'delete', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('240', '企业设置', '194', '194|240|', '修改企业设置', 'Admin', 'SetCom', 'index', '1', '1', '', '', '0', '11', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('241', '基本', '240', '194|240|241|', '修改企业设置', 'Admin', 'SetCom', 'index', '1', '1', '', '', '0', '1', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('245', '添加套餐', '244', '194|240|244|245|', '添加企业套餐(id:%s)', 'Admin', 'Setmeal', 'add', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('243', '积分', '240', '194|240|243|', '', 'Admin', 'SetCom', 'set_points', '1', '0', '', '', '0', '3', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('244', '套餐', '240', '194|240|244|', '', 'Admin', 'SetCom', 'set_meal', '1', '0', '', '', '0', '4', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('246', '修改套餐', '244', '194|240|244|246|', '修改企业套餐(id:%s)', 'Admin', 'Setmeal', 'edit', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('247', '删除套餐', '244', '194|240|244|247|', '删除企业套餐(id:%s)', 'Admin', 'Setmeal', 'delete', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('248', '个人设置', '171', '171|248|', '修改个人设置', 'Admin', 'SetPer', 'index', '1', '1', '', '', '0', '9', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('249', '基本', '248', '171|248|249|', '修改个人设置', 'Admin', 'SetPer', 'index', '1', '0', '', '', '0', '1', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('267', '广告管理', '112', '112|267|', '', 'Admin', 'Ad', 'index', '1', '1', '', '', '0', '4', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('269', '友情链接', '112', '112|269|', '', 'Admin', 'Link', 'index', '1', '1', '', '', '0', '5', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('270', '链接列表', '269', '112|269|270|', '', 'Admin', 'Link', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('271', '添加链接', '269', '112|269|271|', '添加友情链接(id:%s)', 'Admin', 'Link', 'add', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('272', '链接分类', '269', '112|269|272|', '', 'Admin', 'Link', 'category', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('403', '手机触屏端', '251', '403|', '', 'Mobile', 'Admin', 'index', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('274', '任务', '240', '194|240|274|', '', 'Admin', 'SetCom', 'set_task', '1', '0', '', '', '0', '5', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('275', '广告列表', '267', '112|267|275|', '', 'Admin', 'Ad', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('276', '添加广告', '267', '112|267|276|', '添加广告(id:%s)', 'Admin', 'Ad', 'add', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('277', '广告位管理', '267', '112|267|277|', '', 'Admin', 'Ad', 'category', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('320', '风格模板', '15', '15|320|', '', 'Admin', 'Tpl', 'index', '1', '1', '', '', '0', '2', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('334', '发送', '326', '15|326|334|', '邮件营销发送邮件(id:%s)', 'Admin', 'MailQueue', 'send', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('331', '保存模板', '324', '15|320|324|331|', '保存简历模板', 'Admin', 'Tpl', 'resume_tpl_save', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('330', '更新模板', '323', '15|320|323|330|', '更新模板', 'Admin', 'Tpl', 'refresh_tpl', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('329', '保存模板', '323', '15|320|323|329|', '保存企业模板', 'Admin', 'Tpl', 'com_tpl_save', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('328', '更换模板', '322', '15|320|322|328|', '更换模板', 'Admin', 'Tpl', 'set', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('327', '备份模板', '322', '15|320|322|327|', '备份模板', 'Admin', 'Tpl', 'backup', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('324', '简历模板', '320', '15|320|324|', '', 'Admin', 'Tpl', 'resume_tpl', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('323', '企业模板', '320', '15|320|323|', '', 'Admin', 'Tpl', 'com_tpl', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('325', '职位订阅', '171', '171|325|', '', 'Admin', 'Personal', 'jobs_subscribe', '1', '1', '', '', '0', '8', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('318', '页面管理', '1', '1|318|', '', 'Admin', 'Page', 'index', '1', '1', '', '', '0', '5', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('319', '更新缓存', '15', '15|319|', '更新缓存', 'Admin', 'Clearcache', 'index', '1', '0', '', '', '0', '1', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('335', '删除', '326', '15|326|335|', '删除邮件队列', 'Admin', 'MailQueue', 'del', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('336', '添加任务', '326', '15|326|336|', '添加邮件队列任务(id:%s)', 'Admin', 'MailQueue', 'mailqueue_add', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('337', '修改任务', '326', '15|326|337|', '修改邮件队列任务(id:%s)', 'Admin', 'MailQueue', 'mailqueue_edit', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('338', '批量添加任务', '326', '15|326|338|', '批量添加邮件队列任务(id:%s)', 'Admin', 'MailQueue', 'mailqueue_batchadd', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('339', '短信营销', '15', '15|339|', '', 'Admin', 'SmsQueue', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('340', '批量发送', '339', '15|339|340|', '批量发送短信队列任务(id:%s)', 'Admin', 'SmsQueue', 'totalsend', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('341', '发送', '339', '15|339|341|', '发送短信队列任务(id:%s)', 'Admin', 'SmsQueue', 'send', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('342', '删除', '339', '15|339|342|', '删除短信队列任务(id:%s)', 'Admin', 'SmsQueue', 'del', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('343', '添加任务', '339', '15|339|343|', '添加短信队列任务(id:%s)', 'Admin', 'SmsQueue', 'smsqueue_add', '0', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('344', '修改任务', '339', '15|339|344|', '修改短信队列任务(id:%s)', 'Admin', 'SmsQueue', 'smsqueue_edit', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('345', '批量添加任务', '339', '15|339|345|', '批量添加短信队列任务(id:%s)', 'Admin', 'SmsQueue', 'smsqueue_batchadd', '0', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('537', '删除', '325', '171|325|537|', '', 'Admin', 'Personal', 'subscribe_del', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('348', '地区分类', '24', '1|24|348|', '', 'Admin', 'CategoryDistrict', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('349', '职位分类', '24', '1|24|349|', '', 'Admin', 'CategoryJobs', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('350', '应用管理', '1', '1|350|', '', 'Admin', 'Apply', 'index', '1', '1', '', '', '0', '6', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('351', '专业分类', '24', '1|24|351|', '', 'Admin', 'CategoryMajor', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('352', '其他分类组', '24', '1|24|352|', '', 'Admin', 'Category', 'group_list', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('353', '其他分类列表', '352', '1|24|352|353|', '', 'Admin', 'Category', 'show_category', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('354', '删除分类组', '352', '1|24|352|354|', '删除分类组(id:%s)', 'Admin', 'Category', 'group_delete', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('355', '修改分类组', '352', '1|24|352|355|', '修改分类组(id:%s)', 'Admin', 'Category', 'group_edit', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('356', '添加分类组', '352', '1|24|352|356|', '添加分类组(id:%s)', 'Admin', 'Category', 'group_add', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('357', '添加地区分类', '348', '1|24|348|357|', '添加地区分类(id:%s)', 'Admin', 'CategoryDistrict', 'add', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('358', '修改地区分类', '348', '1|24|348|358|', '修改地区分类(id:%s)', 'Admin', 'CategoryDistrict', 'edit', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('359', '删除地区分类', '348', '1|24|348|359|', '删除地区分类(id:%s)', 'Admin', 'CategoryDistrict', 'delete', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('360', '批量保存地区分类', '348', '1|24|348|360|', '批量保存地区分类', 'Admin', 'CategoryDistrict', 'districtAllSave', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('361', '添加职位分类', '349', '1|24|349|361|', '添加职位分类(id:%s)', 'Admin', 'CategoryJobs', 'add', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('362', '修改职位分类', '349', '1|24|349|362|', '修改职位分类(id:%s)', 'Admin', 'CategoryJobs', 'edit', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('363', '删除职位分类', '349', '1|24|349|363|', '删除职位分类(id:%s)', 'Admin', 'CategoryJobs', 'delete', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('364', '批量保存职位分类', '349', '1|24|349|364|', '批量保存职位分类', 'Admin', 'CategoryJobs', 'jobsAllSave', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('365', '添加专业分类', '351', '1|24|351|365|', '添加专业分类(id:%s)', 'Admin', 'CategoryMajor', 'add', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('366', '修改专业分类', '351', '1|24|351|366|', '修改专业分类(id:%s)', 'Admin', 'CategoryMajor', 'edit', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('367', '删除专业分类', '351', '1|24|351|367|', '删除专业分类(id:%s)', 'Admin', 'CategoryMajor', 'delete', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('368', '批量保存专业分类', '351', '1|24|351|368|', '批量保存专业分类', 'Admin', 'CategoryMajor', 'majorAllSave', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('369', '添加分类', '352', '1|24|352|369|', '添加分类(id:%s)', 'Admin', 'Category', 'add', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('370', '修改分类', '352', '1|24|352|370|', '修改分类(id:%s)', 'Admin', 'Category', 'edit', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('371', '删除分类', '352', '1|24|352|371|', '删除分类(id:%s)', 'Admin', 'Category', 'delete', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('372', '分类列表', '352', '1|24|352|372|', '', 'Admin', 'Category', 'show_category', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('373', '批量保存分类', '352', '1|24|352|373|', '批量保存分类', 'Admin', 'Category', 'categoryAllSave', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('374', '账号申诉', '112', '112|374|', '', 'Admin', 'Appeal', 'index', '1', '1', '', '', '0', '255', '1', 'appeal', '1', '0');
INSERT INTO `qs_menu` VALUES ('375', '更改状态', '374', '112|374|375|', '设置账号申诉状态(id:%s)', 'Admin', 'Appeal', 'set_status', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('376', '发送邮件', '374', '112|374|376|', '', 'Admin', 'Appeal', 'send_email', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('377', '删除', '374', '112|374|377|', '删除账号申诉记录(id:%s)', 'Admin', 'Appeal', 'delete', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('378', '申诉设置', '374', '112|374|378|', '设置账号申诉状态(id:%s)', 'Admin', 'Appeal', 'set', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('379', '低效sql记录', '1', '1|379|', '', 'Admin', 'LowEffiSql', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('380', '详情', '379', '1|379|380|', '', 'Admin', 'LowEffiSql', 'detail', '0', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('381', '安装', '350', '1|350|381|', '安装模块:%s', 'Admin', 'Apply', 'setup', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('382', '卸载', '350', '1|350|382|', '卸载模块:%s', 'Admin', 'Apply', 'unload', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('383', '详情', '350', '1|350|383|', '', 'Admin', 'Apply', 'details', '1', '1', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('384', '导航设置', '1', '1|384|', '', 'Admin', 'Navigation', 'index', '1', '1', '', '', '0', '7', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('385', '导航菜单', '384', '1|384|385|', '', 'Admin', 'Navigation', 'index', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('386', '添加导航栏目', '384', '1|384|386|', '', 'Admin', 'Navigation', 'add', '1', '0', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('387', '导航分类', '384', '1|384|387|', '', 'Admin', 'Navigation', 'category', '1', '1', '', '', '0', '255', '1', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('388', '编辑导航', '385', '1|384|385|388|', '', 'Admin', 'Navigation', 'edit', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('389', '导航删除', '385', '1|384|385|389|', '', 'Admin', 'Navigation', 'delete', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('390', '添加导航分类', '387', '1|384|387|390|', '', 'Admin', 'Navigation', 'category_add', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('391', '修改导航分类', '387', '1|384|387|391|', '', 'Admin', 'Navigation', 'category_edit', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('392', '删除导航分类', '387', '1|384|387|392|', '', 'Admin', 'Navigation', 'category_delete', '0', '0', '', '', '0', '255', '0', '', '1', '0');
INSERT INTO `qs_menu` VALUES ('401', '详情', '383', '1|350|383|401|', '', 'Admin', 'Apply', 'details', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('402', '更新日志', '383', '1|350|383|402|', '', 'Admin', 'Apply', 'change_log', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('404', '注册协议', '6', '1|6|404|', '', 'Admin', 'Config', 'agreement', '1', '1', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('407', '搜索', '248', '171|248|407|', '', 'Admin', 'SetPer', 'search', '1', '0', '', '', '0', '3', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('408', '搜索', '240', '194|240|408|', '', 'Admin', 'SetCom', 'search', '1', '0', '', '', '0', '9', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('410', '增值服务', '240', '194|240|410|', '', 'Admin', 'SetmealIncrement', 'index', '1', '1', '', '', '0', '6', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('412', '认证/审核', '240', '194|240|412|', '', 'Admin', 'SetCom', 'set_audit', '1', '0', '', '', '0', '2', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('414', '快捷消费', '240', '194|240|414|', '', 'Admin', 'SetCom', 'set_quick', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('422', '添加页面', '420', '1|318|420|422|', '', 'Admin', 'Page', 'add', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('420', '页面管理', '318', '1|318|420|', '', 'Admin', 'Page', 'index', '1', '1', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('421', '伪静态规则', '318', '1|318|421|', '', 'Admin', 'Page', 'rewrite', '1', '1', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('423', '修改页面', '420', '1|318|420|423|', '', 'Admin', 'Page', 'edit', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('424', '删除页面', '420', '1|318|420|424|', '', 'Admin', 'Page', 'delete', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('425', '设置链接', '420', '1|318|420|425|', '', 'Admin', 'Page', 'set_url', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('426', '设置缓存', '420', '1|318|420|426|', '', 'Admin', 'Page', 'set_caching', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('427', '角色功能组合', '7', '1|7|427|', '', 'Admin', 'AdminRole', 'group', '1', '1', '', '', '0', '255', '1', '', '0', '1');
INSERT INTO `qs_menu` VALUES ('428', '添加角色', '10', '1|7|10|428|', '', 'Admin', 'AdminRole', 'add', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('429', '删除角色', '10', '1|7|10|429|', '', 'Admin', 'AdminRole', 'delete', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('430', '管理员日志', '8', '1|7|8|430|', '', 'Admin', 'AdminLog', 'index', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('431', '管理员详情', '8', '1|7|8|431|', '', 'Admin', 'Admin', 'details', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('432', '编辑管理员', '8', '1|7|8|432|', '', 'Admin', 'Admin', 'edit', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('433', '删除管理员', '8', '1|7|8|433|', '', 'Admin', 'Admin', 'delete', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('434', '添加角色组', '427', '1|7|427|434|', '', 'Admin', 'AdminRole', 'group_add', '0', '0', '', '', '0', '255', '1', '', '0', '1');
INSERT INTO `qs_menu` VALUES ('435', '编辑角色组', '427', '1|7|427|435|', '', 'Admin', 'AdminRole', 'group_edit', '0', '0', '', '', '0', '255', '1', '', '0', '1');
INSERT INTO `qs_menu` VALUES ('436', '删除角色组', '427', '1|7|427|436|', '', 'Admin', 'AdminRole', 'group_delete', '0', '0', '', '', '0', '255', '1', '', '0', '1');
INSERT INTO `qs_menu` VALUES ('437', '权限选择', '427', '1|7|427|437|', '', 'Admin', 'AdminRole', 'ajax_auth', '0', '0', '', '', '0', '255', '1', '', '0', '1');
INSERT INTO `qs_menu` VALUES ('438', '批量保存权限分组', '427', '1|7|427|438|', '', 'Admin', 'AdminRole', 'authAllSave', '0', '0', '', '', '0', '255', '1', '', '0', '1');
INSERT INTO `qs_menu` VALUES ('439', '应用', '421', '1|318|421|439|', '', 'Admin', 'Page', 'rewrite_set', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('440', '删除', '421', '1|318|421|440|', '', 'Admin', 'Page', 'rewrite_delete', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('441', '详情', '421', '1|318|421|441|', '', 'Admin', 'Page', 'rewrite_details', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('444', '基本', '222', '194|200|222|444|', '', 'Admin', 'CompanyMembers', 'edit', '1', '0', '', '', '0', '1', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('532', '取消订单', '448', '194|200|222|448|532|', '', 'Admin', 'Order', 'order_cancel', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('447', '日志', '222', '194|200|222|447|', '', 'Admin', 'CompanyMembers', 'user_log', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('448', '订单', '222', '194|200|222|448|', '', 'Admin', 'CompanyMembers', 'user_order', '1', '1', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('449', '增值服务', '222', '194|200|222|449|', '', 'Admin', 'CompanyMembers', 'user_increment', '1', '1', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('450', '收到简历', '222', '194|200|222|450|', '', 'Admin', 'CompanyMembers', 'user_jobs_apply', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('451', '面试邀请', '222', '194|200|222|451|', '', 'Admin', 'CompanyMembers', 'user_interview', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('452', '下载简历', '222', '194|200|222|452|', '', 'Admin', 'CompanyMembers', 'user_down', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('453', '基本信息', '219', '194|198|219|453|', '', 'Admin', 'Company', 'edit_company', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('454', '营业执照', '219', '194|198|219|454|', '', 'Admin', 'Company', 'license', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('455', '企业风采', '219', '194|198|219|455|', '', 'Admin', 'Company', 'img', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('511', '附件作品', '171', '171|511|', '', 'Admin', 'ResumeImg', 'index', '1', '1', '', '', '0', '2', '1', 'resume_img', '0', '0');
INSERT INTO `qs_menu` VALUES ('458', '修改职位', '195', '194|195|458|', '', 'Admin', 'Jobs', 'edit', '0', '1', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('514', '查看', '176', '171|176|514|', '', 'Admin', 'Order', 'order_show_per', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('512', '增值服务', '194', '194|512|', '', 'Admin', 'Company', 'increment', '1', '0', '', '', '0', '7', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('540', '删除', '275', '112|267|275|540|', '', 'Admin', 'Ad', 'delete', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('539', '修改', '270', '112|269|270|539|', '', 'Admin', 'Link', 'edit', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('464', '数据清理', '15', '15|464|', '', 'Admin', 'Dataclear', 'index', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('482', '新增', '410', '194|240|410|482|', '', 'Admin', 'SetmealIncrement', 'add', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('483', '修改', '410', '194|240|410|483|', '', 'Admin', 'SetmealIncrement', 'edit', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('484', '删除', '410', '194|240|410|484|', '', 'Admin', 'SetmealIncrement', 'delete', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('485', '基本', '187', '171|179|187|485|', '', 'Admin', 'Personal', 'member_edit', '1', '1', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('486', '积分', '187', '171|179|187|486|', '', 'Admin', 'Personal', 'user_points_edit', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('487', '日志', '187', '171|179|187|487|', '', 'Admin', 'Personal', 'user_log', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('488', '订单', '187', '171|179|187|488|', '', 'Admin', 'Order', 'index_per', '1', '1', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('489', '推广', '187', '171|179|187|489|', '', 'Admin', 'Personal', 'promotion', '1', '1', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('490', '面试邀请', '187', '171|179|187|490|', '', 'Admin', 'Personal', 'user_nterview', '1', '1', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('491', '申请职位', '187', '171|179|187|491|', '', 'Admin', 'Personal', 'user_apply_jobs', '1', '1', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('492', '设置订单', '448', '194|200|222|448|492|', '', 'Admin', 'Order', 'order_set', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('493', '查看订单', '448', '194|200|222|448|493|', '', 'Admin', 'Order', 'order_show', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('494', '修改推广', '449', '194|200|222|449|494|', '', 'Admin', 'Promotion', 'edit', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('495', '招聘效果', '219', '194|198|219|495|', '', 'Admin', 'Company', 'statistics_visitor', '1', '1', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('496', '访客统计', '495', '194|198|219|495|496|', '', 'Admin', 'Company', 'statistics_visitor', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('497', '职位浏览统计', '495', '194|198|219|495|497|', '', 'Admin', 'Company', 'statistics_viewjobs', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('498', '应聘统计', '495', '194|198|219|495|498|', '', 'Admin', 'Company', 'statistics_apply', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('499', '微信招聘', '219', '194|198|219|499|', '', 'Admin', 'Company', 'mobile_recruit_statistics', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('500', '企业模板', '219', '194|198|219|500|', '', 'Admin', 'Company', 'tpl', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('501', '增值服务', '248', '171|248|501|', '', 'Admin', 'Personal', 'increment', '1', '1', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('502', '个人推广', '171', '171|502|', '', 'Admin', 'Personal', 'promotion', '1', '1', '', '', '0', '7', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('515', '取消订单', '488', '171|179|187|488|515|', '', 'Admin', 'Order', 'order_cancel_per', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('518', '设置订单', '176', '171|176|518|', '', 'Admin', 'Order', 'order_set_per', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('519', '添加推广', '489', '171|179|187|489|519|', '', 'Admin', 'Personal', 'promotion_add', '0', '1', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('520', '修改置顶推广', '489', '171|179|187|489|520|', '', 'Admin', 'Personal', 'promotion_stick_edit', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('534', '查看订单', '201', '194|201|534|', '', 'Admin', 'Order', 'order_show', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('521', '取消置顶推广', '489', '171|179|187|489|521|', '', 'Admin', 'Personal', 'promotion_stick_deltet', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('533', '设置订单', '201', '194|201|533|', '', 'Admin', 'Order', 'order_set', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('523', '修改标签推广', '489', '171|179|187|489|523|', '', 'Admin', 'Personal', 'promotion_tag_edit', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('524', '取消标签推广', '489', '171|179|187|489|524|', '', 'Admin', 'Personal', 'promotion_tag_deltet', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('525', '添加推广', '502', '171|502|525|', '', 'Admin', 'Personal', 'promotion_add', '0', '1', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('526', '修改置顶推广', '502', '171|502|526|', '', 'Admin', 'Personal', 'promotion_stick_edit', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('527', '取消置顶推广', '502', '171|502|527|', '', 'Admin', 'Personal', 'promotion_stick_deltet', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('529', '修改标签推广', '502', '171|502|529|', '', 'Admin', 'Personal', 'promotion_tag_edit', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('530', '取消标签推广', '502', '171|502|530|', '', 'Admin', 'Personal', 'promotion_tag_deltet', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('531', '匹配职位', '172', '171|172|531|', '', 'Admin', 'Personal', 'match', '0', '1', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('535', '取消订单', '201', '194|201|535|', '', 'Admin', 'Order', 'order_cancel', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('536', '职位订阅器', '248', '171|248|536|', '', 'Admin', 'SetPer', 'jobs_subscribe_config', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('541', '添加', '277', '112|267|277|541|', '', 'Admin', 'Ad', 'category_add', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('542', '修改', '277', '112|267|277|542|', '', 'Admin', 'Ad', 'category_edit', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('543', '删除', '277', '112|267|277|543|', '', 'Admin', 'Ad', 'category_delete', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('544', '添加', '272', '112|269|272|544|', '', 'Admin', 'Link', 'category_add', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('545', '修改', '272', '112|269|272|545|', '', 'Admin', 'Link', 'category_edit', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('546', '删除', '272', '112|269|272|546|', '', 'Admin', 'Link', 'category_delete', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('549', ' 查看', '94', '1|26|94|549|', '', 'Admin', 'SysEmailLog', 'show', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('553', '投递职位', '531', '171|172|531|553|', '', 'Admin', 'Personal', 'apply', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('563', '删除', '491', '171|179|187|491|563|', '', 'Admin', 'Personal', 'user_apply_delete', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('564', '获取简历列表', '525', '171|502|525|564|', '', 'Admin', 'Personal', 'ajax_get_resume', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('565', '保存配置', '6', '1|6|565|', '', 'Admin', 'Config', 'edit', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('566', '保存', '404', '1|6|404|566|', '', 'Admin', 'Text', 'edit', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('568', '修改', '501', '171|248|501|568|', '', 'Admin', 'Personal', 'increment_stick_edit', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('569', '删除', '501', '171|248|501|569|', '', 'Admin', 'Personal', 'increment_stick_del', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('570', '新增醒目标签', '501', '171|248|501|570|', '', 'Admin', 'Personal', 'tag_category_add', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('571', '修改醒目标签', '501', '171|248|501|571|', '', 'Admin', 'Personal', 'tag_category_edit', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('572', '删除醒目标签', '501', '171|248|501|572|', '', 'Admin', 'Personal', 'tag_category_del', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('573', '批量保存', '2', '1|2|573|', '', 'Admin', 'Menu', 'menuAllSave', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('577', '批量保存分类', '160', '112|118|160|577|', '', 'Admin', 'HelpCategory', 'allSave', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('576', '删除', '270', '112|269|270|576|', '', 'Admin', 'Link', 'delete', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('578', '审核', '120', '112|120|578|', '', 'Admin', 'Feedback', 'set_audit', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('579', '删除所选', '110', '1|110|579|', '', 'Admin', 'Syslog', 'delete', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('580', '批量删除', '110', '1|110|580|', '', 'Admin', 'Syslog', 'pidel_syslog', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('581', '添加顾问', '200', '194|200|581|', '', 'Admin', 'CompanyMembers', 'consultant_install', '0', '1', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('582', '保存顾问', '581', '194|200|581|582|', '', 'Admin', 'CompanyMembers', 'consultant_install_save', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('583', '发票管理', '194', '194|583|', '', 'Admin', 'OrderInvoice', 'index', '1', '1', '', '', '0', '10', '1', 'order_invoice', '0', '0');
INSERT INTO `qs_menu` VALUES ('729', '查看详情', '728', '194|583|728|729|', '', 'Admin', 'OrderInvoice', 'invoice_show', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('728', '发票列表', '583', '194|583|728|', '', 'Admin', 'OrderInvoice', 'index', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('683', '顾问管理', '204', '194|204|683|', '', 'Admin', 'Consultant', 'index', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('684', '投诉', '204', '194|204|684|', '', 'Admin', 'Consultant', 'complain', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('719', '其它', '0', '719|', '', 'Admin', 'Ajax', 'userinfo', '0', '0', '', '', '0', '255', '0', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('701', '发送短信', '719', '719|701|', '', 'Admin', 'Ajax', 'ajax_send_sms', '0', '0', '', '', '0', '255', '0', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('702', '发送邮件', '719', '719|702|', '', 'Admin', 'Ajax', 'ajax_send_email', '0', '0', '', '', '0', '255', '0', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('703', '发站内信', '719', '719|703|', '', 'Admin', 'Ajax', 'ajax_send_pms', '0', '0', '', '', '0', '255', '0', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('704', '审核日志', '719', '719|704|', '', 'Admin', 'Ajax', 'audit_log', '0', '0', '', '', '0', '255', '0', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('705', '登录日志', '719', '719|705|', '', 'Admin', 'Ajax', 'login_log', '0', '0', '', '', '0', '255', '0', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('717', '左侧菜单消息', '719', '719|717|', '', 'Admin', 'Ajax', 'affair_stat', '0', '0', '', '', '0', '255', '0', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('718', '顶部菜单消息', '719', '719|718|', '', 'Admin', 'Ajax', 'affair', '0', '0', '', '', '0', '255', '0', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('706', '套餐详情', '550', '194|550|706|', '', 'Admin', 'Ajax', 'setmeal_detail', '0', '0', '', '', '0', '255', '0', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('707', '诚聘通审核日志', '550', '194|550|707|', '', 'Admin', 'Ajax', 'famous_log', '0', '0', '', '', '0', '255', '0', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('708', '职位管理日志', '550', '194|550|708|', '', 'Admin', 'Ajax', 'jobs_log', '0', '0', '', '', '0', '255', '0', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('716', '分站管理', '8', '1|7|8|716|', '', 'Admin', 'Ajax', 'ajax_subsite', '0', '0', '', '', '0', '255', '0', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('720', '其它', '6', '1|6|720|', '', 'Admin', 'Config', 'other', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('721', '照片简历', '171', '171|721|', '', 'Admin', 'Personal', 'photo', '1', '0', '', '', '0', '255', '1', 'photo', '0', '0');
INSERT INTO `qs_menu` VALUES ('722', '审核照片', '721', '171|721|722|', '', 'Admin', 'Personal', 'set_photo_audit', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('723', '审核简历', '721', '171|721|723|', '', 'Admin', 'Personal', 'set_audit', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('724', '刷新简历', '721', '171|721|724|', '', 'Admin', 'Personal', 'refresh', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('725', '删除简历', '721', '171|721|725|', '', 'Admin', 'Personal', 'resume_delete', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('726', '查看简历', '721', '171|721|726|', '', 'Admin', 'Personal', 'resume_show', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('727', '上传附件', '719', '719|727|', '', 'Admin', 'Upload', 'index', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('730', '处理发票', '728', '194|583|728|730|', '', 'Admin', 'OrderInvoice', 'set_audit', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('731', '删除', '728', '194|583|728|731|', '', 'Admin', 'OrderInvoice', 'delete', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('732', '发票分类', '583', '194|583|732|', '', 'Admin', 'OrderInvoice', 'invoice_category', '1', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('733', '新增分类', '732', '194|583|732|733|', '', 'Admin', 'OrderInvoice', 'add_category', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('734', '修改分类', '732', '194|583|732|734|', '', 'Admin', 'OrderInvoice', 'edit_category', '0', '0', '', '', '0', '255', '1', '', '0', '0');
INSERT INTO `qs_menu` VALUES ('735', '删除分类', '732', '194|583|732|735|', '', 'Admin', 'OrderInvoice', 'delete_category', '0', '0', '', '', '0', '255', '1', '', '0', '0');

-- ----------------------------
-- Table structure for qs_msg
-- ----------------------------
DROP TABLE IF EXISTS `qs_msg`;
CREATE TABLE `qs_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `spid` tinyint(1) NOT NULL,
  `fromuid` int(11) NOT NULL,
  `touid` int(11) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `addtime` int(10) NOT NULL,
  `mutually` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_msg
-- ----------------------------

-- ----------------------------
-- Table structure for qs_navigation
-- ----------------------------
DROP TABLE IF EXISTS `qs_navigation`;
CREATE TABLE `qs_navigation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(100) NOT NULL,
  `urltype` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `display` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `color` varchar(30) NOT NULL,
  `pagealias` varchar(100) NOT NULL,
  `list_id` varchar(30) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `target` varchar(100) NOT NULL,
  `navigationorder` int(10) unsigned NOT NULL DEFAULT '0',
  `is_personal` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_navigation
-- ----------------------------
INSERT INTO `qs_navigation` VALUES ('1', 'QS_top', '0', '1', '首  页', '', 'QS_index', '', 'index', '', '_self', '0', '0');
INSERT INTO `qs_navigation` VALUES ('2', 'QS_top', '0', '1', '找工作', '', 'QS_jobslist', '', 'jobs', '', '_self', '0', '1');
INSERT INTO `qs_navigation` VALUES ('3', 'QS_top', '0', '1', '招人才', '', 'QS_resumelist', '', 'resume', '', '_self', '0', '0');
INSERT INTO `qs_navigation` VALUES ('4', 'QS_top', '0', '1', 'HR工具箱', '', 'QS_hrtools', '', 'hrtools', '', '_self', '0', '0');
INSERT INTO `qs_navigation` VALUES ('5', 'QS_top', '0', '1', '职场资讯', '', 'QS_news', '', 'news', '', '_self', '0', '1');
INSERT INTO `qs_navigation` VALUES ('6', 'QS_top', '0', '1', '会员中心', '', 'QS_login', '', 'members', '', '_self', '0', '0');

-- ----------------------------
-- Table structure for qs_navigation_category
-- ----------------------------
DROP TABLE IF EXISTS `qs_navigation_category`;
CREATE TABLE `qs_navigation_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(100) NOT NULL,
  `categoryname` varchar(30) NOT NULL,
  `admin_set` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_navigation_category
-- ----------------------------
INSERT INTO `qs_navigation_category` VALUES ('1', 'QS_top', '顶部导航', '1');

-- ----------------------------
-- Table structure for qs_notice
-- ----------------------------
DROP TABLE IF EXISTS `qs_notice`;
CREATE TABLE `qs_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` smallint(5) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `tit_color` varchar(10) DEFAULT NULL,
  `tit_b` tinyint(1) NOT NULL DEFAULT '0',
  `is_display` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_url` varchar(200) NOT NULL DEFAULT '0',
  `seo_keywords` varchar(100) DEFAULT NULL,
  `seo_description` varchar(200) DEFAULT NULL,
  `click` int(11) NOT NULL DEFAULT '1',
  `addtime` int(10) NOT NULL,
  `sort` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`,`sort`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_notice
-- ----------------------------

-- ----------------------------
-- Table structure for qs_notice_category
-- ----------------------------
DROP TABLE IF EXISTS `qs_notice_category`;
CREATE TABLE `qs_notice_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(80) NOT NULL,
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_set` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_notice_category
-- ----------------------------
INSERT INTO `qs_notice_category` VALUES ('1', '首页公告', '0', '1');

-- ----------------------------
-- Table structure for qs_oauth
-- ----------------------------
DROP TABLE IF EXISTS `qs_oauth`;
CREATE TABLE `qs_oauth` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `alias` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `info` varchar(255) NOT NULL,
  `config` varchar(255) NOT NULL,
  `apply` varchar(255) NOT NULL,
  `create_time` int(10) NOT NULL,
  `ordid` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_oauth
-- ----------------------------
INSERT INTO `qs_oauth` VALUES ('1', 'sina', '新浪微博', '', 'N;', '', '0', '1', '1');
INSERT INTO `qs_oauth` VALUES ('2', 'qq', '腾讯QQ', '', 'N;', '', '0', '2', '1');
INSERT INTO `qs_oauth` VALUES ('3', 'taobao', '淘宝', '', 'N;', '', '0', '3', '1');
INSERT INTO `qs_oauth` VALUES ('4', 'weixin', '微信', '', 'N;', '', '0', '4', '1');

-- ----------------------------
-- Table structure for qs_order
-- ----------------------------
DROP TABLE IF EXISTS `qs_order`;
CREATE TABLE `qs_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oid` varchar(200) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `utype` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `order_type` int(10) unsigned NOT NULL COMMENT '订单类型，详见OrderModel',
  `pay_type` tinyint(1) unsigned NOT NULL COMMENT '支付类型：1积分 2现金 3现金+积分',
  `is_paid` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1待支付 2已支付',
  `amount` decimal(10,2) NOT NULL COMMENT '总金额',
  `pay_amount` decimal(10,2) NOT NULL COMMENT '现金支付金额',
  `pay_points` int(10) unsigned NOT NULL COMMENT '积分支付数',
  `payment` varchar(20) NOT NULL COMMENT '支付方式英文',
  `payment_cn` varchar(20) NOT NULL COMMENT '支付方式中文',
  `description` varchar(150) NOT NULL COMMENT '订单详情描述',
  `service_name` varchar(30) NOT NULL COMMENT '所购买服务名称',
  `points` int(10) unsigned NOT NULL COMMENT '购买积分数',
  `setmeal` int(10) unsigned NOT NULL COMMENT '购买套餐/增值服务id',
  `params` text NOT NULL COMMENT '需要特殊处理的参数序列化',
  `notes` varchar(150) NOT NULL COMMENT '备注',
  `addtime` int(11) unsigned NOT NULL,
  `payment_time` int(10) unsigned NOT NULL,
  `discount` varchar(200) NOT NULL COMMENT '优惠',
  `fee` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `addtime` (`addtime`),
  KEY `payment_name` (`payment`),
  KEY `oid` (`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_order
-- ----------------------------

-- ----------------------------
-- Table structure for qs_order_invoice
-- ----------------------------
DROP TABLE IF EXISTS `qs_order_invoice`;
CREATE TABLE `qs_order_invoice` (
  `order_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `title` tinyint(1) unsigned NOT NULL,
  `cid` tinyint(1) unsigned NOT NULL,
  `organization` varchar(30) NOT NULL,
  `addressee` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `postcode` varchar(6) NOT NULL,
  `audit` tinyint(1) NOT NULL,
  `addtime` int(10) NOT NULL,
  `tax_number` varchar(30) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_order_invoice
-- ----------------------------

-- ----------------------------
-- Table structure for qs_order_invoice_category
-- ----------------------------
DROP TABLE IF EXISTS `qs_order_invoice_category`;
CREATE TABLE `qs_order_invoice_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(30) NOT NULL,
  `category_order` int(10) NOT NULL,
  `admin_set` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_order_invoice_category
-- ----------------------------
INSERT INTO `qs_order_invoice_category` VALUES ('1', '咨询费', '0', '1');
INSERT INTO `qs_order_invoice_category` VALUES ('2', '咨询服务费', '0', '1');
INSERT INTO `qs_order_invoice_category` VALUES ('3', '服务费', '0', '1');

-- ----------------------------
-- Table structure for qs_page
-- ----------------------------
DROP TABLE IF EXISTS `qs_page`;
CREATE TABLE `qs_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `systemclass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pagetpye` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `alias` varchar(60) NOT NULL,
  `pname` varchar(12) NOT NULL,
  `module` varchar(100) NOT NULL,
  `controller` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `rewrite` varchar(200) NOT NULL,
  `url` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `caching` int(10) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(60) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `keywords` varchar(200) NOT NULL,
  `variate` varchar(1000) NOT NULL,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_page
-- ----------------------------
INSERT INTO `qs_page` VALUES ('1', '1', '1', 'QS_index', '网站首页', 'Home', 'index', 'index', '', '0', '0', 'Index', 'Mr jobsPHP高端人才系统(www.jobs.kalichimall.com)', 'Mr jobsCMS是基于PHP+MYSQL的免费网站管理系统，提供完善的人才招聘网站建设方案', 'Mr jobs人才系统，Mr jobs，Mr jobscms，人才网站源码，php人才网程序', '', 'Home');
INSERT INTO `qs_page` VALUES ('2', '1', '1', 'QS_jobs', '招聘首页', 'Home', 'jobs', 'index', '', '0', '0', 'jobs', '招聘信息 - {site_name}', '', '', '', 'Home');
INSERT INTO `qs_page` VALUES ('3', '1', '2', 'QS_jobslist', '招聘列表', 'Home', 'jobs', 'jobs_list', '', '0', '0', 'jobs', '招聘列表-{site_name}', '', '', 'a:3:{s:11:\"jobcategory\";s:12:\"职位分类\";s:12:\"citycategory\";s:12:\"地区分类\";s:3:\"key\";s:9:\"关健字\";}', 'Home');
INSERT INTO `qs_page` VALUES ('4', '1', '3', 'QS_jobsshow', '招聘详细页', 'Home', 'Jobs', 'jobs_show', '', '1', '0', 'jobs', '{jobs_name} - {companyname} - {site_name}', '{companyname}招聘岗位,{jobs_name}', '{companyname},{jobs_name},{nature_cn},{category_cn},{district_cn}', 'a:8:{s:9:\"jobs_name\";s:12:\"职位名称\";s:11:\"companyname\";s:12:\"公司名称\";s:6:\"sex_cn\";s:6:\"性别\";s:9:\"nature_cn\";s:12:\"工作性质\";s:11:\"category_cn\";s:12:\"职位类别\";s:8:\"trade_cn\";s:6:\"行业\";s:11:\"district_cn\";s:6:\"地区\";s:12:\"education_cn\";s:6:\"学历\";}', 'Home');
INSERT INTO `qs_page` VALUES ('5', '1', '3', 'QS_companyshow', '企业简介页', 'Home', 'Jobs', 'com_show', '', '0', '0', 'jobs', '{companyname} - {site_name}', '{contents},公司简介', '{companyname},公司简介', 'a:7:{s:11:\"companyname\";s:12:\"公司名称\";s:9:\"nature_cn\";s:12:\"公司性质\";s:11:\"category_cn\";s:12:\"职位类别\";s:8:\"trade_cn\";s:12:\"公司行业\";s:11:\"district_cn\";s:12:\"所在地区\";s:8:\"scale_cn\";s:12:\"公司规模\";s:8:\"contents\";s:12:\"公司介绍\";}', 'Home');
INSERT INTO `qs_page` VALUES ('6', '1', '2', 'QS_companyjobs', '企业职位列表页', 'Home', 'Jobs', 'com_jobs_list', '', '0', '0', 'jobs', '{companyname} - 职位列表 - {site_name}', '{contents},职位列表', '{companyname},职位列表', 'a:2:{s:11:\"companyname\";s:12:\"公司名称\";s:8:\"contents\";s:12:\"公司介绍\";}', 'Home');
INSERT INTO `qs_page` VALUES ('7', '1', '1', 'QS_login', '会员登录', 'Home', 'members', 'login', '', '0', '0', 'members', '会员登录', '', '', '', 'Home');
INSERT INTO `qs_page` VALUES ('8', '1', '1', 'QS_resume', '简历首页', 'Home', 'resume', 'index', '', '0', '0', 'resume', '人才信息 - {site_name}', '', '', '', 'Home');
INSERT INTO `qs_page` VALUES ('9', '1', '2', 'QS_resumelist', '简历列表', 'Home', 'Resume', 'resume_list', '', '0', '0', 'Resume', '简历列表  - {site_name}', '', '', 'a:3:{s:11:\"jobcategory\";s:12:\"职位分类\";s:12:\"citycategory\";s:12:\"地区分类\";s:3:\"key\";s:9:\"关健字\";}', 'Home');
INSERT INTO `qs_page` VALUES ('10', '1', '3', 'QS_resumeshow', '简历详细页', 'Home', 'Resume', 'resume_show', '', '0', '0', 'Resume', '{fullname}的个人简历 -{site_name}', '{title},{fullname},{specialty}', '{fullname},{sex_cn},{nature_cn},{trade_cn},{district_cn},{wage_cn},{education_cn},{major_cn},{intention_jobs}', 'a:11:{s:5:\"title\";s:12:\"简历标题\";s:8:\"fullname\";s:12:\"真实姓名\";s:6:\"sex_cn\";s:6:\"性别\";s:9:\"nature_cn\";s:12:\"工作性质\";s:8:\"trade_cn\";s:12:\"意向行业\";s:11:\"district_cn\";s:12:\"意向地区\";s:7:\"wage_cn\";s:12:\"期望薪资\";s:12:\"education_cn\";s:6:\"学历\";s:8:\"major_cn\";s:6:\"专业\";s:14:\"intention_jobs\";s:12:\"期望职位\";s:9:\"specialty\";s:12:\"自我描述\";}', 'Home');
INSERT INTO `qs_page` VALUES ('11', '1', '2', 'QS_hrtoolslist', 'HR工具箱列表', 'Home', 'hrtools', 'hrtools_list', '', '0', '0', 'hrtools', '{c_name} - HR工具箱', '', '', 'a:1:{s:6:\"c_name\";s:12:\"分类名称\";}', 'Home');
INSERT INTO `qs_page` VALUES ('12', '1', '1', 'QS_news', '资讯首页', 'Home', 'news', 'index', '', '0', '0', 'news', '新闻资讯', '', '', '', 'Home');
INSERT INTO `qs_page` VALUES ('13', '1', '2', 'QS_newslist', '资讯列表', 'Home', 'News', 'news_list', '', '0', '0', 'news', '资讯中心 -  {categoryname} -{site_name}', '', '', 'a:2:{s:3:\"key\";s:9:\"关键字\";s:12:\"categoryname\";s:12:\"分类名称\";}', 'Home');
INSERT INTO `qs_page` VALUES ('14', '1', '3', 'QS_newsshow', '资讯详细页', 'Home', 'News', 'news_show', '', '0', '0', 'news', '{title} - {site_name}', '{seo_description}', '{seo_keywords}', 'a:3:{s:5:\"title\";s:12:\"文章标题\";s:12:\"seo_keywords\";s:18:\"Seo优化关键字\";s:15:\"seo_description\";s:16:\"Seo 优化描述\";}', 'Home');
INSERT INTO `qs_page` VALUES ('15', '1', '3', 'QS_explainshow', '说明页详细页', 'Home', 'Explain', 'explain_show', '', '0', '0', 'explain', '{title}-{site_name}', '{seo_description}', '{seo_keywords}', 'a:3:{s:5:\"title\";s:12:\"文章标题\";s:12:\"seo_keywords\";s:18:\"Seo优化关键字\";s:15:\"seo_description\";s:16:\"Seo 优化描述\";}', 'Home');
INSERT INTO `qs_page` VALUES ('16', '1', '2', 'QS_noticelist', '公告列表', 'Home', 'Notice', 'index', '', '0', '0', 'notice', '', '', '', '', 'Home');
INSERT INTO `qs_page` VALUES ('17', '1', '3', 'QS_noticeshow', '公告详细页', 'Home', 'Notice', 'notice_show', '', '0', '0', 'notice', '{title} - {site_name}', '{seo_description}', '{seo_keywords}', 'a:3:{s:5:\"title\";s:12:\"文章标题\";s:12:\"seo_keywords\";s:18:\"Seo优化关键字\";s:15:\"seo_description\";s:16:\"Seo 优化描述\";}', 'Home');
INSERT INTO `qs_page` VALUES ('18', '1', '2', 'QS_map', '地图搜索', 'Home', 'jobs', 'jobs_map', '', '0', '0', 'map', '地图搜索', '', '', '', 'Home');
INSERT INTO `qs_page` VALUES ('19', '1', '1', 'QS_help', '帮助首页', 'Home', 'Help', 'index', '', '0', '0', 'help', '帮助 - {site_name}', '', '', '', 'Home');
INSERT INTO `qs_page` VALUES ('20', '1', '2', 'QS_helplist', '帮助列表', 'Home', 'Help', 'help_list', '', '0', '0', 'help', '帮助 - {site_name}', '', '', 'a:1:{s:3:\"key\";s:9:\"关键字\";}', 'Home');
INSERT INTO `qs_page` VALUES ('21', '1', '3', 'QS_helpshow', '帮助详细页', 'Home', 'Help', 'help_show', '', '0', '0', 'help', '{title} - {site_name}', '{content}', '{title}', 'a:2:{s:5:\"title\";s:12:\"帮助标题\";s:7:\"content\";s:12:\"帮助内容\";}', 'Home');
INSERT INTO `qs_page` VALUES ('22', '1', '1', 'QS_hrtools', 'HR工具箱首页', 'Home', 'Hrtools', 'index', '', '0', '0', 'hrtools', 'HR工具箱', '', '', '', 'Home');
INSERT INTO `qs_page` VALUES ('23', '1', '1', 'QS_suggest', '意见/建议', 'Home', 'Suggest', 'index', '', '0', '0', 'suggest', '意见/建议', '', '', '', 'Home');
INSERT INTO `qs_page` VALUES ('24', '1', '1', 'QS_m', '手机频道', 'Home', 'M', 'index', '', '0', '0', 'm', '手机频道 - {site_name}', '', '', '', 'Home');

-- ----------------------------
-- Table structure for qs_payment
-- ----------------------------
DROP TABLE IF EXISTS `qs_payment`;
CREATE TABLE `qs_payment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `listorder` int(10) unsigned NOT NULL DEFAULT '50',
  `typename` varchar(15) NOT NULL,
  `byname` varchar(50) NOT NULL,
  `p_introduction` varchar(100) NOT NULL,
  `notes` text,
  `partnerid` varchar(80) DEFAULT NULL,
  `ytauthkey` varchar(100) DEFAULT NULL,
  `fee` varchar(6) NOT NULL DEFAULT '0',
  `parameter1` varchar(50) DEFAULT NULL,
  `parameter2` varchar(50) DEFAULT NULL,
  `parameter3` varchar(50) DEFAULT NULL,
  `p_install` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_payment
-- ----------------------------
INSERT INTO `qs_payment` VALUES ('1', '50', 'alipay', '支付宝', '全球领先的独立第三方支付平台', '支付宝，全球领先的独立第三方支付平台，致力于为广大用户提供安全快速的电子支付/网上支付/安全支付/手机支付体验，及转账收款/水电煤缴费/信用卡还款/AA收款等生活服务应用', '', '', '', '', '', '', '2');
INSERT INTO `qs_payment` VALUES ('2', '50', 'wxpay', '微信支付', '微信支付是集成在微信客户端的支付功能，用户可以通过手机完成快速的支付流程。', '微信支付是集成在微信客户端的支付功能，用户可以通过手机完成快速的支付流程。微信支付以绑定银行卡的快捷支付为基础，向用户提供安全、快捷、高效的支付服务。', '', 'Mr jobscomMr jobscomMr jobscomMr jobscom', '', null, null, null, '2');
INSERT INTO `qs_payment` VALUES ('3', '50', 'remittance', '线下转账', '没有开通网银的请选择此项，到款后需客服为您手动开通', '&lt;div align=&quot;center&quot;&gt;	&lt;strong style=&quot;color:#FF6600;font-size:18px;&quot;&gt;付款后请通知我们客服！为你开通相关服务！&lt;/strong&gt; &lt;/div&gt;&lt;strong style=&quot;color:#FF0000;&quot;&gt;联系客服&lt;/strong&gt; &lt;br /&gt;客服QQ:000000000;客服电话：000-0000000 &lt;br /&gt;&lt;strong style=&quot;color:#FF0000&quot;&gt;联系客服&lt;/strong&gt; &lt;br /&gt;工商银行 &lt;br /&gt;账号：000000000000000000000 &lt;br /&gt;户名：xxxxxxxxxxxxxxx &lt;br /&gt;开户行：XXXXXXXXXXXXXX &lt;br /&gt;--------------------------- &lt;br /&gt;建设银行 &lt;br /&gt;账号：000000000000000000000 &lt;br /&gt;户名：xxxxxxxxxxxxxxx &lt;br /&gt;开户行：XXXXXXXXXXXXXX &lt;br /&gt;', 'remittance', '', '0', '', '', '', '2');

-- ----------------------------
-- Table structure for qs_personal_favorites
-- ----------------------------
DROP TABLE IF EXISTS `qs_personal_favorites`;
CREATE TABLE `qs_personal_favorites` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `personal_uid` int(10) unsigned NOT NULL,
  `jobs_id` int(10) unsigned NOT NULL,
  `jobs_name` varchar(100) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`did`),
  KEY `personal_uid` (`personal_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_personal_favorites
-- ----------------------------

-- ----------------------------
-- Table structure for qs_personal_focus_company
-- ----------------------------
DROP TABLE IF EXISTS `qs_personal_focus_company`;
CREATE TABLE `qs_personal_focus_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid_2` (`uid`,`company_id`),
  KEY `uid` (`uid`),
  KEY `company_id` (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_personal_focus_company
-- ----------------------------

-- ----------------------------
-- Table structure for qs_personal_jobs_apply
-- ----------------------------
DROP TABLE IF EXISTS `qs_personal_jobs_apply`;
CREATE TABLE `qs_personal_jobs_apply` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resume_id` int(10) unsigned NOT NULL,
  `resume_name` varchar(60) NOT NULL,
  `personal_uid` int(10) unsigned NOT NULL,
  `jobs_id` int(10) unsigned NOT NULL,
  `jobs_name` varchar(60) NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `company_name` varchar(60) NOT NULL,
  `company_uid` int(10) unsigned NOT NULL,
  `apply_addtime` int(10) unsigned NOT NULL,
  `personal_look` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `notes` varchar(200) NOT NULL,
  `is_reply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_apply` tinyint(1) NOT NULL DEFAULT '0',
  `reply_time` int(11) NOT NULL,
  PRIMARY KEY (`did`),
  KEY `personal_uid_id` (`personal_uid`,`resume_id`),
  KEY `company_uid_jobid` (`company_uid`,`jobs_id`),
  KEY `company_uid_look` (`company_uid`,`personal_look`),
  KEY `personal_uid_addtime` (`personal_uid`,`apply_addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_personal_jobs_apply
-- ----------------------------

-- ----------------------------
-- Table structure for qs_personal_jobs_subscribe
-- ----------------------------
DROP TABLE IF EXISTS `qs_personal_jobs_subscribe`;
CREATE TABLE `qs_personal_jobs_subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `trade` int(11) NOT NULL,
  `trade_cn` varchar(255) NOT NULL,
  `intention_jobs_id` varchar(50) NOT NULL,
  `intention_jobs` varchar(255) NOT NULL,
  `district` varchar(50) NOT NULL,
  `district_cn` varchar(255) NOT NULL,
  `wage` int(11) NOT NULL,
  `wage_cn` varchar(255) NOT NULL,
  `email` varchar(30) NOT NULL,
  `addtime` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_personal_jobs_subscribe
-- ----------------------------

-- ----------------------------
-- Table structure for qs_personal_service_stick
-- ----------------------------
DROP TABLE IF EXISTS `qs_personal_service_stick`;
CREATE TABLE `qs_personal_service_stick` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `days` int(10) unsigned NOT NULL,
  `points` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_personal_service_stick
-- ----------------------------
INSERT INTO `qs_personal_service_stick` VALUES ('1', '3', '150', '0');
INSERT INTO `qs_personal_service_stick` VALUES ('2', '7', '280', '0');

-- ----------------------------
-- Table structure for qs_personal_service_stick_log
-- ----------------------------
DROP TABLE IF EXISTS `qs_personal_service_stick_log`;
CREATE TABLE `qs_personal_service_stick_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resume_id` int(10) unsigned NOT NULL,
  `resume_uid` int(10) unsigned NOT NULL,
  `days` int(10) unsigned NOT NULL,
  `points` int(10) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_personal_service_stick_log
-- ----------------------------

-- ----------------------------
-- Table structure for qs_personal_service_tag
-- ----------------------------
DROP TABLE IF EXISTS `qs_personal_service_tag`;
CREATE TABLE `qs_personal_service_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `days` int(10) unsigned NOT NULL,
  `points` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_personal_service_tag
-- ----------------------------
INSERT INTO `qs_personal_service_tag` VALUES ('1', '3', '60', '0');
INSERT INTO `qs_personal_service_tag` VALUES ('2', '7', '100', '0');
INSERT INTO `qs_personal_service_tag` VALUES ('3', '15', '150', '0');

-- ----------------------------
-- Table structure for qs_personal_service_tag_category
-- ----------------------------
DROP TABLE IF EXISTS `qs_personal_service_tag_category`;
CREATE TABLE `qs_personal_service_tag_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_personal_service_tag_category
-- ----------------------------

-- ----------------------------
-- Table structure for qs_personal_service_tag_log
-- ----------------------------
DROP TABLE IF EXISTS `qs_personal_service_tag_log`;
CREATE TABLE `qs_personal_service_tag_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resume_id` int(10) unsigned NOT NULL,
  `resume_uid` int(10) unsigned NOT NULL,
  `days` int(10) unsigned NOT NULL,
  `points` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_personal_service_tag_log
-- ----------------------------

-- ----------------------------
-- Table structure for qs_personal_shield_company
-- ----------------------------
DROP TABLE IF EXISTS `qs_personal_shield_company`;
CREATE TABLE `qs_personal_shield_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `comkeyword` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_personal_shield_company
-- ----------------------------

-- ----------------------------
-- Table structure for qs_pms
-- ----------------------------
DROP TABLE IF EXISTS `qs_pms`;
CREATE TABLE `qs_pms` (
  `pmid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msgtype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `msgfrom` varchar(30) NOT NULL,
  `msgfromuid` int(10) unsigned NOT NULL,
  `msgtouid` int(10) unsigned NOT NULL,
  `msgtoname` varchar(30) NOT NULL,
  `message` varchar(250) NOT NULL,
  `dateline` int(10) NOT NULL,
  `new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `reply` varchar(255) NOT NULL,
  `replytime` int(10) NOT NULL,
  `replyuid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `msgfromuid` (`msgfromuid`),
  KEY `msgtouid` (`msgtouid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_pms
-- ----------------------------

-- ----------------------------
-- Table structure for qs_pms_sys
-- ----------------------------
DROP TABLE IF EXISTS `qs_pms_sys`;
CREATE TABLE `qs_pms_sys` (
  `spmid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spms_usertype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `spms_type` tinyint(1) NOT NULL DEFAULT '1',
  `message` varchar(250) NOT NULL,
  `dateline` int(10) NOT NULL,
  PRIMARY KEY (`spmid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_pms_sys
-- ----------------------------
INSERT INTO `qs_pms_sys` VALUES ('1', '0', '1', '感谢您使用Mr jobs人才系统\r\n\r\nMr jobs人才系统官方网站：http://www.jobs.kalichimall.com', '1363941301');

-- ----------------------------
-- Table structure for qs_promotion
-- ----------------------------
DROP TABLE IF EXISTS `qs_promotion`;
CREATE TABLE `qs_promotion` (
  `cp_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cp_uid` int(10) unsigned NOT NULL,
  `cp_ptype` varchar(10) NOT NULL,
  `cp_jobid` int(10) unsigned NOT NULL,
  `cp_days` int(10) unsigned NOT NULL,
  `cp_starttime` int(10) unsigned NOT NULL,
  `cp_endtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cp_id`),
  KEY `cp_endtime` (`cp_endtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_promotion
-- ----------------------------

-- ----------------------------
-- Table structure for qs_queue_auto_refresh
-- ----------------------------
DROP TABLE IF EXISTS `qs_queue_auto_refresh`;
CREATE TABLE `qs_queue_auto_refresh` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_queue_auto_refresh
-- ----------------------------

-- ----------------------------
-- Table structure for qs_refresh_log
-- ----------------------------
DROP TABLE IF EXISTS `qs_refresh_log`;
CREATE TABLE `qs_refresh_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `mode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL,
  `type` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_refresh_log
-- ----------------------------

-- ----------------------------
-- Table structure for qs_report
-- ----------------------------
DROP TABLE IF EXISTS `qs_report`;
CREATE TABLE `qs_report` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(30) NOT NULL,
  `jobs_id` int(10) unsigned NOT NULL,
  `jobs_name` varchar(150) NOT NULL,
  `jobs_addtime` int(10) unsigned NOT NULL,
  `report_type` int(10) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `audit` int(10) NOT NULL DEFAULT '1',
  `content` varchar(250) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_report
-- ----------------------------

-- ----------------------------
-- Table structure for qs_report_resume
-- ----------------------------
DROP TABLE IF EXISTS `qs_report_resume`;
CREATE TABLE `qs_report_resume` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(30) NOT NULL,
  `resume_id` int(10) unsigned NOT NULL,
  `resume_realname` varchar(30) NOT NULL DEFAULT '',
  `resume_addtime` int(10) unsigned NOT NULL,
  `report_type` int(10) NOT NULL,
  `audit` int(10) NOT NULL DEFAULT '1',
  `content` varchar(250) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_report_resume
-- ----------------------------

-- ----------------------------
-- Table structure for qs_resume
-- ----------------------------
DROP TABLE IF EXISTS `qs_resume`;
CREATE TABLE `qs_resume` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `display` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `display_name` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `audit` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `stick` tinyint(1) unsigned NOT NULL,
  `strong_tag` int(10) unsigned NOT NULL,
  `title` varchar(80) NOT NULL,
  `fullname` varchar(15) NOT NULL,
  `sex` tinyint(3) unsigned NOT NULL,
  `sex_cn` varchar(3) NOT NULL,
  `nature` int(10) unsigned NOT NULL,
  `nature_cn` varchar(30) NOT NULL,
  `trade` varchar(60) NOT NULL,
  `trade_cn` varchar(100) NOT NULL,
  `birthdate` smallint(4) unsigned NOT NULL,
  `residence` varchar(30) NOT NULL DEFAULT '',
  `height` varchar(5) NOT NULL,
  `marriage` tinyint(3) unsigned NOT NULL,
  `marriage_cn` varchar(5) NOT NULL,
  `experience` smallint(5) NOT NULL,
  `experience_cn` varchar(30) NOT NULL,
  `district` varchar(100) NOT NULL,
  `district_cn` varchar(255) NOT NULL DEFAULT '',
  `wage` smallint(5) unsigned NOT NULL,
  `wage_cn` varchar(30) NOT NULL,
  `householdaddress` varchar(30) NOT NULL DEFAULT '',
  `education` smallint(5) unsigned NOT NULL,
  `education_cn` varchar(30) NOT NULL,
  `major` smallint(5) NOT NULL,
  `major_cn` varchar(50) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `tag_cn` varchar(100) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `email_notify` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `intention_jobs_id` varchar(100) NOT NULL,
  `intention_jobs` varchar(255) NOT NULL,
  `specialty` varchar(1000) NOT NULL,
  `photo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `photo_img` varchar(255) NOT NULL,
  `photo_audit` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `photo_display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `qq` varchar(30) NOT NULL,
  `weixin` varchar(30) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `refreshtime` int(10) unsigned NOT NULL,
  `stime` int(10) NOT NULL,
  `entrust` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `talent` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `level` tinyint(1) unsigned NOT NULL,
  `complete_percent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `current` smallint(5) unsigned NOT NULL,
  `current_cn` varchar(50) NOT NULL DEFAULT '',
  `word_resume` varchar(255) NOT NULL,
  `word_resume_title` varchar(30) NOT NULL,
  `word_resume_addtime` int(10) unsigned NOT NULL,
  `key_full` text NOT NULL,
  `key_precise` text NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `tpl` varchar(60) NOT NULL,
  `resume_from_pc` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `def` tinyint(1) NOT NULL,
  `mobile_audit` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `refreshtime` (`refreshtime`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_resume
-- ----------------------------

-- ----------------------------
-- Table structure for qs_resume_credent
-- ----------------------------
DROP TABLE IF EXISTS `qs_resume_credent`;
CREATE TABLE `qs_resume_credent` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `images` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_resume_credent
-- ----------------------------

-- ----------------------------
-- Table structure for qs_resume_education
-- ----------------------------
DROP TABLE IF EXISTS `qs_resume_education`;
CREATE TABLE `qs_resume_education` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `startyear` smallint(4) unsigned NOT NULL,
  `startmonth` smallint(2) unsigned NOT NULL,
  `endyear` smallint(4) unsigned NOT NULL,
  `endmonth` smallint(2) unsigned NOT NULL,
  `school` varchar(50) NOT NULL,
  `speciality` varchar(50) NOT NULL,
  `education` smallint(5) unsigned NOT NULL,
  `education_cn` varchar(30) NOT NULL DEFAULT '',
  `todate` int(10) unsigned NOT NULL,
  `campus_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_resume_education
-- ----------------------------

-- ----------------------------
-- Table structure for qs_resume_entrust
-- ----------------------------
DROP TABLE IF EXISTS `qs_resume_entrust`;
CREATE TABLE `qs_resume_entrust` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resume_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `fullname` varchar(15) NOT NULL,
  `entrust` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `entrust_start` int(10) unsigned NOT NULL,
  `entrust_end` int(10) unsigned NOT NULL,
  `isshield` tinyint(1) unsigned NOT NULL,
  `resume_addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_resume_entrust
-- ----------------------------

-- ----------------------------
-- Table structure for qs_resume_img
-- ----------------------------
DROP TABLE IF EXISTS `qs_resume_img`;
CREATE TABLE `qs_resume_img` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `resume_id` int(10) unsigned NOT NULL,
  `img` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(20) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL,
  `audit` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `resume_id` (`resume_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_resume_img
-- ----------------------------

-- ----------------------------
-- Table structure for qs_resume_language
-- ----------------------------
DROP TABLE IF EXISTS `qs_resume_language`;
CREATE TABLE `qs_resume_language` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `language` smallint(5) NOT NULL,
  `language_cn` varchar(50) NOT NULL,
  `level` smallint(5) unsigned NOT NULL,
  `level_cn` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_resume_language
-- ----------------------------

-- ----------------------------
-- Table structure for qs_resume_outward
-- ----------------------------
DROP TABLE IF EXISTS `qs_resume_outward`;
CREATE TABLE `qs_resume_outward` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `resume_id` int(10) unsigned NOT NULL,
  `resume_title` varchar(80) NOT NULL,
  `jobs_name` varchar(30) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resume_id` (`resume_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_resume_outward
-- ----------------------------

-- ----------------------------
-- Table structure for qs_resume_search_full
-- ----------------------------
DROP TABLE IF EXISTS `qs_resume_search_full`;
CREATE TABLE `qs_resume_search_full` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `key` text NOT NULL,
  `stime` int(10) NOT NULL,
  `refreshtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stime` (`stime`),
  KEY `refrehtime` (`refreshtime`),
  KEY `uid` (`uid`) USING BTREE,
  FULLTEXT KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_resume_search_full
-- ----------------------------

-- ----------------------------
-- Table structure for qs_resume_search_precise
-- ----------------------------
DROP TABLE IF EXISTS `qs_resume_search_precise`;
CREATE TABLE `qs_resume_search_precise` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `key` text NOT NULL,
  `stime` int(10) NOT NULL,
  `refreshtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stime` (`stime`),
  KEY `refrehtime` (`refreshtime`),
  KEY `uid` (`uid`) USING BTREE,
  FULLTEXT KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_resume_search_precise
-- ----------------------------

-- ----------------------------
-- Table structure for qs_resume_tpl
-- ----------------------------
DROP TABLE IF EXISTS `qs_resume_tpl`;
CREATE TABLE `qs_resume_tpl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `tplid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_resume_tpl
-- ----------------------------

-- ----------------------------
-- Table structure for qs_resume_training
-- ----------------------------
DROP TABLE IF EXISTS `qs_resume_training`;
CREATE TABLE `qs_resume_training` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `startyear` smallint(4) unsigned NOT NULL,
  `startmonth` smallint(2) unsigned NOT NULL,
  `endyear` smallint(4) unsigned NOT NULL,
  `endmonth` smallint(2) unsigned NOT NULL,
  `agency` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `todate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_resume_training
-- ----------------------------

-- ----------------------------
-- Table structure for qs_resume_work
-- ----------------------------
DROP TABLE IF EXISTS `qs_resume_work`;
CREATE TABLE `qs_resume_work` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `startyear` smallint(4) unsigned NOT NULL,
  `startmonth` smallint(2) unsigned NOT NULL,
  `endyear` smallint(4) unsigned NOT NULL,
  `endmonth` smallint(2) unsigned NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `jobs` varchar(30) NOT NULL,
  `achievements` varchar(1000) NOT NULL,
  `todate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_resume_work
-- ----------------------------

-- ----------------------------
-- Table structure for qs_setmeal
-- ----------------------------
DROP TABLE IF EXISTS `qs_setmeal`;
CREATE TABLE `qs_setmeal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `apply` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `setmeal_name` varchar(200) NOT NULL,
  `days` int(10) unsigned NOT NULL DEFAULT '0',
  `expense` int(10) unsigned NOT NULL,
  `jobs_meanwhile` int(10) unsigned NOT NULL DEFAULT '0',
  `refresh_jobs_free` int(10) unsigned NOT NULL,
  `download_resume` int(10) unsigned NOT NULL DEFAULT '0',
  `download_resume_max` int(10) unsigned NOT NULL DEFAULT '0',
  `added` varchar(255) NOT NULL,
  `show_order` int(10) unsigned NOT NULL DEFAULT '0',
  `set_sms` int(10) unsigned NOT NULL,
  `set_points` int(10) unsigned NOT NULL,
  `setmeal_img` varchar(200) NOT NULL,
  `show_apply_contact` tinyint(1) unsigned NOT NULL,
  `is_free` tinyint(1) unsigned NOT NULL,
  `discount_download_resume` double(2,1) unsigned NOT NULL,
  `discount_sms` double(2,1) unsigned NOT NULL,
  `discount_stick` double(2,1) unsigned NOT NULL,
  `discount_emergency` double(2,1) unsigned NOT NULL,
  `discount_tpl` double(2,1) unsigned NOT NULL,
  `discount_auto_refresh_jobs` double(2,1) unsigned NOT NULL,
  `show_contact_direct` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_setmeal
-- ----------------------------
INSERT INTO `qs_setmeal` VALUES ('1', '1', '0', '免费会员', '0', '0', '3', '3', '5', '50', '', '0', '0', '0', '', '0', '1', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0');
INSERT INTO `qs_setmeal` VALUES ('2', '1', '1', '月度会员', '30', '500', '5', '5', '150', '30', '', '0', '150', '150', '', '1', '0', '9.6', '9.6', '9.6', '9.6', '9.6', '9.6', '0');
INSERT INTO `qs_setmeal` VALUES ('3', '1', '1', '季度会员', '90', '1200', '10', '10', '400', '50', '', '0', '400', '400', '', '1', '0', '9.0', '9.0', '9.0', '9.0', '9.0', '9.0', '0');
INSERT INTO `qs_setmeal` VALUES ('4', '1', '1', '年度会员', '365', '2500', '20', '20', '1000', '100', '', '0', '1000', '1000', '', '1', '0', '8.0', '8.0', '8.0', '8.0', '8.0', '8.0', '0');

-- ----------------------------
-- Table structure for qs_setmeal_increment
-- ----------------------------
DROP TABLE IF EXISTS `qs_setmeal_increment`;
CREATE TABLE `qs_setmeal_increment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` int(10) unsigned NOT NULL,
  `price` varchar(10) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_setmeal_increment
-- ----------------------------
INSERT INTO `qs_setmeal_increment` VALUES ('1', 'download_resume', '简历下载5条', '5', '22', '0');
INSERT INTO `qs_setmeal_increment` VALUES ('2', 'download_resume', '简历下载20条', '20', '82', '0');
INSERT INTO `qs_setmeal_increment` VALUES ('3', 'download_resume', '简历下载50条', '50', '195', '0');
INSERT INTO `qs_setmeal_increment` VALUES ('4', 'download_resume', '简历下载100条', '100', '360', '0');
INSERT INTO `qs_setmeal_increment` VALUES ('5', 'sms', '短信包20条', '20', '16', '0');
INSERT INTO `qs_setmeal_increment` VALUES ('6', 'sms', '短信包50条', '50', '35', '0');
INSERT INTO `qs_setmeal_increment` VALUES ('7', 'sms', '短信包100条', '100', '60', '0');
INSERT INTO `qs_setmeal_increment` VALUES ('8', 'stick', '职位置顶3天', '3', '30', '0');
INSERT INTO `qs_setmeal_increment` VALUES ('9', 'stick', '职位置顶7天', '7', '60', '0');
INSERT INTO `qs_setmeal_increment` VALUES ('10', 'stick', '职位置顶15天', '15', '100', '0');
INSERT INTO `qs_setmeal_increment` VALUES ('11', 'emergency', '职位紧急3天', '3', '30', '0');
INSERT INTO `qs_setmeal_increment` VALUES ('12', 'emergency', '职位紧急7天', '7', '60', '0');
INSERT INTO `qs_setmeal_increment` VALUES ('13', 'emergency', '职位紧急15天', '15', '100', '0');
INSERT INTO `qs_setmeal_increment` VALUES ('14', 'auto_refresh_jobs', '刷新12次（3天）', '3', '21', '0');
INSERT INTO `qs_setmeal_increment` VALUES ('15', 'auto_refresh_jobs', '刷新28次（7天）', '7', '42', '0');
INSERT INTO `qs_setmeal_increment` VALUES ('16', 'auto_refresh_jobs', '刷新60次（15天）', '15', '60', '0');

-- ----------------------------
-- Table structure for qs_sms
-- ----------------------------
DROP TABLE IF EXISTS `qs_sms`;
CREATE TABLE `qs_sms` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `config` text NOT NULL,
  `alias` varchar(20) NOT NULL,
  `replace` varchar(255) NOT NULL,
  `filing` tinyint(1) NOT NULL,
  `remark` text NOT NULL,
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `ordid` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`,`create_time`,`update_time`,`ordid`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_sms
-- ----------------------------
INSERT INTO `qs_sms` VALUES ('1', 'Mr jobs人才系统', '', 'qscms', '', '0', '申请地址：Mr jobs人才系统 http://www.jobs.kalichimall.com/sms.php', '1456373436', '1469004894', '0', '1');
INSERT INTO `qs_sms` VALUES ('2', '阿里大鱼', '', 'alidayu', '${\\1}', '1', '', '1456373436', '1456373436', '0', '0');
INSERT INTO `qs_sms` VALUES ('3', '希奥短信', '', 'sioo', '', '0', '', '1456373436', '1456373436', '0', '0');
INSERT INTO `qs_sms` VALUES ('4', '叮咚云', '', 'dingdongyu', '{变量{++$i}}', '0', '', '1456373436', '1456373436', '0', '0');

-- ----------------------------
-- Table structure for qs_smsqueue
-- ----------------------------
DROP TABLE IF EXISTS `qs_smsqueue`;
CREATE TABLE `qs_smsqueue` (
  `s_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `s_addtime` int(10) unsigned NOT NULL,
  `s_sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  `s_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `s_mobile` text,
  `s_body` varchar(100) NOT NULL,
  `s_tplid` varchar(30) NOT NULL,
  PRIMARY KEY (`s_id`),
  KEY `s_uid` (`s_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_smsqueue
-- ----------------------------

-- ----------------------------
-- Table structure for qs_sms_config
-- ----------------------------
DROP TABLE IF EXISTS `qs_sms_config`;
CREATE TABLE `qs_sms_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_sms_config
-- ----------------------------
INSERT INTO `qs_sms_config` VALUES ('1', 'set_applyjobs', '0');
INSERT INTO `qs_sms_config` VALUES ('2', 'set_invite', '0');
INSERT INTO `qs_sms_config` VALUES ('3', 'set_order', '0');
INSERT INTO `qs_sms_config` VALUES ('4', 'set_payment', '0');
INSERT INTO `qs_sms_config` VALUES ('5', 'set_editpwd', '0');
INSERT INTO `qs_sms_config` VALUES ('6', 'set_jobsallow', '0');
INSERT INTO `qs_sms_config` VALUES ('7', 'set_jobsnotallow', '0');
INSERT INTO `qs_sms_config` VALUES ('8', 'set_licenseallow', '0');
INSERT INTO `qs_sms_config` VALUES ('9', 'set_licensenotallow', '0');
INSERT INTO `qs_sms_config` VALUES ('10', 'set_addrecommend', '1');
INSERT INTO `qs_sms_config` VALUES ('11', 'set_addmap', '0');
INSERT INTO `qs_sms_config` VALUES ('12', 'set_resumeallow', '0');
INSERT INTO `qs_sms_config` VALUES ('13', 'set_resumenotallow', '0');
INSERT INTO `qs_sms_config` VALUES ('14', 'set_downapp', '0');
INSERT INTO `qs_sms_config` VALUES ('15', 'set_resume_photoallow', '1');
INSERT INTO `qs_sms_config` VALUES ('16', 'set_resume_photonotallow', '1');

-- ----------------------------
-- Table structure for qs_sms_oauth
-- ----------------------------
DROP TABLE IF EXISTS `qs_sms_oauth`;
CREATE TABLE `qs_sms_oauth` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sid` int(10) NOT NULL,
  `tid` int(11) NOT NULL,
  `tpl_id` varchar(30) NOT NULL,
  `alias` varchar(30) NOT NULL,
  `value` text NOT NULL,
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `ordid` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_sms_oauth
-- ----------------------------

-- ----------------------------
-- Table structure for qs_sms_templates
-- ----------------------------
DROP TABLE IF EXISTS `qs_sms_templates`;
CREATE TABLE `qs_sms_templates` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(30) NOT NULL,
  `tpl_id` varchar(50) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_sms_templates
-- ----------------------------
INSERT INTO `qs_sms_templates` VALUES ('1', 'set_applyjobs', '申请职位', '{sitename}提醒您:{personalfullname}申请了您发布的职位{jobsname}，请登录{sitedomain}查看', 'qscms', '', '【网站名称】{sitename}【申请人姓名】{personalfullname}【职位名称】{jobsname}');
INSERT INTO `qs_sms_templates` VALUES ('2', 'set_invite', '邀请面试', '{sitename}提醒您：{companyname}对您发起了面试邀请，请登录{sitedomain}查看', 'qscms', '', '【网站名称】{sitename}【企业名称】{companyname}【职位名称】{jobsname}');
INSERT INTO `qs_sms_templates` VALUES ('3', 'set_order', '申请充值', '{sitename}提醒您：订单{oid}已经添加成功，付款方式为：{paymenttpye}，应付金额{amount}。请登录{sitedomain}查看', 'qscms', '', '【网站名称】{sitename}【订单号】{oid}【付款方式】{paymenttpye}【应付金额】{amount}');
INSERT INTO `qs_sms_templates` VALUES ('4', 'set_payment', '充值成功', '{sitename}提醒您：充值成功，系统已为您开通服务，请登录{sitedomain}查看', 'qscms', '', '【网站名称】{sitename}');
INSERT INTO `qs_sms_templates` VALUES ('5', 'set_editpwd', '修改密码', '{sitename}提醒您：您的密码修改成功，新密码为：{newpassword}', 'qscms', '', '【网站名称】{sitename}【新密码】{newpassword}');
INSERT INTO `qs_sms_templates` VALUES ('6', 'set_jobsallow', '职位审核通过', '{sitename}提醒您：职位({jobsname})已经通过审核！请登录{sitedomain}查看', 'qscms', '', '【网站名称】{sitename}【职位名称】{jobsname}');
INSERT INTO `qs_sms_templates` VALUES ('7', 'set_jobsnotallow', '职位审核未通过', '{sitename}提醒您：职位({jobsname})未通过审核，请修改后再次提交审核！请登录{sitedomain}查看', 'qscms', '', '【网站名称】{sitename}【职位名称】{jobsname}');
INSERT INTO `qs_sms_templates` VALUES ('8', 'set_licenseallow', '营业执照审核通过', '{sitename}提醒您：您的企业资料已认证通过！请登录{sitedomain}查看', 'qscms', '', '【网站名称】{sitename}');
INSERT INTO `qs_sms_templates` VALUES ('9', 'set_licensenotallow', '营业执照审核未通过', '{sitename}提醒您：你的企业认证未通过，请重新上传营业执照！请登录{sitedomain}查看', 'qscms', '', '【网站名称】{sitename}');
INSERT INTO `qs_sms_templates` VALUES ('10', 'set_resumeallow', '简历审核通过', '{sitename}提醒您：您的简历已通过审核！请登录{sitedomain}查看', 'qscms', '', '【网站名称】{sitename}');
INSERT INTO `qs_sms_templates` VALUES ('11', 'set_resumenotallow', '简历审核未通过', '{sitename}提醒您：您的简历未通过审核，请修改后再次提交审核！请登录{sitedomain}查看', 'qscms', '', '【网站名称】{sitename}');
INSERT INTO `qs_sms_templates` VALUES ('12', 'set_login', '手机登录验证', '您正在登录{sitename}的会员,手机验证码为:{rand},此验证码有效期为10分钟', 'qscms', '', '【网站名称】{sitename}【验证码】{rand}');
INSERT INTO `qs_sms_templates` VALUES ('13', 'set_testing', '测试', '您好！这是一条检测短信模块配置的短信。收到此短信，意味着您的短信模块设置正确！您可以进行其它操作了！', 'qscms', '', '');
INSERT INTO `qs_sms_templates` VALUES ('14', 'set_retrieve_password', '找回密码', '您正在找回{sitename}的会员密码,手机验证码为:{rand},此验证码有效期为10分钟', 'qscms', '', '【网站名称】{sitename}【验证码】{rand}');
INSERT INTO `qs_sms_templates` VALUES ('15', 'set_register', '注册账号', '您正在注册{sitename}的会员,手机验证码为:{rand},此验证码有效期为10分钟', 'qscms', '', '【网站名称】{sitename}【验证码】{rand}');
INSERT INTO `qs_sms_templates` VALUES ('16', 'set_register_resume', '快速注册简历', '欢迎您注册{sitename}，用户名：{username}，密码：{password}。您也可以直接用手机号登录。', 'qscms', '', '【网站名称】{sitename}【用户名】{username}【密码】{password}');
INSERT INTO `qs_sms_templates` VALUES ('17', 'set_mobile_auth', '手机认证', '感谢您使用{sitename}手机认证,验证码为:{rand}', 'qscms', '', '【网站名称】{sitename}【验证码】{rand}');
INSERT INTO `qs_sms_templates` VALUES ('18', 'set_mobile_verify', '手机验证', '感谢您使用{sitename}手机验证,验证码为:{rand}', 'qscms', '', '【网站名称】{sitename}【验证码】{rand}');
INSERT INTO `qs_sms_templates` VALUES ('19', 'set_applyjobs', '申请职位', '${sitename}提醒您:${personalfullname}申请了您发布的职位${jobsname}，请登录${sitedomain}查看', 'alidayu', '', '【网站名称】${sitename}【申请人姓名】${personalfullname}【职位名称】${jobsname}');
INSERT INTO `qs_sms_templates` VALUES ('20', 'set_invite', '邀请面试', '${sitename}提醒您：${companyname}对您发起了面试邀请，请登录${sitedomain}查看', 'alidayu', '', '【网站名称】${sitename}【企业名称】${companyname}【职位名称】${jobsname}');
INSERT INTO `qs_sms_templates` VALUES ('21', 'set_order', '申请充值', '${sitename}提醒您：订单${oid}已经添加成功，付款方式为：${paymenttpye}，应付金额${amount}。请登录${sitedomain}查看', 'alidayu', '', '【网站名称】${sitename}【订单号】${oid}【付款方式】${paymenttpye}【应付金额】${amount}');
INSERT INTO `qs_sms_templates` VALUES ('22', 'set_payment', '充值成功', '${sitename}提醒您：充值成功，系统已为您开通服务，请登录${sitedomain}查看', 'alidayu', '', '【网站名称】${sitename}');
INSERT INTO `qs_sms_templates` VALUES ('23', 'set_editpwd', '修改密码', '${sitename}提醒您：您的密码修改成功，新密码为：${newpassword}', 'alidayu', '', '【网站名称】${sitename}【新密码】${newpassword}');
INSERT INTO `qs_sms_templates` VALUES ('24', 'set_jobsallow', '职位审核通过', '${sitename}提醒您：职位(${jobsname})已经通过审核！请登录${sitedomain}查看', 'alidayu', '', '【网站名称】${sitename}【职位名称】${jobsname}');
INSERT INTO `qs_sms_templates` VALUES ('25', 'set_jobsnotallow', '职位审核未通过', '${sitename}提醒您：职位(${jobsname})未通过审核，请修改后再次提交审核！请登录${sitedomain}查看', 'alidayu', '', '【网站名称】${sitename}【职位名称】${jobsname}');
INSERT INTO `qs_sms_templates` VALUES ('26', 'set_licenseallow', '营业执照审核通过', '${sitename}提醒您：您的企业资料已认证通过！请登录${sitedomain}查看', 'alidayu', '', '【网站名称】${sitename}');
INSERT INTO `qs_sms_templates` VALUES ('27', 'set_licensenotallow', '营业执照审核未通过', '${sitename}提醒您：你的企业认证未通过，请重新上传营业执照！请登录${sitedomain}查看', 'alidayu', '', '【网站名称】${sitename}');
INSERT INTO `qs_sms_templates` VALUES ('28', 'set_resumeallow', '简历审核通过', '${sitename}提醒您：您的简历已通过审核！请登录${sitedomain}查看', 'alidayu', '', '【网站名称】${sitename}');
INSERT INTO `qs_sms_templates` VALUES ('29', 'set_resumenotallow', '简历审核未通过', '${sitename}提醒您：您的简历未通过审核，请修改后再次提交审核！请登录${sitedomain}查看', 'alidayu', '', '【网站名称】${sitename}');
INSERT INTO `qs_sms_templates` VALUES ('30', 'set_login', '手机登录验证', '您正在登录${sitename}的会员,手机验证码为:${rand},此验证码有效期为10分钟', 'alidayu', '', '【网站名称】${sitename}【验证码】${rand}');
INSERT INTO `qs_sms_templates` VALUES ('31', 'set_testing', '测试', '您好！这是一条检测短信模块配置的短信。收到此短信，意味着您的短信模块设置正确！您可以进行其它操作了！', 'alidayu', '', '');
INSERT INTO `qs_sms_templates` VALUES ('32', 'set_retrieve_password', '找回密码', '您正在找回${sitename}的会员密码,手机验证码为:${rand},此验证码有效期为10分钟', 'alidayu', '', '【网站名称】${sitename}【验证码】${rand}');
INSERT INTO `qs_sms_templates` VALUES ('33', 'set_register', '注册账号', '您正在注册${sitename}的会员,手机验证码为:${rand},此验证码有效期为10分钟', 'alidayu', '', '【网站名称】${sitename}【验证码】${rand}');
INSERT INTO `qs_sms_templates` VALUES ('34', 'set_register_resume', '快速注册简历', '欢迎您注册${sitename}，用户名：${username}，密码：${password}。您也可以直接用手机号登录。', 'alidayu', '', '【网站名称】${sitename}【用户名】${username}【密码】${password}');
INSERT INTO `qs_sms_templates` VALUES ('35', 'set_mobile_auth', '手机认证', '感谢您使用${sitename}手机认证,验证码为:${rand}', 'alidayu', '', '【网站名称】${sitename}【验证码】${rand}');
INSERT INTO `qs_sms_templates` VALUES ('36', 'set_mobile_verify', '手机验证', '感谢您使用${sitename}手机验证,验证码为:${rand}', 'alidayu', '', '【网站名称】${sitename}【验证码】${rand}');
INSERT INTO `qs_sms_templates` VALUES ('37', 'set_applyjobs', '申请职位', '{sitename}提醒您:{personalfullname}申请了您发布的职位{jobsname}，请登录{sitedomain}查看', 'sioo', '', '【网站名称】{sitename}【申请人姓名】{personalfullname}【职位名称】{jobsname}');
INSERT INTO `qs_sms_templates` VALUES ('38', 'set_invite', '邀请面试', '{sitename}提醒您：{companyname}对您发起了面试邀请，请登录{sitedomain}查看', 'sioo', '', '【网站名称】{sitename}【企业名称】{companyname}【职位名称】{jobsname}');
INSERT INTO `qs_sms_templates` VALUES ('39', 'set_order', '申请充值', '{sitename}提醒您：订单{oid}已经添加成功，付款方式为：{paymenttpye}，应付金额{amount}。请登录{sitedomain}查看', 'sioo', '', '【网站名称】{sitename}【订单号】{oid}【付款方式】{paymenttpye}【应付金额】{amount}');
INSERT INTO `qs_sms_templates` VALUES ('40', 'set_payment', '充值成功', '{sitename}提醒您：充值成功，系统已为您开通服务，请登录{sitedomain}查看', 'sioo', '', '【网站名称】{sitename}');
INSERT INTO `qs_sms_templates` VALUES ('41', 'set_editpwd', '修改密码', '{sitename}提醒您：您的密码修改成功，新密码为：{newpassword}', 'sioo', '', '【网站名称】{sitename}【新密码】{newpassword}');
INSERT INTO `qs_sms_templates` VALUES ('42', 'set_jobsallow', '职位审核通过', '{sitename}提醒您：职位({jobsname})已经通过审核！请登录{sitedomain}查看', 'sioo', '', '【网站名称】{sitename}【职位名称】{jobsname}');
INSERT INTO `qs_sms_templates` VALUES ('43', 'set_jobsnotallow', '职位审核未通过', '{sitename}提醒您：职位({jobsname})未通过审核，请修改后再次提交审核！请登录{sitedomain}查看', 'sioo', '', '【网站名称】{sitename}【职位名称】{jobsname}');
INSERT INTO `qs_sms_templates` VALUES ('44', 'set_licenseallow', '营业执照审核通过', '{sitename}提醒您：您的企业资料已认证通过！请登录{sitedomain}查看', 'sioo', '', '【网站名称】{sitename}');
INSERT INTO `qs_sms_templates` VALUES ('45', 'set_licensenotallow', '营业执照审核未通过', '{sitename}提醒您：你的企业认证未通过，请重新上传营业执照！请登录{sitedomain}查看', 'sioo', '', '【网站名称】{sitename}');
INSERT INTO `qs_sms_templates` VALUES ('46', 'set_resumeallow', '简历审核通过', '{sitename}提醒您：您的简历已通过审核！请登录{sitedomain}查看', 'sioo', '', '【网站名称】{sitename}');
INSERT INTO `qs_sms_templates` VALUES ('47', 'set_resumenotallow', '简历审核未通过', '{sitename}提醒您：您的简历未通过审核，请修改后再次提交审核！请登录{sitedomain}查看', 'sioo', '', '【网站名称】{sitename}');
INSERT INTO `qs_sms_templates` VALUES ('48', 'set_login', '手机登录验证', '您正在登录{sitename}的会员,手机验证码为:{rand},此验证码有效期为10分钟', 'sioo', '', '【网站名称】{sitename}【验证码】{rand}');
INSERT INTO `qs_sms_templates` VALUES ('49', 'set_testing', '测试', '您好！这是一条检测短信模块配置的短信。收到此短信，意味着您的短信模块设置正确！您可以进行其它操作了！', 'sioo', '', '');
INSERT INTO `qs_sms_templates` VALUES ('50', 'set_retrieve_password', '找回密码', '您正在找回{sitename}的会员密码,手机验证码为:{rand},此验证码有效期为10分钟', 'sioo', '', '【网站名称】{sitename}【验证码】{rand}');
INSERT INTO `qs_sms_templates` VALUES ('51', 'set_register', '注册账号', '您正在注册{sitename}的会员,手机验证码为:{rand},此验证码有效期为10分钟', 'sioo', '', '【网站名称】{sitename}【验证码】{rand}');
INSERT INTO `qs_sms_templates` VALUES ('52', 'set_register_resume', '快速注册简历', '欢迎您注册{sitename}，用户名：{username}，密码：{password}。您也可以直接用手机号登录。', 'sioo', '', '【网站名称】{sitename}【用户名】{username}【密码】{password}');
INSERT INTO `qs_sms_templates` VALUES ('53', 'set_mobile_auth', '手机认证', '感谢您使用{sitename}手机认证,验证码为:{rand}', 'sioo', '', '【网站名称】{sitename}【验证码】{rand}');
INSERT INTO `qs_sms_templates` VALUES ('54', 'set_mobile_verify', '手机验证', '感谢您使用{sitename}手机验证,验证码为:{rand}', 'sioo', '', '【网站名称】{sitename}【验证码】{rand}');
INSERT INTO `qs_sms_templates` VALUES ('55', 'set_applyjobs', '申请职位', '{变量1}提醒您:{变量2}申请了您发布的职位{变量3}，请登录{变量4}查看', 'dingdongyu', '', '【网站名称】{变量1}【申请人姓名】{变量2}【职位名称】{变量3}');
INSERT INTO `qs_sms_templates` VALUES ('56', 'set_invite', '邀请面试', '{变量1}提醒您：{变量2}对您发起了面试邀请，请登录{变量3}查看', 'dingdongyu', '', '【网站名称】{变量1}【企业名称】{变量2}【职位名称】{变量3}');
INSERT INTO `qs_sms_templates` VALUES ('57', 'set_order', '申请充值', '{变量1}提醒您：订单{变量2}已经添加成功，付款方式为：{变量3}，应付金额{变量4}。请登录{变量5}查看', 'dingdongyu', '', '【网站名称】{变量1}【订单号】{变量2}【付款方式】{变量3}【应付金额】{变量4}');
INSERT INTO `qs_sms_templates` VALUES ('58', 'set_payment', '充值成功', '{变量1}提醒您：充值成功，系统已为您开通服务，请登录{变量2}查看', 'dingdongyu', '', '【网站名称】{变量1}');
INSERT INTO `qs_sms_templates` VALUES ('59', 'set_editpwd', '修改密码', '{变量1}提醒您：您的密码修改成功，新密码为：{变量2}', 'dingdongyu', '', '【网站名称】{变量1}【新密码】{变量2}');
INSERT INTO `qs_sms_templates` VALUES ('60', 'set_jobsallow', '职位审核通过', '{变量1}提醒您：职位({变量2})已经通过审核！请登录{变量3}查看', 'dingdongyu', '', '【网站名称】{变量1}【职位名称】{变量2}');
INSERT INTO `qs_sms_templates` VALUES ('61', 'set_jobsnotallow', '职位审核未通过', '{变量1}提醒您：职位({变量2})未通过审核，请修改后再次提交审核！请登录{变量3}查看', 'dingdongyu', '', '【网站名称】{变量1}【职位名称】{变量2}');
INSERT INTO `qs_sms_templates` VALUES ('62', 'set_licenseallow', '营业执照审核通过', '{变量1}提醒您：您的企业资料已认证通过！请登录{变量2}查看', 'dingdongyu', '', '【网站名称】{变量1}');
INSERT INTO `qs_sms_templates` VALUES ('63', 'set_licensenotallow', '营业执照审核未通过', '{变量1}提醒您：你的企业认证未通过，请重新上传营业执照！请登录{变量2}查看', 'dingdongyu', '', '【网站名称】{变量1}');
INSERT INTO `qs_sms_templates` VALUES ('64', 'set_resumeallow', '简历审核通过', '{变量1}提醒您：您的简历已通过审核！请登录{变量2}查看', 'dingdongyu', '', '【网站名称】{变量1}');
INSERT INTO `qs_sms_templates` VALUES ('65', 'set_resumenotallow', '简历审核未通过', '{变量1}提醒您：您的简历未通过审核，请修改后再次提交审核！请登录{变量2}查看', 'dingdongyu', '', '【网站名称】{变量1}');
INSERT INTO `qs_sms_templates` VALUES ('66', 'set_login', '手机登录验证', '您正在登录{变量1}的会员,手机验证码为:{变量2},此验证码有效期为10分钟', 'dingdongyu', '', '【网站名称】{变量1}【验证码】{变量2}');
INSERT INTO `qs_sms_templates` VALUES ('67', 'set_testing', '测试', '您好！这是一条检测短信模块配置的短信。收到此短信，意味着您的短信模块设置正确！您可以进行其它操作了！', 'dingdongyu', '', '');
INSERT INTO `qs_sms_templates` VALUES ('68', 'set_retrieve_password', '找回密码', '您正在找回{变量1}的会员密码,手机验证码为:{变量2},此验证码有效期为10分钟', 'dingdongyu', '', '【网站名称】{变量1}【验证码】{变量2}');
INSERT INTO `qs_sms_templates` VALUES ('69', 'set_register', '注册账号', '您正在注册{变量1}的会员,手机验证码为:{变量2},此验证码有效期为10分钟', 'dingdongyu', '', '【网站名称】{变量1}【验证码】{变量2}');
INSERT INTO `qs_sms_templates` VALUES ('70', 'set_register_resume', '快速注册简历', '欢迎您注册{变量1}，用户名：{变量2}，密码：{变量3}。您也可以直接用手机号登录。', 'dingdongyu', '', '【网站名称】{变量1}【用户名】{变量2}【密码】{变量3}');
INSERT INTO `qs_sms_templates` VALUES ('71', 'set_mobile_auth', '手机认证', '感谢您使用{变量1}手机认证,验证码为:{变量2}', 'dingdongyu', '', '【网站名称】{变量1}【验证码】{变量2}');
INSERT INTO `qs_sms_templates` VALUES ('72', 'set_mobile_verify', '手机验证', '感谢您使用{变量1}手机验证,验证码为:{变量2}', 'dingdongyu', '', '【网站名称】{变量1}【验证码】{变量2}');

-- ----------------------------
-- Table structure for qs_syslog
-- ----------------------------
DROP TABLE IF EXISTS `qs_syslog`;
CREATE TABLE `qs_syslog` (
  `l_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `l_type` tinyint(1) unsigned NOT NULL,
  `l_type_name` varchar(30) NOT NULL,
  `l_time` int(10) unsigned NOT NULL,
  `l_ip` varchar(20) NOT NULL,
  `l_address` varchar(50) NOT NULL,
  `l_page` text NOT NULL,
  `l_str` text NOT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_syslog
-- ----------------------------

-- ----------------------------
-- Table structure for qs_sys_email_log
-- ----------------------------
DROP TABLE IF EXISTS `qs_sys_email_log`;
CREATE TABLE `qs_sys_email_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_from` varchar(50) NOT NULL,
  `send_to` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `state` smallint(3) NOT NULL,
  `sendtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_sys_email_log
-- ----------------------------

-- ----------------------------
-- Table structure for qs_task
-- ----------------------------
DROP TABLE IF EXISTS `qs_task`;
CREATE TABLE `qs_task` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `t_alias` varchar(30) NOT NULL,
  `points` int(10) unsigned NOT NULL,
  `once` tinyint(1) unsigned NOT NULL,
  `becount` tinyint(1) unsigned NOT NULL,
  `times` tinyint(3) NOT NULL,
  `utype` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `dayly` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_task
-- ----------------------------
INSERT INTO `qs_task` VALUES ('1', '注册账号', 'reg', '30', '1', '1', '0', '2', '0', '1');
INSERT INTO `qs_task` VALUES ('2', '完善基本资料', 'user_info', '20', '1', '1', '0', '2', '0', '1');
INSERT INTO `qs_task` VALUES ('3', '每日签到', 'sign', '5', '0', '1', '1', '2', '1', '1');
INSERT INTO `qs_task` VALUES ('4', '每日投递简历', 'submit_resume', '5', '0', '1', '10', '2', '0', '1');
INSERT INTO `qs_task` VALUES ('5', '上传头像', 'upload_avatar', '20', '1', '1', '0', '2', '0', '1');
INSERT INTO `qs_task` VALUES ('6', '每日刷新简历', 'refresh_resume', '5', '0', '1', '3', '2', '0', '1');
INSERT INTO `qs_task` VALUES ('7', '认证手机', 'verified_mobile', '20', '1', '1', '0', '2', '0', '1');
INSERT INTO `qs_task` VALUES ('8', '绑定微博', 'binding_weibo', '10', '1', '1', '0', '2', '0', '1');
INSERT INTO `qs_task` VALUES ('9', '绑定QQ账号', 'binding_qq', '10', '1', '1', '0', '2', '0', '1');
INSERT INTO `qs_task` VALUES ('10', '绑定淘宝账号', 'binding_taobao', '10', '1', '1', '0', '2', '0', '1');
INSERT INTO `qs_task` VALUES ('11', '简历完整度达到90%', 'complete_90', '50', '1', '1', '0', '2', '0', '1');
INSERT INTO `qs_task` VALUES ('12', '简历完整度达到60%', 'complete_60', '20', '1', '1', '0', '2', '0', '1');
INSERT INTO `qs_task` VALUES ('13', '举报职位', 'report_jobs', '10', '0', '0', '-1', '2', '0', '1');
INSERT INTO `qs_task` VALUES ('14', '邀请注册', 'invitation_reg', '10', '0', '0', '-1', '2', '0', '1');
INSERT INTO `qs_task` VALUES ('15', '绑定微信', 'binding_weixin', '20', '1', '1', '0', '2', '0', '1');
INSERT INTO `qs_task` VALUES ('16', '验证邮箱', 'verified_email', '20', '1', '1', '0', '2', '0', '1');
INSERT INTO `qs_task` VALUES ('17', '注册账号', 'reg', '50', '1', '1', '0', '1', '0', '1');
INSERT INTO `qs_task` VALUES ('18', '每日签到', 'sign', '5', '0', '1', '1', '1', '1', '1');
INSERT INTO `qs_task` VALUES ('19', '上传logo', 'upload_logo', '30', '1', '1', '0', '1', '0', '1');
INSERT INTO `qs_task` VALUES ('20', '上传企业风采', 'upload_companyimg', '20', '1', '1', '0', '1', '0', '1');
INSERT INTO `qs_task` VALUES ('21', '举报简历', 'report_resume', '10', '0', '0', '-1', '1', '0', '1');
INSERT INTO `qs_task` VALUES ('22', '验证手机', 'verified_mobile', '25', '1', '1', '0', '1', '0', '1');
INSERT INTO `qs_task` VALUES ('23', '验证邮箱', 'verified_email', '25', '1', '1', '0', '1', '0', '1');
INSERT INTO `qs_task` VALUES ('24', '绑定微博', 'binding_weibo', '10', '1', '1', '0', '1', '0', '1');
INSERT INTO `qs_task` VALUES ('25', '绑定QQ账号', 'binding_qq', '10', '1', '1', '0', '1', '0', '1');
INSERT INTO `qs_task` VALUES ('26', '绑定淘宝账号', 'binding_taobao', '10', '1', '1', '0', '1', '0', '1');
INSERT INTO `qs_task` VALUES ('27', '完善企业资料', 'done_profile', '50', '1', '1', '0', '1', '0', '1');
INSERT INTO `qs_task` VALUES ('28', '处理3天内收到的简历', 'handle_resume', '10', '0', '1', '10', '1', '0', '1');
INSERT INTO `qs_task` VALUES ('29', '开通电子地图', 'set_map', '20', '1', '1', '0', '1', '0', '1');
INSERT INTO `qs_task` VALUES ('30', '上传营业执照并通过认证', 'license_audit', '50', '1', '1', '0', '1', '0', '1');
INSERT INTO `qs_task` VALUES ('31', '推荐注册', 'invitation_reg', '10', '0', '0', '-1', '1', '0', '1');
INSERT INTO `qs_task` VALUES ('32', '及时回复求职者咨询', 'reply_consultation', '10', '0', '1', '10', '1', '0', '1');
INSERT INTO `qs_task` VALUES ('33', '绑定微信', 'binding_weixin', '20', '1', '1', '0', '1', '0', '1');

-- ----------------------------
-- Table structure for qs_task_log
-- ----------------------------
DROP TABLE IF EXISTS `qs_task_log`;
CREATE TABLE `qs_task_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `taskid` int(10) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `points` int(10) unsigned NOT NULL,
  `once` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_taskid_addtime` (`uid`,`taskid`,`addtime`),
  KEY `uid_taskid` (`uid`,`taskid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_task_log
-- ----------------------------

-- ----------------------------
-- Table structure for qs_text
-- ----------------------------
DROP TABLE IF EXISTS `qs_text`;
CREATE TABLE `qs_text` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_text
-- ----------------------------
INSERT INTO `qs_text` VALUES ('1', 'agreement', '请完善注册协议');

-- ----------------------------
-- Table structure for qs_tpl
-- ----------------------------
DROP TABLE IF EXISTS `qs_tpl`;
CREATE TABLE `qs_tpl` (
  `tpl_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tpl_type` tinyint(1) NOT NULL,
  `tpl_name` varchar(80) NOT NULL,
  `tpl_display` tinyint(1) NOT NULL DEFAULT '1',
  `tpl_dir` varchar(80) NOT NULL,
  `tpl_val` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tpl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_tpl
-- ----------------------------
INSERT INTO `qs_tpl` VALUES ('1', '2', '默认模版', '1', 'default', '0');
INSERT INTO `qs_tpl` VALUES ('2', '1', '默认模版', '1', 'default', '0');

-- ----------------------------
-- Table structure for qs_view_jobs
-- ----------------------------
DROP TABLE IF EXISTS `qs_view_jobs`;
CREATE TABLE `qs_view_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `jobs_uid` int(10) NOT NULL,
  `jobsid` int(10) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_view_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for qs_view_resume
-- ----------------------------
DROP TABLE IF EXISTS `qs_view_resume`;
CREATE TABLE `qs_view_resume` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `resumeid` int(10) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qs_view_resume
-- ----------------------------
