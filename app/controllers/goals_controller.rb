class GoalsController < ApplicationController
	before_action :find_goal, only: [:show, :edit, :update, :destroy, :addToBalance]

  def index
    @goals = Goal.all.order("created_at DESC")
  end

  def new
    @goal = current_user.goals.build
  end

  def create
    @goal = current_user.goals.build(goal_params)
    if @goal.save
      redirect_to @goal
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def addToBalance

  end

  def update
    if @goal.update(goal.params)
      redirect_to @goal
    else
      render 'edit'
    end
  end

  def destroy
    @goal.destroy
  end

  private

  def find_goal
    @goal = Goal.find(params[:id])
  end

  def goal_params
    params.require(:goal).permit(:goal, :amount, :balance, :notes)
  end
end
