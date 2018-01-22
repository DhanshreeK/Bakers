json.extract! employee, :id, :name, :employee_no, :address, :phone_no, :email, :created_at, :updated_at
json.url employee_url(employee, format: :json)
