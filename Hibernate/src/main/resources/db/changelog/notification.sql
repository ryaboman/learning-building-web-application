CREATE TABLE `notification` (
                                `id_ntf` int(11) NOT NULL AUTO_INCREMENT,
                                `type_ntf` varchar(45) DEFAULT NULL COMMENT 'Ð’Ð¸Ð´ Ð¸Ð·Ð²ÐµÑ‰ÐµÐ½Ð¸Ñ:\nÐ˜Ð˜ Ð½Ð° ÑÐµÑ€Ð¸Ð¹Ð½Ð¾Ðµ Ð¸Ð·Ð´ÐµÐ»Ð¸Ðµ;\nÐ˜Ð˜ Ð½Ð° Ð¾Ð¿Ñ‹Ñ‚Ð½Ñ‹Ð¹ Ð¾Ð±Ñ€Ð°Ð·ÐµÑ†',
                                `mark_ntf` varchar(45) NOT NULL COMMENT 'ÐžÐ±Ð¾Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð¸Ð·Ð²ÐµÑ‰ÐµÐ½Ð¸Ñ',
                                `puth_to_ntf` varchar(90) DEFAULT NULL COMMENT 'Ð¡ÐµÑ‚ÐµÐ²Ð¾Ð¹ Ð¿ÑƒÑ‚ÑŒ Ðº Ð¸Ð·Ð²ÐµÑ‰ÐµÐ½Ð¸ÑŽ',
                                `device_id` int(11) NOT NULL,
                                `user_id` int(11) NOT NULL COMMENT 'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ Ð´Ð¾Ð±Ð°Ð²Ð¸Ð²ÑˆÐ¸Ð¹ Ð´Ð°Ð½Ð½Ð¾Ðµ Ð¸Ð·Ð²ÐµÑ‰ÐµÐ½Ð¸Ðµ',
                                `ntf_dep` varchar(15) DEFAULT '95000000',
                                `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                                `commentary` varchar(255) DEFAULT NULL COMMENT 'ÐŸÑ€Ð¸Ð¼ÐµÑ‡Ð°Ð½Ð¸Ðµ',
                                `developer` varchar(45) DEFAULT NULL COMMENT 'Ð Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚Ñ‡Ð¸Ðº Ð¸Ð·Ð²ÐµÑ‰ÐµÐ½Ð¸Ñ.\nÐ Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚Ñ‡Ð¸Ðº Ð¸ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ Ð´Ð¾Ð±Ð°Ð²Ð¸Ð²ÑˆÐ¸Ð¹ Ð¸Ð·Ð²ÐµÑ‰ÐµÐ½Ð¸Ðµ Ð² Ð‘Ð” Ð¼Ð¾Ð³ÑƒÑ‚ Ð±Ñ‹Ñ‚ÑŒ Ñ€Ð°Ð·Ð½Ñ‹Ð¼Ð¸ Ð¿ÐµÑ€ÑÐ¾Ð½Ð°Ð¼Ð¸.',
                                `amount_page` int(3) DEFAULT NULL,
                                `id_reason` int(3) DEFAULT NULL COMMENT 'Ð¡Ñ‚Ð°Ð½Ð´Ð°Ñ€Ñ‚Ð½Ð°Ñ Ð¿Ñ€Ð¸Ñ‡Ð¸Ð½Ð° ÐºÐ¾Ñ€Ñ€ÐµÐºÑ†Ð¸Ð¸',
                                `detailed_reason` varchar(255) DEFAULT NULL COMMENT 'ÐŸÐ¾Ð´Ñ€Ð¾Ð±Ð½Ð°Ñ Ð¿Ñ€Ð¸Ñ‡Ð¸Ð½Ð° ÐºÐ¾Ñ€Ñ€ÐµÐºÑ†Ð¸Ð¸',
                                `subject_id` int(11) NOT NULL COMMENT 'id Ñ‚ÐµÐ¼Ñ‹ Ð¸Ð·Ð´ÐµÐ»Ð¸Ñ',
                                `managerSubject` varchar(45) NOT NULL,
                                `date` datetime DEFAULT NULL,
                                PRIMARY KEY (`id_ntf`),
                                UNIQUE KEY `id_notif_UNIQUE` (`id_ntf`),
                                UNIQUE KEY `mark_ntf_UNIQUE` (`mark_ntf`),
                                KEY `reason_key_idx` (`id_reason`),
                                KEY `user_key_idx` (`user_id`),
                                KEY `data_idx` (`date`),
                                KEY `select_ntf` (`device_id`,`date`) USING BTREE,
                                CONSTRAINT `reason_key` FOREIGN KEY (`id_reason`) REFERENCES `reason` (`id_reason`) ON DELETE NO ACTION ON UPDATE NO ACTION,
                                CONSTRAINT `user_key` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Ð¢Ð°Ð±Ð»Ð¸Ñ†Ð° ÑÐ¾Ð´ÐµÑ€Ð¶Ð°Ñ‰Ð°Ñ ÑÐ¿Ð¸ÑÐ¾Ðº