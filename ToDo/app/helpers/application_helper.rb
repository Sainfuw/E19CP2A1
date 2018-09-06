module ApplicationHelper
  def user_check(task)
    Usertask.find_by(["user_id = ? and task_id = ?", current_user.id, task.id])
  end
  def task_completed
    current_user.usertasks.select { |ut| ut.completed }.count
  end
end
