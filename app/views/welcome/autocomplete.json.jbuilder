json.events do
  json.array!(@events) do |event|
    json.name event.title
    json.url event_path(event)
  end
end
