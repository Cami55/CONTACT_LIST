class AddForeignKeyToEmployees < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :employees, :users, column: :manager_id, primary_key: :id
  end
end
