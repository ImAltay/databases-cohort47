
CREATE TABLE `recipes` (
  `recipe_id`  INT AUTO_INCREMENT PRIMARY KEY ,
  `recipe_description` varchar(255),
  `created_at` timestamp
);

CREATE TABLE `categories` (
  `category_id` INT AUTO_INCREMENT PRIMARY KEY,
  `category` varchar(255)
);

CREATE TABLE `recipe_category` (
  `recipe_id` INT,
  `category_id` INT,
  FOREIGN KEY(`recipe_id`) REFERENCES `recipes`(`recipe_id`),
  FOREIGN KEY(`category_id`) REFERENCES `categories`(`category_id`)
);

CREATE TABLE `ingredients` (
  `ingredient_id` INT AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(255)  UNIQUE
);

CREATE TABLE `recipe_ingredient` (
  `recipe_id` INT,
  `ingredient_id` INT,
  `measurement` varchar(255),
  FOREIGN KEY(`recipe_id`) REFERENCES `recipes`(`recipe_id`),
  FOREIGN KEY(`ingredient_id`) REFERENCES `ingredients`(`ingredient_id`)
);

CREATE TABLE `steps` (
  `step_id` INT AUTO_INCREMENT PRIMARY KEY,
  `step_description` varchar(255)
);

CREATE TABLE `recipe_step` (
  `recipe_id` INT NOT NULL,
  `step_id` INT NOT NULL,
  `step_no` INT NOT NULL,
  FOREIGN KEY(`recipe_id`) REFERENCES `recipes`(`recipe_id`),
  FOREIGN KEY(`step_id`) REFERENCES `steps`(`step_id`),
  PRIMARY KEY(`step_no`, `recipe_id` )
);

