json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :location, :start_datetime, :end_datetime, :user_id
  json.url event_url(event, format: :json)
end
