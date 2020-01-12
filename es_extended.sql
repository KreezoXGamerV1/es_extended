ALTER TABLE `users`
	ADD COLUMN `org` varchar(50) NULL DEFAULT 'rsa' AFTER `job_grade`,
	ADD COLUMN `org_gradeorg` INT NULL DEFAULT 0 AFTER `org`,	
	

CREATE TABLE `org_gradeorg` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`org_name` varchar(50) DEFAULT NULL,
	`gradeorg` int(11) NOT NULL,
	`name` varchar(50) NOT NULL,
	`label` varchar(50) NOT NULL,
	`salary` int(11) NOT NULL,
	`skin_male` longtext NOT NULL,
	`skin_female` longtext NOT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `org_gradeorg` VALUES (1,'rsa',0,'rsa','RSA',200,'{}','{}');

CREATE TABLE `org` (
	`name` varchar(50) NOT NULL,
	`label` varchar(50) DEFAULT NULL,

	PRIMARY KEY (`name`)
);

INSERT INTO `org` VALUES ('rsa','Chômeur');
