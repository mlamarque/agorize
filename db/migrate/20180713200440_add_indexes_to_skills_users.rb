class AddIndexesToSkillsUsers < ActiveRecord::Migration[5.1]
  def change
    add_index :skills_users, [:user_id, :skill_id], unique: true
  end
end
