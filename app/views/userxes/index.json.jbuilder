json.array!(@userxes) do |userx|
  json.extract! userx, :id
  json.url userx_url(userx, format: :json)
end
