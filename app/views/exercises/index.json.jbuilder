json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :time, :user_id
  json.url exercise_url(exercise, format: :json)
end
