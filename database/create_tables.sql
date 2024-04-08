-- create two tables: user_info and meal_plans

CREATE TABLE IF NOT EXISTS user_info (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(50) NOT NULL
);

CREATE TYPE week_day AS ENUM ('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'); -- ENUM works with single quotes! not doubles
CREATE TYPE meal_time_enum AS ENUM ('Breakfast', 'Lunch', 'Dinner');
CREATE TABLE IF NOT EXISTS meal_plans (
    meal_plan_id SERIAL PRIMARY KEY,
    user_id INT,
    day_of_the_week week_day,
    meal_time meal_time_enum,
    -- could be breakfast, lunch, dinner
    meal_name VARCHAR(50),
    -- name of the meal, such as "Kung Pao Chicken"
    CONSTRAINT fk_user
      FOREIGN KEY(user_id) 
        REFERENCES user_info(user_id)
);


