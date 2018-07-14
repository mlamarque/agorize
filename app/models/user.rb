class User < ApplicationRecord
  
  validates :points, presence: true
  has_and_belongs_to_many :skills, before_add: :check_skills_assign

  def check_skills_assign skill
    raise ActiveRecord::Rollback if skills.count > 1
  end
end
