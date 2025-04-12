BEGIN TRANSACTION;

DROP TABLE IF EXISTS users, habits, completed_habits;

CREATE TABLE users (
    user_id UUID DEFAULT gen_random_uuid(),
    username varchar(50) NOT NULL UNIQUE,
    password_hash varchar(200) NOT NULL,
    role varchar(50) NOT NULL,
    CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE habits (
    habit_id UUID DEFAULT gen_random_uuid(),
    name varchar(50) NOT NULL,
    description varchar(200) NOT NULL,
    CONSTRAINT PK_habits PRIMARY KEY (habit_id)
);

CREATE TABLE completed_habits (
   habit_id UUID NOT NULL,
   time_completed timestamp NOT NULL,
   CONSTRAINT FK_habit_id FOREIGN KEY (habit_id) REFERENCES habits(habit_id)
);


COMMIT TRANSACTION;