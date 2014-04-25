json.array!(@signins) do |signin|
  json.extract! signin, :id, :title, :text
  json.url signin_url(signin, format: :json)
end
