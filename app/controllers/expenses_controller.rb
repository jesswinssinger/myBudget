class ExpensesController < ApplicationController
  before_action :find_expense, only: [:show, :edit, :update, :destroy]

  def index
    @expenses = Expense.all.order("created_at DESC")
  end

  def new
    @expense = current_user.expenses.build
  end

  def create
    @expense = current_user.expenses.build(expense_params)
    if @expense.save
      redirect_to @expense
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @expense.update(expense.params)
      redirect_to @expense
    else
      render 'edit'
    end
  end

  def destroy
    @expense.destroy
  end

  private

  def find_expense
    @expense = Expense.find(params[:id])
  end

  def expense_params
    params.require(:expense).permit(:date, :item, :store, :amount, :recurring, :notes)
  end
end

