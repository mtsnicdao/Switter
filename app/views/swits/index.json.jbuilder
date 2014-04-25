json.array!(@swits) do |swit|
  json.extract! swit, :id, :title, :text
  json.url swit_url(swit, format: :json)
end
