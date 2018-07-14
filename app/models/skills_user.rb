class SkillsUser < ApplicationRecord
#  validates :user_id, uniqueness: { scope: :skill_id }
  validates :user_id, uniqueness: true
end
