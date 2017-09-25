class LandingController < ApplicationController
    def index
        @incomes = Income.all
        @expenses = Expense.all
    
        @total_incomes = Income.sum(:amount)
        @total_expenses = Expense.sum(:amount)
        @ending_balance = @total_incomes - @total_expenses
    end
end
