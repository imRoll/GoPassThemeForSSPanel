SET FOREIGN_KEY_CHECKS=0;

ALTER TABLE `alive_ip` ROW_FORMAT = Compact;

ALTER TABLE `announcement` ROW_FORMAT = Compact;

ALTER TABLE `auto` ROW_FORMAT = Compact;

ALTER TABLE `blockip` ROW_FORMAT = Compact;

ALTER TABLE `bought` ROW_FORMAT = Compact;

ALTER TABLE `code` ROW_FORMAT = Compact;

ALTER TABLE `coupon` ROW_FORMAT = Compact;

ALTER TABLE `detect_ban_log` ROW_FORMAT = Compact;

ALTER TABLE `detect_list` ROW_FORMAT = Compact;

ALTER TABLE `detect_log` ROW_FORMAT = Compact;

ALTER TABLE `disconnect_ip` ROW_FORMAT = Compact;

ALTER TABLE `email_verify` ROW_FORMAT = Compact;

ALTER TABLE `gconfig` ROW_FORMAT = Compact;

ALTER TABLE `link` ROW_FORMAT = Compact;

ALTER TABLE `login_ip` ROW_FORMAT = Compact;

ALTER TABLE `payback` ROW_FORMAT = Compact;

ALTER TABLE `paylist` ROW_FORMAT = Compact;

ALTER TABLE `radius_ban` ROW_FORMAT = Compact;

ALTER TABLE `relay` ROW_FORMAT = Compact;

ALTER TABLE `shop` ROW_FORMAT = Compact;

ALTER TABLE `speedtest` ROW_FORMAT = Compact;

ALTER TABLE `ss_invite_code` ROW_FORMAT = Compact;

ALTER TABLE `ss_invite_code` MODIFY COLUMN `updated_at` timestamp(0) NOT NULL DEFAULT '2016-06-01 08:00:00' AFTER `created_at`;

ALTER TABLE `ss_node` COLLATE = utf8mb4_general_ci, ROW_FORMAT = Compact;

ALTER TABLE `ss_node` ADD COLUMN `sort2` int(32) NULL DEFAULT NULL AFTER `mu_only`;

ALTER TABLE `ss_node` MODIFY COLUMN `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL AFTER `id`;

ALTER TABLE `ss_node` MODIFY COLUMN `server` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL AFTER `type`;

ALTER TABLE `ss_node` MODIFY COLUMN `method` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL AFTER `server`;

ALTER TABLE `ss_node` MODIFY COLUMN `info` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL AFTER `method`;

ALTER TABLE `ss_node` MODIFY COLUMN `status` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL AFTER `info`;

ALTER TABLE `ss_node` MODIFY COLUMN `node_ip` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL AFTER `node_heartbeat`;

ALTER TABLE `ss_node_info` ROW_FORMAT = Compact;

ALTER TABLE `ss_node_online_log` ROW_FORMAT = Compact;

ALTER TABLE `ss_password_reset` ROW_FORMAT = Compact;

ALTER TABLE `telegram_session` ROW_FORMAT = Compact;

ALTER TABLE `telegram_tasks` ROW_FORMAT = Compact;

ALTER TABLE `ticket` ROW_FORMAT = Compact;

ALTER TABLE `unblockip` ROW_FORMAT = Compact;

ALTER TABLE `user` ROW_FORMAT = Compact;

ALTER TABLE `user` ADD COLUMN `quantitypay` int(11) NULL DEFAULT 0 AFTER `node_connector`;

ALTER TABLE `user` ADD COLUMN `ref_accid` int(1) NULL DEFAULT 0 AFTER `telegram_id`;

ALTER TABLE `user` ADD COLUMN `ref_acc` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `ref_accid`;

ALTER TABLE `user` ADD COLUMN `ref_money` decimal(12, 2) NOT NULL DEFAULT 0.00 AFTER `ref_acc`;

ALTER TABLE `user` ADD COLUMN `agent_id` int(11) NOT NULL DEFAULT 0 AFTER `ref_money`;

ALTER TABLE `user` ADD COLUMN `is_agent` int(11) NULL DEFAULT NULL AFTER `agent_id`;

ALTER TABLE `user` ADD COLUMN `creta` int(2) NULL DEFAULT NULL AFTER `is_agent`;

ALTER TABLE `user` ADD COLUMN `ssrlink` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `creta`;

ALTER TABLE `user` MODIFY COLUMN `user_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL AFTER `id`;

ALTER TABLE `user` MODIFY COLUMN `plan` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'A' AFTER `d`;

ALTER TABLE `user_subscribe_log` ROW_FORMAT = Compact;

ALTER TABLE `user_token` ROW_FORMAT = Compact;

ALTER TABLE `user_traffic_log` ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS=1;