json.extract! swim_meet, :id, :name, :venue, :address, :start_date, :end_date, :course, :description, :created_at, :updated_at
json.url swim_meet_url(swim_meet, format: :json)
json.description swim_meet.description.to_s
