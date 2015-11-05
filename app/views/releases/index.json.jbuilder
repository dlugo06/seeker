json.array!(@releases) do |release|
  json.extract! release, :id, :title, :year
  json.url release_url(release, format: :json)
end
