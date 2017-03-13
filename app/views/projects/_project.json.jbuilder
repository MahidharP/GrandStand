json.extract! project, :id, :user_id, :name, :description, :url, :start_date, :end_date, :created_at, :updated_at
json.url project_url(project, format: :json)