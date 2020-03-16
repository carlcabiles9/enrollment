json.extract! subject, :id, :name, :description, :code, :created_at, :updated_at
json.url subject_url(subject, format: :json)
