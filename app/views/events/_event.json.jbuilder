json.extract! event, :id, :title, :description, :date, :location, :cost, :status, :created_at, :updated_at
json.url event_url(event, format: :json)
