json.array!(@supports) do |support|
  json.extract! support, :id, :name, :phone, :email
  json.url support_url(support, format: :json)
end
