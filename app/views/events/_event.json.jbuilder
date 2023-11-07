json.event do
    json.id event.id
    json.start_date event.start_date
    json.duration event.duration
    json.title event.title
    json.description event.description
    json.price event.price
    json.location event.location
    json.created_at event.created_at
    json.updated_at event.updated_at
    json.url event_url(event, format: :json)
  end
  