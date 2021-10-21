json.extract! food, :id, :name, :serving_size, :calories, :created_at, :updated_at
json.url food_url(food, format: :json)
