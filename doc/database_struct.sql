DROP TABLE IF EXISTS  `error`;
CREATE TABLE `error` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT 'Ĭ�ϴ���',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) DEFAULT NULL,
  `context` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
DROP TABLE IF EXISTS  `info`;
CREATE TABLE `info` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT '0',
  `beizhu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
DROP TABLE IF EXISTS  `result`;
CREATE TABLE `result` (
  `rid` int(11) NOT NULL AUTO_INCREMENT COMMENT '�ɼ�id',
  `uid` varchar(16) NOT NULL DEFAULT '0' COMMENT '�û�id',
  `sid` varchar(16) NOT NULL DEFAULT '0' COMMENT '�γ̺�',
  `sname` varchar(128) NOT NULL DEFAULT '�γ���δ����' COMMENT '�γ���',
  `spoint` decimal(10,1) NOT NULL DEFAULT '0.0' COMMENT '�γ�ѧ��',
  `stype` varchar(11) DEFAULT NULL COMMENT '�γ�����',
  `score` varchar(11) DEFAULT NULL COMMENT '�ɼ�',
  `gradepoint` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '����',
  `type` varchar(255) DEFAULT NULL COMMENT '���',
  `xuewei` varchar(4) DEFAULT NULL COMMENT '�Ƿ�ѧλ��',
  `rank` int(11) DEFAULT NULL COMMENT '����',
  `numperson` int(11) DEFAULT NULL COMMENT 'ѡ������',
  PRIMARY KEY (`rid`),
  UNIQUE KEY `uid����` (`uid`,`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=59934648 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
DROP TABLE IF EXISTS  `user`;
CREATE TABLE `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `classid` varchar(16) DEFAULT NULL,
  `school` varchar(32) DEFAULT NULL,
  `major` varchar(32) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1716840 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
DROP TABLE IF EXISTS  `user_print`;
CREATE TABLE `user_print` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(32) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `classid` varchar(16) DEFAULT NULL,
  `school` varchar(32) DEFAULT NULL,
  `major` varchar(32) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=37838 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
DROP TABLE IF EXISTS  `user_agent`;
CREATE TABLE `user_agent` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `browser` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `HTTP_USER_AGENT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=649034 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='�����û��Ĳ���ϵͳ�������Ϣ';
