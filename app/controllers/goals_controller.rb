class GoalsController < ApplicationController
	before_action :find_goal, only: [:show, :edit, :update, :destroy, :addToBalance, :complete]

  def index
    @goals = Goal.all.order("created_at DESC")
  end

  def new
    @goal = current_user.goals.build
  end

  def create
    @goal = current_user.goals.build(goal_params)
    if @goal.save
      redirect_to '#goals'
    else
      render 'new'
    end
  end

  def show
    params[:balance] ||= 0
  end

  def edit
  end

  def addToBalance
  end

  def complete
    @goal.update_attribute(:completed_at, Time.now)
    redirect_to @goal, notice: "Goal completed"
  end

  def update
    if @goal.update(goal.params)
      redirect_to @goal
    else
      render 'edit'
    end
  end

  def destroy
    if @goal.destroy
      flash[:success] = "Goal was deleted."
    else
      flash[:error] = "Goal could not be deleted."
    end
    redirect_to @index
  end

  private

  def find_goal
    @goal = Goal.find(params[:id])
  end

  def goal_params
    params.require(:goal).permit(:goal, :amount, :balance, :notes)
  end
end
