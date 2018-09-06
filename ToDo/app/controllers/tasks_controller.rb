class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    @users = @task.usertasks.where(completed: true).map { |ut| User.find(ut.user_id) }
    @trophy_size = 70;
    @colors = ['#FFD700', '#B9F2FF', '#DAA520', '#C0C0C0', '#CD7F32']
  end
end
