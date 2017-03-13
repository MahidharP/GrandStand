json.extract! work_experience, :id, :user_id, :name, :description, :company, :start_date, :end_date, :created_at, :updated_at
json.url work_experience_url(work_experience, format: :json)