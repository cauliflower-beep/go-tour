CREATE TABLE `blog_article`
(
    `id`              INT ( 10 ) UNSIGNED NOT NULL AUTO_INCREMENT,
    `title`           VARCHAR(100) DEFAULT '' COMMENT '文章标题',
    `desc`            VARCHAR(255) DEFAULT '' COMMENT '文章简述',
    `cover_image_url` VARCHAR(255) DEFAULT '' COMMENT '封面图片地址',
    `content`         LONGTEXT COMMENT '文章内容',
    `created_on`      INT ( 10 ) UNSIGNED DEFAULT '0' COMMENT '新建时间',
    `created_by`      VARCHAR(100) DEFAULT '' COMMENT '创建人',
    `modified_on`     INT ( 10 ) UNSIGNED DEFAULT '0' COMMENT '修改时间',
    `modified_by`     VARCHAR(100) DEFAULT '' COMMENT '修改人',
    `deleted_on`      INT ( 10 ) UNSIGNED DEFAULT '0' COMMENT '删除时间',
    `is_del`          TINYINT ( 3 ) UNSIGNED DEFAULT '0' COMMENT '是否删除： 0为未删除、1为已删除',
    `state`           TINYINT ( 3 ) UNSIGNED DEFAULT '1' COMMENT '状态：0为禁用、1为启用',
    PRIMARY KEY (`id`)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '文章管理';