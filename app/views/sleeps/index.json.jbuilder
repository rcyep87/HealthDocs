json.array!(@sleeps) do |sleep|
  json.extract! sleep, :id, :time, :user_id
  json.url sleep_url(sleep, format: :json)
end
