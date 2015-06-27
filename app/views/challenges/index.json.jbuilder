json.array!(@challenges) do |challenge|
  json.extract! challenge, :id, :title
  json.url challenge_url(challenge, format: :json)
end
