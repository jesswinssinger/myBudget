class IncomesController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @incomes = Income.all.order("created_at DESC")
  end

  def new
    @income = Income.new
  end

  def create
    @income = Income.new(income_params)
    if @income.save
      redirect_to @income
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @income.update(income.params)
      redirect_to @income
    else
      render 'edit'
    end
  end

  def destroy
    @income.destroy
  end

  private

  def find_post
    @income = Income.find(params[:id])
  end

  def income_params
    params.require(:income).permit(:date, :item, :store, :amount, :recurring, :notes)
  end
end

