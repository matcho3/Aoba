json.array!(@users) do |user|
  json.extract! user, :first_name, :last_name, :birthday, :reserved_at, :operation_id, :body_part, :first_time, :reservation_id, :URL
  json.url user_url(user, format: :json)
end