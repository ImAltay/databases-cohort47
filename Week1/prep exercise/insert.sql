-- I used chatgpt for dummy data(first 5 recipes), don't come to me if you try the recipe and it sucks :)

-- Inserting categories
INSERT INTO categories (category) VALUES ('Turkish');
INSERT INTO categories (category) VALUES ('Mexican');
INSERT INTO categories (category) VALUES ('Indian');
INSERT INTO categories (category) VALUES ('Chinese');
INSERT INTO categories (category) VALUES ('Italian');
INSERT INTO categories (category) VALUES ('Japanese');
INSERT INTO categories (category) VALUES ('Vegetarian');
INSERT INTO categories (category) VALUES ('Vegan');
INSERT INTO categories (category) VALUES ('Gluten-Free');
INSERT INTO categories (category) VALUES ('Cake');
INSERT INTO categories (category) VALUES ('No-Bake');
INSERT INTO categories (category) VALUES ('Salad');
INSERT INTO categories (category) VALUES ('Dessert');
INSERT INTO categories (category) VALUES ('Breakfast');
INSERT INTO categories (category) VALUES ('Snack');
INSERT INTO categories (category) VALUES ('Drink');



-- Inserting ingredients
INSERT INTO ingredients (name) VALUES ('Lamb');
INSERT INTO ingredients (name) VALUES ('Tortillas');
INSERT INTO ingredients (name) VALUES ('Chicken');
INSERT INTO ingredients (name) VALUES ('Rice');
INSERT INTO ingredients (name) VALUES ('Tomatoes');
INSERT INTO ingredients (name) VALUES ('Paneer');
INSERT INTO ingredients (name) VALUES ('Pasta');
INSERT INTO ingredients (name) VALUES ('Lettuce');
INSERT INTO ingredients (name) VALUES ('Chocolate');
INSERT INTO ingredients (name) VALUES ('Bread');
INSERT INTO ingredients (name) VALUES ('Condensed Milk');
INSERT INTO ingredients (name) VALUES ('Cream Cheese');
INSERT INTO ingredients (name) VALUES ('Lemon Juice');
INSERT INTO ingredients (name) VALUES ('Pie Crust');
INSERT INTO ingredients (name) VALUES ('Cherry Jam');
INSERT INTO ingredients (name) VALUES ('Brussels Sprouts');
INSERT INTO ingredients (name) VALUES ('Sesame Seeds');
INSERT INTO ingredients (name) VALUES ('Pepper');
INSERT INTO ingredients (name) VALUES ('Salt');
INSERT INTO ingredients (name) VALUES ('Olive Oil');
INSERT INTO ingredients (name) VALUES ('Macaroni');
INSERT INTO ingredients (name) VALUES ('Butter');
INSERT INTO ingredients (name) VALUES ('Flour');
INSERT INTO ingredients (name) VALUES ('Milk');
INSERT INTO ingredients (name) VALUES ('Shredded Cheddar Cheese');
INSERT INTO ingredients (name) VALUES ('Eggs');
INSERT INTO ingredients (name) VALUES ('Soy Sauce');
INSERT INTO ingredients (name) VALUES ('Sugar');



-- Inserting steps
INSERT INTO steps (step_description) VALUES ('Marinate lamb with spices for 1 hour.');
INSERT INTO steps (step_description) VALUES ('Grill the marinated lamb until cooked.');
INSERT INTO steps (step_description) VALUES ('Wrap grilled lamb in tortillas.');

INSERT INTO steps (step_description) VALUES ('Marinate chicken with spices for 30 minutes.');
INSERT INTO steps (step_description) VALUES ('Cook marinated chicken until tender.');
INSERT INTO steps (step_description) VALUES ('Serve hot with rice.');

INSERT INTO steps (step_description) VALUES ('Boil rice until fully cooked.');
INSERT INTO steps (step_description) VALUES ('Chop tomatoes and paneer into small pieces.');
INSERT INTO steps (step_description) VALUES ('Mix boiled rice with chopped tomatoes and paneer.');

INSERT INTO steps (step_description) VALUES ('Boil pasta until al dente.');
INSERT INTO steps (step_description) VALUES ('Drain cooked pasta and let it cool.');
INSERT INTO steps (step_description) VALUES ('Toss pasta with lettuce and dressing.');

INSERT INTO steps (step_description) VALUES ('Melt chocolate in a double boiler.');
INSERT INTO steps (step_description) VALUES ('Dip bread slices in melted chocolate.');
INSERT INTO steps (step_description) VALUES ('Chill chocolate-covered bread slices in the refrigerator.');

INSERT INTO steps (step_description) VALUES ('Beat Cream Cheese');
INSERT INTO steps (step_description) VALUES ('Add condensed Milk and blend');
INSERT INTO steps (step_description) VALUES ('Add Lemon Juice and blend');
INSERT INTO steps (step_description) VALUES ('Add the mix to the pie crust');
INSERT INTO steps (step_description) VALUES ('Spread the Cherry Jam');
INSERT INTO steps (step_description) VALUES ('Place in refrigerator for 3h.');

INSERT INTO steps (step_description) VALUES ('Preheat the oven');
INSERT INTO steps (step_description) VALUES ('Mix the ingredients in a bowl');
INSERT INTO steps (step_description) VALUES ('Spread the mix on baking sheet');
INSERT INTO steps (step_description) VALUES ('Bake for 30');

