-- All the vegetarian recipes with the ingredient Salt

 SELECT * FROM recipes JOIN recipe_ingredient ON recipes.recipe_id = recipe_ingredient.recipe_id  JOIN recipe_category ON recipes.recipe_id = recipe_category.recipe_id WHERE  ingredient_id = (SELECT ingredient_id FROM ingredients WHERE name="Salt") AND category_id = (SELECT category_id FROM categories WHERE category="Vegetarian");

--   All the cakes that do not need baking

SELECT * FROM recipes WHERE EXISTS (SELECT * FROM recipe_category  JOIN categories ON recipe_category.category_id = categories.category_id  WHERE categories.category = "Cake" AND recipe_category.recipe_id = recipes.recipe_id) AND EXISTS ( SELECT * FROM recipe_category  JOIN categories ON recipe_category.category_id = categories.category_id  WHERE categories.category = "No-Bake" AND recipe_category.recipe_id = recipes.recipe_id);


--    All the Vegetarian and Japanese recipes 
-- Same task with above one. Selecting a recipe with 2 different categories. This is how chatgpt solved the problem

SELECT recipes.* FROM recipes JOIN recipe_category ON recipes.recipe_id = recipe_category.recipe_id WHERE recipe_category.category_id IN ( SELECT category_id FROM categories WHERE category IN ("Vegetarian", "Japanese"))GROUP BY recipes.recipe_id HAVING COUNT(DISTINCT recipe_category.category_id) = 2;


