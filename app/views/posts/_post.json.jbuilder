json.extract! post, :id, :subtitle, :title, :description, :content, :created_at, :updated_at
json.url post_url(post, format: :json)