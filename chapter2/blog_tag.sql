CREATE TABLE `blog_tag`
(
    `id`          int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id',
    `name`        varchar(100) DEFAULT NULL COMMENT '标签名称',
    `state`       tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态：0-禁用 1-启用',
    `created_on`  int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
    `created_by`  varchar(100) DEFAULT NULL COMMENT '创建人',
    `modified_on` int(10) unsigned DEFAULT '0' COMMENT '修改时间',
    `modified_by` varchar(100) DEFAULT NULL COMMENT '修改人',
    `deleted_on`  int(10) unsigned DEFAULT '0' COMMENT '删除时间',
    `is_del`      tinyint(3) unsigned DEFAULT '0' COMMENT '是否删除：0-未删除 1-已删除',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;