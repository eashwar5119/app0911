json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :support_id, :dateshedule, :vacation
  json.url schedule_url(schedule, format: :json)
end
