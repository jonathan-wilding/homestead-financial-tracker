CREATE DATABASE IF NOT EXISTS homestead;
USE homestead;

CREATE TABLE accounts (
    id_accounts INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(50) NOT NULL,
    balance DECIMAL(10,2) NOT NULL DEFAULT 0.00
);

CREATE TABLE categories (
    id_categories INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    type ENUM('income', 'expense') NOT NULL
);

CREATE TABLE goals (
    id_goals INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    target DECIMAL(10,2) NOT NULL,
    deadline DATE
);

CREATE TABLE savings (
    id_savings INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(10,2) NOT NULL,
    date DATE NOT NULL,
    notes VARCHAR(200),
    account_id INT,
    FOREIGN KEY (account_id) REFERENCES accounts(id_accounts)
);

CREATE TABLE goal_contributions (
    id_contributions INT PRIMARY KEY AUTO_INCREMENT,
    savings_id INT NOT NULL,
    goal_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    date DATE NOT NULL,
    FOREIGN KEY (savings_id) REFERENCES savings(id_savings),
    FOREIGN KEY (goal_id) REFERENCES goals(id_goals)
);

CREATE TABLE income (
    id_income INT PRIMARY KEY AUTO_INCREMENT,
    source VARCHAR(100) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    date DATE NOT NULL,
    account_id INT,
    category_id INT,
    FOREIGN KEY (account_id) REFERENCES accounts(id_accounts),
    FOREIGN KEY (category_id) REFERENCES categories(id_categories)
);

CREATE TABLE expenses (
    id_expenses INT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(100) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    date DATE NOT NULL,
    account_id INT,
    category_id INT,
    FOREIGN KEY (account_id) REFERENCES accounts(id_accounts),
    FOREIGN KEY (category_id) REFERENCES categories(id_categories)
);