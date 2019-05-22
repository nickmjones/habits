class HabitsController < ApplicationController

  def index
    @habits = Habit.all.order('created_at DESC')
  end

  def new
    @habit = Habit.new
  end

  def create
    @habit = Habit.new(habit_params)
    if @habit.save
      redirect_to @habit
    else
      render 'new'
    end
  end

  def show
    @habit = Habit.find(params[:id])
  end

  def edit
    @habit = Habit.find(params[:id])
  end

  def update
    @habit = Habit.find(params[:id])
    if @habit.update(habit_params)
      redirect_to @habit
    else
      render 'edit'
    end
  end

  def destroy
    @habit = Habit.find(params[:id])
    @habit.destroy
    redirect_to root_path
  end

  private

  def habit_params
    params.require(:habit).permit(:title, :frequency, :points, :user_id)
  end
  

end