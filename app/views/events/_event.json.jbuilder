json.extract! event, :id, :title, :description, :rules, :location, :date_time, :references, :created_at, :updated_at
json.url event_url(event, format: :json)