json.set! :protags do
  json.array! @protags do |protag|
    json.extract! protag, :id, :task_id, :tag, :created_at, :updated_at
  end
end
