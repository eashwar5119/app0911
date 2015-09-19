json.array!(@holidays) do |holiday|
  json.extract! holiday, :id, :name, :datev
  json.url holiday_url(holiday, format: :json)
end
