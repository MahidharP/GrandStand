json.extract! portfolio, :id, :user_id, :title, :description, :image, :url, :created_at, :updated_at
json.url portfolio_url(portfolio, format: :json)