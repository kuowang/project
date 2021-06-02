CREATE TABLE `sp_engin_programme` (
    `id`             int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '方案id',
    `project_id`     int(11) DEFAULT NULL COMMENT '项目id',
    `engin_id`       int(11) DEFAULT NULL COMMENT '工程id',
    `programme_name` varchar(1000) DEFAULT NULL COMMENT '方案名称',
    `status`         tinyint(4) DEFAULT '0' COMMENT '状态 最终选择到实施中的方案 1 是 0否',
    `created_uid`    int(11) DEFAULT NULL COMMENT '创建用户',
    `created_at`     date          DEFAULT NULL COMMENT '创建时间',
    `edit_uid`       int(11) unsigned zerofill DEFAULT NULL COMMENT '修改用户id',
    `update_at`      date          DEFAULT NULL COMMENT '修改时间',
    `budget_id`      int(11) unsigned zerofill DEFAULT '0' COMMENT '预算单id',
    `offer_id`       int(11) unsigned zerofill DEFAULT '0' COMMENT '报价单id',
    `budget_status`  tinyint(3) unsigned zerofill DEFAULT '000' COMMENT '是否提交到预算中1是0否',
    `offer_status`   tinyint(3) unsigned zerofill DEFAULT '000' COMMENT '是否提交到报价中 1是 0否',
    PRIMARY KEY (`id`),
    KEY   `project_engin` (`project_id`,`engin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='工程方案列表';


ALTER TABLE `sp_enginnering_architectural`
    ADD COLUMN `programme_id`  int(11) NULL COMMENT '方案id' AFTER `arch_id`;
