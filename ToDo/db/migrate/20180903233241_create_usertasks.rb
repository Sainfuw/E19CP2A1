class CreateUsertasks < ActiveRecord::Migration[5.2]
  def change
    create_table :usertasks do |t|
      t.boolean     :completed, default: true
      t.references  :user, foreign_key: true
      t.references  :task, foreign_key: true

      t.timestamps
    end
  end
end
