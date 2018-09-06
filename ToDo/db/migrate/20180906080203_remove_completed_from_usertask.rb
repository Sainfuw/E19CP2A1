class RemoveCompletedFromUsertask < ActiveRecord::Migration[5.2]
  def change
    remove_column :usertasks, :completed, :boolean
  end
end
