class Skill < ApplicationRecord
  has_and_belongs_to_many :users

  validates :name, presence: true
  validate :check_users_assign

  scope :only_parents, -> { where(parent_id: nil) }

  def check_users_assign
    raise ActiveRecord::Rollback if self.users.count > 1
  end

  def children
    Skill.where(parent_id: self.id)
  end

  def children_ids
    self.children.map(&:id)
  end

  def users_and_users_skills
    users = []
    Skill.where(id: [self.id, self.children_ids].flatten).each do |skill|
      users << skill.users
    end
    users.flatten
  end
end
