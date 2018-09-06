class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    @users = []
    @task.usertasks.each do |ut|
      if ut.completed
        @users << ut.user
      end
    end
  end
end
