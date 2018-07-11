json.event_titles @event_titles do |event|
  json.name event.title
  json.url event_path(event)
end

json.event_tags @event_tags do |event|
  json.name event.tag
  json.url event_path(event)
end
