json.events do 
	json.array!(@events) do |event|
		json.name event.title
		json.url event_path(event)
	end
end

# json.event_tags do 
# 	json.array!(@event_tags) do |event_tag|
# 		json.name event_tag.tag
# 		json.url event_path(event_tag)
# 	end
# end

# json.events do
#   json.array!(@events) do |event|
#     json.name event.title
#     json.url event_path(event)
#   end
# end

# json.events @events do |event|
#   json.name event.title
#   json.url event_path(event)
# end