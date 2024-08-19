CREATE TABLE `blog_article_tag`
(
    `id`          INT ( 10 ) UNSIGNED NOT NULL AUTO_INCREMENT,
    `article_id`  INT ( 11 ) NOT NULL COMMENT '文章ID',
    `tag_id`      INT ( 10 ) UNSIGNED NOT NULL DEFAULT '0' COMMENT '标签ID',
    `created_on`  INT ( 10 ) UNSIGNED DEFAULT '0' COMMENT '创建时间',
    `created_by`  VARCHAR(100) DEFAULT '' COMMENT '创建人',
    `modified_on` INT ( 10 ) UNSIGNED DEFAULT '0' COMMENT '修改时间',
    `modified_by` VARCHAR(100) DEFAULT '' COMMENT '修改人',
    `deleted_on`  INT ( 10 ) UNSIGNED DEFAULT '0' COMMENT '删除时间',
    `is_del`      TINYINT ( 3 ) UNSIGNED DEFAULT '0' COMMENT '是否删除： 0为未删除、1为已删除',
    PRIMARY KEY (`id`)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '文章标签关联';