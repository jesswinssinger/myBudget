# README

# myBudget
A simple budgeting app aimed for young adults to manage expenses, set savings goals, and create shopping lists! The aim of this project is to serve college students to help them manage their finances in a low-maintenance way. Log your expenses and income on a monthly basis and keep track of your savings to learn good practices!

## Contributors
* Jessica Winssinger

## MVC Design
There are 5 models: Incomes, Expenses, Goals, Shopping_Lists, and Shopping_Items (Shopping_List_Shopping_Items). Each of these have the associated views and controllers. There is also a landing page view and a transactions view.

Transactions
* Incomes
* Expenses
Goals
Shopping Lists
* Shopping Items
Landing Page


## Functionality
Log transactions and keep up your incomes and expenses!
![https://github.com/jesswinssinger/myBudget/blob/master/app/assets/images/Screen%20Shot%202017-09-25%20at%2002.09.14.png]
Add Goals!
![https://github.com/jesswinssinger/myBudget/blob/master/app/assets/images/Screen%20Shot%202017-09-25%20at%2002.09.06.png]
Create Shopping Lists!
(coming soon!)

## Architecture
The architecture of this website is simple: there is a database with four tables, listed below.
Database
* Users
* Expense Categories
* Income Categories
* Expenses
* Goals
* Shopping Lists
* Shopping_Lists_Shopping_Items

## Issues
1. (Known Bug) The Shopping Lists are a new feature that has not been fully built yet.
2. There were issues with the bootstrap due to struggles with the asset pipeline, and much of the styling ended up having to be from scratch.

## References
* font-awesome: https://www.youtube.com/watch?v=RC_jIGABW-E
* Ruby on Rails Tutorials: https://www.youtube.com/user/mackenziechild
* User Auth with devise: https://www.youtube.com/watch?v=zJYuLebl-Js&t=220s
