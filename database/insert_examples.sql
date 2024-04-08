-- examples for adding instances
INSERT INTO user_info (username, password_hash) 
VALUES
    ('Hazel', 'abcd'),
    ('Alex', 'meow');


INSERT INTO meal_plans (user_id, day_of_the_week,meal_time,meal_name) 
VALUES
    (1,'Monday','Breakfast','Kung Pao Chicken'),
    (2,'Saturday','Lunch','Meatballs and mashed potatoes')