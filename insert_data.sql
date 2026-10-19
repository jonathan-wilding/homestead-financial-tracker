USE homestead;

INSERT INTO accounts (name, type, balance) VALUES
('Wells Fargo Checking', 'checking', 3200.00),
('Wells Fargo Savings', 'savings', 8500.00),
('Cash Envelope', 'cash', 150.00),
('Emergency Fund', 'savings', 5000.00),
('Investment Account', 'investment', 12000.00);

INSERT INTO categories (name, type) VALUES
('Groceries', 'expense'),
('Utilities', 'expense'),
('Fuel', 'expense'),
('Medical', 'expense'),
('Home Repair', 'expense'),
('Paycheck', 'income'),
('Side Work', 'income'),
('Tax Refund', 'income'),
('Gift', 'income'),
('Severance', 'income');

INSERT INTO goals (name, target, deadline) VALUES
('Emergency Fund', 10000.00, '2026-12-31'),
('New Roof', 8500.00, '2027-06-01'),
('Family Vacation', 2000.00, '2027-07-15'),
('New Truck', 15000.00, '2028-01-01'),
('College Fund', 25000.00, '2030-08-01');

INSERT INTO savings (amount, date, notes, account_id) VALUES
(500.00, '2026-09-01', 'Monthly transfer', 2),
(300.00, '2026-09-15', 'Side job earnings', 2),
(200.00, '2026-10-01', 'Monthly transfer', 4),
(750.00, '2026-08-01', 'Tax refund portion', 2),
(100.00, '2026-10-05', 'Cash savings', 3),
(400.00, '2026-07-15', 'Monthly transfer', 4),
(250.00, '2026-06-01', 'Bonus savings', 2);

INSERT INTO goal_contributions (savings_id, goal_id, amount, date) VALUES
(1, 1, 300.00, '2026-09-01'),
(1, 2, 200.00, '2026-09-01'),
(2, 3, 300.00, '2026-09-15'),
(3, 1, 200.00, '2026-10-01'),
(4, 2, 500.00, '2026-08-01'),
(4, 4, 250.00, '2026-08-01'),
(5, 3, 100.00, '2026-10-05'),
(6, 1, 400.00, '2026-07-15'),
(7, 2, 250.00, '2026-06-01');

INSERT INTO income (source, amount, date, account_id, category_id) VALUES
('Amy\'s Kitchen', 2800.00, '2026-09-15', 1, 6),
('Amy\'s Kitchen', 2800.00, '2026-10-01', 1, 6),
('Lawn Mowing', 150.00, '2026-09-20', 3, 7),
('IRS Refund', 1200.00, '2026-08-10', 2, 8),
('Amy\'s Kitchen', 2800.00, '2026-08-15', 1, 6),
('Fence Repair Job', 300.00, '2026-07-05', 1, 7),
('Birthday Gift', 100.00, '2026-09-28', 3, 9),
('Amy\'s Kitchen', 2800.00, '2026-07-15', 1, 6);

INSERT INTO expenses (description, amount, date, account_id, category_id) VALUES
('Walmart Grocery Run', 180.00, '2026-09-05', 1, 1),
('Rocky Mountain Power', 95.00, '2026-09-10', 1, 2),
('Gas Station Fill Up', 65.00, '2026-09-12', 3, 3),
('Walmart Grocery Run', 210.00, '2026-10-03', 1, 1),
('Doctor Visit Copay', 40.00, '2026-09-22', 1, 4),
('Plumber Service Call', 250.00, '2026-08-18', 1, 5),
('Rocky Mountain Power', 88.00, '2026-08-10', 1, 2),
('Gas Station Fill Up', 70.00, '2026-10-07', 3, 3),
('Prescription', 25.00, '2026-09-30', 1, 4),
('Hardware Store', 135.00, '2026-07-20', 1, 5);