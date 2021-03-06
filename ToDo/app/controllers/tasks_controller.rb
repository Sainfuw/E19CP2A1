class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    @users = @task.usertasks.map { |ut| User.find(ut.user_id) }
    @trophy_size = 70;
    @colors = ['#FFD700', '#B9F2FF', '#DAA520', '#C0C0C0', '#CD7F32']
  end

  def completed
    @tasks = current_user.tasks
  end

  def uncompleted
    @arr = current_user.tasks.map { |t| t.id }
    @tasks = Task.all_except(@arr)
  end
end
