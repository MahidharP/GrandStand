json.extract! personal_info, :id, :user_id, :profile, :designation, :image, :birthday, :nationality, :language, :created_at, :updated_at
json.url personal_info_url(personal_info, format: :json)