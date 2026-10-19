USE homestead;

SELECT name, type, balance
FROM accounts
ORDER BY balance DESC;

SELECT name, type
FROM categories
ORDER BY name;

SELECT name, target, deadline
FROM goals
ORDER BY deadline;

SELECT amount, date, notes
FROM savings
ORDER BY date DESC;

SELECT goal_id, amount, date
FROM goal_contributions
ORDER BY date DESC;

SELECT source, amount, date
FROM income
ORDER BY amount DESC;

SELECT description, amount, date
FROM expenses
ORDER BY amount DESC;