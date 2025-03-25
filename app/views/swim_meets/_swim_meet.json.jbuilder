json.extract! swim_meet, :id, :name, :location, :address, :url, :start_date, :end_date, :description, :created_at, :updated_at
json.url swim_meet_url(swim_meet, format: :json)
