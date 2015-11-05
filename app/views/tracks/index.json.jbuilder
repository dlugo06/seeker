json.array!(@tracks) do |track|
  json.extract! track, :id, :title, :length_in_seconds, :genre
  json.url track_url(track, format: :json)
end
