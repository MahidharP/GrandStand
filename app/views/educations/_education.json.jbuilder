json.extract! education, :id, :user_id, :name, :college, :start_date, :end_date, :created_at, :updated_at
json.url education_url(education, format: :json)