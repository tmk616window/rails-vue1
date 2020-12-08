json.set! :protags do
  json.array! @protag do |protag|
    json.extract! protag, :id, :task_id, :tag, :created_at, :updated_at
  end
end
