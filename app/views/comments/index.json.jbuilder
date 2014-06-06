json.array!(@comments) do |comment|
  json.extract! comment, :id, :nombre, :email, :comentario
  json.url comment_url(comment, format: :json)
end
