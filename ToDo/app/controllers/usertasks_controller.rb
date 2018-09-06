class UsertasksController < ApplicationController
  def create
    @task = Task.find(params[:task_id])
    @ut = helpers.user_check(@task)
    if @ut.nil?
      @ut = Usertask.new
      @ut.user_id = current_user.id
      @ut.task_id = @task.id
      @ut.save
    elsif
      @ut.destroy
    end
    redirect_to tasks_path, notice: 'Tarea cambiada satisfactoriamente.'
  end
end
