json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :middle_name, :last_name, :dob, :ssn
  json.url user_url(user, format: :json)
end
