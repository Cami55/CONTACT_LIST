class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :forename
      t.string :surname
      t.string :address
      t.string :email
      t.string :department

      t.timestamps
    end
  end
end
