
CREATE TABLE `recipes` (
  `recipe_id`  INT AUTO_INCREMENT PRIMARY KEY ,
  `recipe_description` varchar(255),
  `categories` INT,
  `ingredients` INT,
  `steps` INT,
  `created_at` timestamp
);

CREATE TABLE `categories` (
  `category_id` INT AUTO_INCREMENT PRIMARY KEY,
  `category` varchar(255)
);

CREATE TABLE `recipe_category` (
  `recipe_id` INT,
  `category_id` INT
);

CREATE TABLE `ingredients` (
  `ingredient_id` INT AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(255),
  `measurement_unit` varchar(255),
  `amount` INT
);

CREATE TABLE `recipe_ingredient` (
  `recipe_id` INT,
  `ingredient_id` INT
);

CREATE TABLE `steps` (
  `step_id` INT AUTO_INCREMENT PRIMARY KEY,
  `step_name` varchar(255),
  `step_description` varchar(255)
);

CREATE TABLE `recipe_step` (
  `recipe_id` INT,
  `step_id` INT
);

ALTER TABLE `recipe_category` ADD FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`);

ALTER TABLE `recipe_category` ADD FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

ALTER TABLE `recipe_ingredient` ADD FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`);

ALTER TABLE `recipe_ingredient` ADD FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`ingredient_id`);

ALTER TABLE `recipe_step` ADD FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`);

ALTER TABLE `recipe_step` ADD FOREIGN KEY (`step_id`) REFERENCES `steps` (`step_id`);

