CREATE DATABASE manomitra;

USE manomitra;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    hashed_password VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    gender VARCHAR(10),
    date_of_birth DATE,
    occupation VARCHAR(255),
    interests TEXT,
    preferred_language VARCHAR(10)
);

CREATE TABLE moods (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    date DATETIME,
    mood_level INT,
    physical_health INT,
    exercise_status INT,
    eating_habits INT,
    sleep_quality INT,
    event_impact TEXT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE activities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    duration FLOAT,
    category VARCHAR(255)
);

CREATE TABLE contents (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(50),
    title VARCHAR(255),
    content TEXT,
    author VARCHAR(255),
    duration FLOAT
);

