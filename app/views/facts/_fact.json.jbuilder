json.extract! fact, :id, :text, :created_at, :updated_at

json.author do
  json.name fact.author.name
  json.email fact.author.email
end

json.url fact_url(fact, format: :json)
