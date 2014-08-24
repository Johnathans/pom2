json.array!(@pomsky_breeders) do |pomsky_breeder|
  json.extract! pomsky_breeder, :id, :name, :website, :email, :phone, :description
  json.url pomsky_breeder_url(pomsky_breeder, format: :json)
end
