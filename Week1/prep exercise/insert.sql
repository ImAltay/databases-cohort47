-- I used chatgpt for dummy data, don't come to me if you try the recipe and it sucks :)

-- Inserting categories
INSERT INTO categories (category) VALUES ('Turkish');
INSERT INTO categories (category) VALUES ('Mexican');
INSERT INTO categories (category) VALUES ('Indian');
INSERT INTO categories (category) VALUES ('Chinese');
INSERT INTO categories (category) VALUES ('Italian');
INSERT INTO categories (category) VALUES ('Salad');
INSERT INTO categories (category) VALUES ('Dessert');
INSERT INTO categories (category) VALUES ('Breakfast');
INSERT INTO categories (category) VALUES ('Snack');
INSERT INTO categories (category) VALUES ('Drink');

-- Inserting ingredients
INSERT INTO ingredients (name, measurement_unit, amount) VALUES ('Lamb', 'grams', 500);
INSERT INTO ingredients (name, measurement_unit, amount) VALUES ('Tortillas', 'count', 6);
INSERT INTO ingredients (name, measurement_unit, amount) VALUES ('Chicken', 'grams', 400);
INSERT INTO ingredients (name, measurement_unit, amount) VALUES ('Rice', 'cups', 2);
INSERT INTO ingredients (name, measurement_unit, amount) VALUES ('Tomatoes', 'count', 3);
INSERT INTO ingredients (name, measurement_unit, amount) VALUES ('Paneer', 'grams', 300);
INSERT INTO ingredients (name, measurement_unit, amount) VALUES ('Pasta', 'grams', 400);
INSERT INTO ingredients (name, measurement_unit, amount) VALUES ('Lettuce', 'grams', 150);
INSERT INTO ingredients (name, measurement_unit, amount) VALUES ('Chocolate', 'grams', 200);
INSERT INTO ingredients (name, measurement_unit, amount) VALUES ('Bread', 'slices', 4);

-- Inserting steps
INSERT INTO steps (step_name, step_description) VALUES ('Marinate', 'Marinate lamb with spices for 1 hour.');
INSERT INTO steps (step_name, step_description) VALUES ('Grill', 'Grill the marinated lamb until cooked.');
INSERT INTO steps (step_name, step_description) VALUES ('Wrap', 'Wrap grilled lamb in tortillas.');

INSERT INTO steps (step_name, step_description) VALUES ('Marinate', 'Marinate chicken with spices for 30 minutes.');
INSERT INTO steps (step_name, step_description) VALUES ('Cook', 'Cook marinated chicken until tender.');
INSERT INTO steps (step_name, step_description) VALUES ('Serve', 'Serve hot with rice.');

INSERT INTO steps (step_name, step_description) VALUES ('Boil', 'Boil rice until fully cooked.');
INSERT INTO steps (step_name, step_description) VALUES ('Chop', 'Chop tomatoes and paneer into small pieces.');
INSERT INTO steps (step_name, step_description) VALUES ('Mix', 'Mix boiled rice with chopped tomatoes and paneer.');

INSERT INTO steps (step_name, step_description) VALUES ('Boil', 'Boil pasta until al dente.');
INSERT INTO steps (step_name, step_description) VALUES ('Drain', 'Drain cooked pasta and let it cool.');
INSERT INTO steps (step_name, step_description) VALUES ('Toss', 'Toss pasta with lettuce and dressing.');

INSERT INTO steps (step_name, step_description) VALUES ('Melt', 'Melt chocolate in a double boiler.');
INSERT INTO steps (step_name, step_description) VALUES ('Dip', 'Dip bread slices in melted chocolate.');
INSERT INTO steps (step_name, step_description) VALUES ('Chill', 'Chill chocolate-covered bread slices in the refrigerator.');

-- Inserting recipes
INSERT INTO recipes (recipe_description, category_id, ingredient_id, step_id, created_at) VALUES ('Lamb Tacos', 1, 1, 1, NOW());
INSERT INTO recipes (recipe_description, category_id, ingredient_id, step_id, created_at) VALUES ('Chicken Curry', 3, 3, 4, NOW());
INSERT INTO recipes (recipe_description, category_id, ingredient_id, step_id, created_at) VALUES ('Tomato Paneer Rice', 4, 4, 7, NOW());
INSERT INTO recipes (recipe_description, category_id, ingredient_id, step_id, created_at) VALUES ('Pasta Salad', 6, 7, 10, NOW());
INSERT INTO recipes (recipe_description, category_id, ingredient_id, step_id, created_at) VALUES ('Chocolate Bread Dessert', 7, 9, 13, NOW());

-- Inserting recipe categories associations
INSERT INTO recipe_category (recipe_id, category_id) VALUES (1, 10);
INSERT INTO recipe_category (recipe_id, category_id) VALUES (2, 6);
INSERT INTO recipe_category (recipe_id, category_id) VALUES (3, 4);
INSERT INTO recipe_category (recipe_id, category_id) VALUES (4, 6);
INSERT INTO recipe_category (recipe_id, category_id) VALUES (5, 7);

-- Inserting recipe ingredients associations
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (1, 1);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (1, 2);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (1, 5);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (2, 3);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (2, 4);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (2, 5);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (3, 4);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (3, 5);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (3, 6);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (4, 6);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (4, 7);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (4, 8);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (5, 9);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (5, 10);

-- Inserting recipe steps associations
INSERT INTO recipe_step (recipe_id, step_id) VALUES (1, 1);
INSERT INTO recipe_step (recipe_id, step_id) VALUES (1, 2);
INSERT INTO recipe_step (recipe_id, step_id) VALUES (1, 3);
INSERT INTO recipe_step (recipe_id, step_id) VALUES (2, 4);
INSERT INTO recipe_step (recipe_id, step_id) VALUES (2, 5);
INSERT INTO recipe_step (recipe_id, step_id) VALUES (2, 6);
INSERT INTO recipe_step (recipe_id, step_id) VALUES (3, 7);
INSERT INTO recipe_step (recipe_id, step_id) VALUES (3, 8);
INSERT INTO recipe_step (recipe_id, step_id) VALUES (3, 9);
INSERT INTO recipe_step (recipe_id, step_id) VALUES (4, 10);
INSERT INTO recipe_step (recipe_id, step_id) VALUES (4, 11);
INSERT INTO recipe_step (recipe_id, step_id) VALUES (4, 12);
INSERT INTO recipe_step (recipe_id, step_id) VALUES (5, 13);
INSERT INTO recipe_step (recipe_id, step_id) VALUES (5, 14);
INSERT INTO recipe_step (recipe_id, step_id) VALUES (5, 15);
