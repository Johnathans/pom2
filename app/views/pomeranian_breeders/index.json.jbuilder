json.array!(@pomeranian_breeders) do |pomeranian_breeder|
  json.extract! pomeranian_breeder, :id, :name, :website, :email, :phone, :description
  json.url pomeranian_breeder_url(pomeranian_breeder, format: :json)
end
