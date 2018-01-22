class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :employee_no
      t.string :address
      t.string :phone_no
      t.string :email

      t.timestamps
    end
  end
end
