json.set! :users do
  json.array! @users do |user|
    json.extract! user, :id, :name, :email, :password_digest, :created_at, :updated_at
  end
end
