CREATE DATABASE tagebuch;
USE tagebuch;

CREATE TABLE users(
   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   username VARCHAR(45) NOT NULL,
   email VARCHAR(100) NOT NULL,
   phone VARCHAR(10) NOT NULL,
   password VARCHAR(60) NOT NULL,
   role VARCHAR(10),
   schoolName VARCHAR(50)
);
CREATE TABLE notebookRecords(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  notebookName VARCHAR(50) NOT NULL,
  notebookDescription VARCHAR(255),
  notebookTexts VARCHAR(1000),
  ownedBy VARCHAR(100) NOT NULL,
  user_id INT NOT NULL,

  FOREIGN KEY(user_id) REFERENCES users(id);
);
CREATE TABLE reviews(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(45) NOT NULL,
  reviewTitle VARCHAR(255) NOT NULL,
  userReview VARCHAR(1000) NOT NULL
);
