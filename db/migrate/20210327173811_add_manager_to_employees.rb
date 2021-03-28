class AddManagerToEmployees < ActiveRecord::Migration[6.0]
  def change
    add_reference :employees, :manager
  end
end
