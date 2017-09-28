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
The navigation, found in the top right corner, is helpful to navigate the landing page. This functionality was taken from the bootstrap template found under references in this README.
Log transactions and keep up your incomes and expenses! Adding new transactions is easy to do from the landing page. Just view the list of the respective transaction, then click new!
![transactions](https://github.com/jesswinssinger/myBudget/blob/master/app/assets/images/Screen%20Shot%202017-09-25%20at%2002.09.14.png)
Add Goals! There is a quick and easy button under the list of goals on the landing page.
![alt tag](https://github.com/jesswinssinger/myBudget/blob/master/app/assets/images/Screen%20Shot%202017-09-25%20at%2002.09.06.png)
Create Shopping Lists!
(coming soon!)

## Architecture
The architecture of this website is simple: there is a database with six tables, listed below. Whenever a transaction, goal, or shopping list is added or edited, the information is updated in its respective table. User_ids are associated with expenses, incomes, goals, and shopping lists as a column in their tables.

* Users: holds information for users such as username and password. 
* Expenses: holds date, amount, store, notes, option to make it recurring, and user_id.
* Incomes: holds date, amount, source, notes, option to make it recurring, and user_id.
* Goals: holds item, amount, notes, and user_id.
* Shopping Lists: holds shopping list name, notes, and user_id.
* Shopping_Lists_Shopping_Items: holds item, amount, and notes.

## Issues
1. (Known Bug) The Shopping Lists are a new feature that has not been fully built yet.
2. (Known Bug) The add to balance feature is not functional yet.
3. Still need to actually make the recurring option for transactions useful!
4. There were issues with the bootstrap due to struggles with the asset pipeline, and much of the styling ended up having to be from scratch.
5. Figuring out how to subtype using the MVC model was tough, but after some research it was easy to figure out!

## References
* font-awesome: https://www.youtube.com/watch?v=RC_jIGABW-E
* Ruby on Rails Tutorials: https://www.youtube.com/user/mackenziechild
* User Auth with devise: https://www.youtube.com/watch?v=zJYuLebl-Js&t=220s
* a bootstrap template I took some styling from: https://startbootstrap.com/template-overviews/stylish-portfolio/
