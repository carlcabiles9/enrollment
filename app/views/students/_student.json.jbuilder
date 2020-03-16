json.extract! student, :id, :last_name, :first_name, :course, :age, :birthday, :created_at, :updated_at
json.url student_url(student, format: :json)
