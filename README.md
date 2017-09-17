# myBudget
Simple Ruby on Rails budgeting app project

## Design Planning
### Interface
* Create expense categories
  * Defaults: Home, Hygiene, Eating Out
* Create income categories
  * Default: Work
    ** Set salary or hourly wage
    ** Repeats - auto-log at a specific date
* Set month's budget
  * Set category limits
* Add an expense
  * Date (default today)
  * Category
    ** Option to add new category
  * Item
  * Store/Vendor
  * Amount
* Add income
  * Date
  * Amount
* Month overview
  * Starting balance
  * Expense breakdown by category
    ** Click on category to see expense breakdown
  * Ending balance
  * Pie chart by category
* Year overview
  * Breakdown by month (expenses less income)
    ** Starting balance
    ** Ending balance
  * Year starting balance
  * Year ending balance

### Infrastructure
* Database
  * Users
  * Expense Categories
  * Income Categories
  * Expenses
