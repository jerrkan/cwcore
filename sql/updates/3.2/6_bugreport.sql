alter table `bugreport`
    change `type` `type` longtext NOT NULL,
    change `content` `content` longtext NOT NULL;
