json.extract! skills_user, :id, :skill_id, :user_id, :created_at, :updated_at
json.url skills_user_url(skills_user, format: :json)
