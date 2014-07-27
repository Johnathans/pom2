json.array!(@husky_breeders) do |husky_breeder|
  json.extract! husky_breeder, :id, :name, :website, :email, :phone, :description
  json.url husky_breeder_url(husky_breeder, format: :json)
end
