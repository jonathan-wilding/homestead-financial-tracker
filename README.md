# Homestead Financial Tracker

A personal finance tracking database built in MySQL to manage savings goals, 
income, expenses, and goal contributions for long-term homestead planning.

## Project Overview

This project was designed to track financial progress toward major life goals 
including land purchase, emergency fund building, and large purchases. It 
demonstrates relational database design with foreign key relationships across 
seven tables.

## Database Schema

- **accounts** — checking, savings, and investment accounts with balances
- **categories** — income and expense category labels
- **goals** — savings targets with deadlines (land purchase, emergency fund, etc.)
- **savings** — individual savings deposits linked to accounts
- **goal_contributions** — tracks how savings deposits are allocated toward goals
- **income** — income entries linked to accounts and categories
- **expenses** — expense entries linked to accounts and categories

## Files

- `create_tables.sql` — creates the homestead database and all seven tables
- `insert_data.sql` — sample data including INL paychecks, plasma donations, and goal contributions
- `queries.sql` — practice queries including goal contribution percentage tracking and monthly expense breakdowns by category

## Key Queries

- Goal progress tracker: calculates total contributed vs. target amount per goal as a percentage
- Monthly expenses by category: aggregates spending using JOIN and GROUP BY
- Account balance overview ordered by balance
- Income sources ordered by amount

## Skills Demonstrated

- Relational database design with normalized schema
- Foreign key constraints and table relationships
- SQL aggregation (SUM, ROUND, GROUP BY)
- Table aliases and multi-table JOINs
- Data modeling for real-world financial use cases

## Tools

MySQL · VS Code · MySQL Workbench