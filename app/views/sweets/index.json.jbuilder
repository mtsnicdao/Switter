json.array!(@sweets) do |sweet|
  json.extract! sweet, :id, :author, :article_id
  json.url sweet_url(sweet, format: :json)
end
