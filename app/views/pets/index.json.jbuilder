json.array!(@pets) do |pet|
  json.extract! pet, :title, :body, :image
  json.url pet_url(pet, format: :json)
end