json.extract! era, :id, :name, :date_beg, :date_end, :description, :created_at, :updated_at
json.url era_url(era, format: :json)

json.composers era.composers