class Task < ApplicationRecord
  has_many :usertasks
  has_many :users, through: :usertasks

  def self.all_except(task)
    where.not(id: task)
  end
end
