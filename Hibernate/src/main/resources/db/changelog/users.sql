CREATE TABLE `users` (
                         `id` int(11) NOT NULL AUTO_INCREMENT,
                         `login` varchar(45) NOT NULL,
                         `password` varchar(32) NOT NULL COMMENT 'Ð·Ð°ÑˆÐ¸Ñ„Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ð¹ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ',
                         `salt` varchar(3) NOT NULL,
                         `surname` varchar(45) DEFAULT NULL COMMENT 'Ð¤Ð°Ð¼Ð¸Ð»Ð¸Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ',
                         `name` varchar(45) DEFAULT NULL COMMENT 'Ð˜Ð¼Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ',
                         `patronymic` varchar(45) DEFAULT NULL,
                         `mail_reg` varchar(45) NOT NULL COMMENT 'Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¾Ð½Ð½Ñ‹Ð¹ e-mail',
                         `mail` varchar(50) DEFAULT NULL COMMENT 'email, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ Ð¿Ð¾Ð·Ð¶Ðµ Ð¼Ð¾Ð¶Ð½Ð¾ Ð±ÑƒÐ´ÐµÑ‚ Ð¸Ð·Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð² Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ðµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ',
                         `dep` varchar(45) DEFAULT '95000000' COMMENT 'Ð”ÐµÐ¿Ð°Ñ€Ñ‚Ð°Ð¼ÐµÐ½Ñ‚',
                         `phone` varchar(45) DEFAULT NULL,
                         `prm` varchar(45) DEFAULT NULL COMMENT 'ÐŸÑ€Ð°Ð²Ð° Ð´Ð¾ÑÑ‚ÑƒÐ¿Ð° Ðº ÐºÐ¾Ð½Ñ‚ÐµÐ½Ñ‚Ñƒ ÑÐµÑ€Ð²Ð¸ÑÐ°',
                         `rating` varchar(45) DEFAULT NULL COMMENT 'Ð ÐµÐ¹Ñ‚Ð¸Ð½Ð³ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ',
                         `last_act` int(11) DEFAULT NULL COMMENT 'Ð²Ñ€ÐµÐ¼Ñ Ð¿Ð¾ÑÐ»ÐµÐ´Ð½ÐµÐ¹ Ð°ÐºÑ‚Ð¸Ð²Ð½Ð¾ÑÑ‚Ð¸ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ',
                         `reg_date` int(11) DEFAULT NULL COMMENT 'Ð´Ð°Ñ‚Ð° Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸',
                         `online` tinyint(4) DEFAULT NULL,
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `id_user_UNIQUE` (`id`),
                         UNIQUE KEY `login_UNIQUE` (`login`),
                         UNIQUE KEY `mail_reg_UNIQUE` (`mail_reg`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Ð¢Ð°Ð±Ð»Ð¸Ñ†Ð° - ÑÐ¿Ð¸ÑÐ¾Ðº Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