INSERT INTO steps (step_description) VALUES ('Cook Macaroni for 8');
INSERT INTO steps (step_description) VALUES ('Melt butter in a saucepan');
INSERT INTO steps (step_description) VALUES ('Add flour, salt, pepper and mix');
INSERT INTO steps (step_description) VALUES ('Add Milk and mix');
INSERT INTO steps (step_description) VALUES ('Cook until mix is smooth');
INSERT INTO steps (step_description) VALUES ('Add cheddar cheese');
INSERT INTO steps (step_description) VALUES ('Add the macaroni');

INSERT INTO steps (step_description) VALUES ('Beat the eggs');
INSERT INTO steps (step_description) VALUES ('Add soya sauce, sugar and salt');
INSERT INTO steps (step_description) VALUES ('Add oil to a sauce pan ');
INSERT INTO steps (step_description) VALUES ('Bring to medium heat');
INSERT INTO steps (step_description) VALUES ('Add some mix to the sauce pan');
INSERT INTO steps (step_description) VALUES ('Let is cook for 1');
INSERT INTO steps (step_description) VALUES ('Add oil to a sauce pan');
INSERT INTO steps (step_description) VALUES ('Remove pan from fire');

-- Inserting recipes
INSERT INTO recipes (recipe_description,  created_at) VALUES ('Lamb Tacos', NOW());
INSERT INTO recipes (recipe_description,  created_at) VALUES ('Chicken Curry', NOW());
INSERT INTO recipes (recipe_description,  created_at) VALUES ('Tomato Paneer Rice', NOW());
INSERT INTO recipes (recipe_description,  created_at) VALUES ('Pasta Salad', NOW());
INSERT INTO recipes (recipe_description,  created_at) VALUES ('Chocolate Bread Dessert', NOW());
INSERT INTO recipes (recipe_description,  created_at) VALUES ('No-Bake Cheesecake', NOW());
INSERT INTO recipes (recipe_description,  created_at) VALUES ('Roasted Brussels Sprouts', NOW());
INSERT INTO recipes (recipe_description,  created_at) VALUES ('Mac & Cheese', NOW());
INSERT INTO recipes (recipe_description,  created_at) VALUES ('Tamagoyaki Japanese Omelette', NOW());

-- Inserting recipe categories associations
INSERT INTO recipe_category (recipe_id, category_id) VALUES (1, 10);

INSERT INTO recipe_category (recipe_id, category_id) VALUES (2, 6);

INSERT INTO recipe_category (recipe_id, category_id) VALUES (3, 4);

INSERT INTO recipe_category (recipe_id, category_id) VALUES (4, 6);

INSERT INTO recipe_category (recipe_id, category_id) VALUES (5, 7);

INSERT INTO recipe_category (recipe_id, category_id) VALUES (6, 7);
INSERT INTO recipe_category (recipe_id, category_id) VALUES (6, 10);
INSERT INTO recipe_category (recipe_id, category_id) VALUES (6, 11);

INSERT INTO recipe_category (recipe_id, category_id) VALUES (7, 8);
INSERT INTO recipe_category (recipe_id, category_id) VALUES (7, 9);

INSERT INTO recipe_category (recipe_id, category_id) VALUES (8, 7);

INSERT INTO recipe_category (recipe_id, category_id) VALUES (9, 7);
INSERT INTO recipe_category (recipe_id, category_id) VALUES (9, 6);

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

INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (6, 11);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (6, 12); 
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (6, 13);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (6, 14);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (6, 15);

INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (7, 16);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (7, 13); 
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (7, 17);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (7, 18); 
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (7, 19);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (7, 20); 

INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (8, 21);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (8, 22); 
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (8, 23);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (8, 19);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (8, 18);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (8, 24);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (8, 25);

INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (9, 26);
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (9, 27); 
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (9, 28); 
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (9, 19); 
INSERT INTO recipe_ingredient (recipe_id, ingredient_id) VALUES (9, 20);


-- Inserting recipe steps associations
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (1, 1, 1);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (2, 1, 2);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (3, 1, 3);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (4, 2, 4);

INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (1, 2, 5);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (2, 2, 6);

INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (1, 3, 7);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (2, 3, 8);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (3, 3, 9);

INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (1, 4, 10);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (2, 4, 11);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (3, 4, 12);

INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (1, 5, 13);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (2, 5, 14);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (3, 5, 15);

INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (1, 6, 16);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (2, 6, 17);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (3, 6, 18);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (4, 6, 19);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (5, 6, 20);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (6, 6, 21);

INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (1, 7, 22);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (2, 7, 23);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (3, 7, 24);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (4, 7, 25);

INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (1, 8, 26);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (2, 8, 27);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (3, 8, 28);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (4, 8, 29);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (5, 8, 30);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (6, 8, 31);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (7, 8, 32);

INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (1, 9, 33);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (2, 9, 34);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (3, 9, 35);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (4, 9, 36);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (5, 9, 37);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (6, 9, 38);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (7, 9, 35);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (8, 9, 37);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (9, 9, 38);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (10, 9, 40);
INSERT INTO recipe_step (step_no, recipe_id, step_id) VALUES (11, 9, 32);
