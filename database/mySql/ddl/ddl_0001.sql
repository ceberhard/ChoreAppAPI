CREATE SCHEMA `app`;

CREATE TABLE `app`.`RowStatus` (
  `id` int PRIMARY KEY,
  `name` nvarchar(50) NOT NULL
);

CREATE TABLE `app`.`User` (
  `id` int PRIMARY KEY,
  `name` nvarchar(100) NOT NULL
);

CREATE TABLE `app`.`ChoreStatus` (
  `id` int PRIMARY KEY,
  `name` nvarchar(50) NOT NULL
);

CREATE TABLE `app`.`ChoreHistory` (
  `id` int PRIMARY KEY,
  `chore` int NOT NULL,
  `status` int NOT NULL,
  `user` int NOT NULL,
  `dttm` datetime NOT NULL
);

CREATE TABLE `app`.`Chore` (
  `id` int PRIMARY KEY,
  `title` nvarchar(200) NOT NULL
);

ALTER TABLE `app`.`ChoreHistory` ADD FOREIGN KEY (`chore`) REFERENCES `app`.`Chore` (`id`);

ALTER TABLE `app`.`ChoreHistory` ADD FOREIGN KEY (`user`) REFERENCES `app`.`User` (`id`);

ALTER TABLE `app`.`ChoreHistory` ADD FOREIGN KEY (`status`) REFERENCES `app`.`ChoreStatus` (`id`);
