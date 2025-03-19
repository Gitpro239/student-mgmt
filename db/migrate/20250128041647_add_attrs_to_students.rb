class AddAttrsToStudents < ActiveRecord::Migration[8.0]
  def change
    add_column :students, :date_of_birth, :date
    add_column :students, :age, :integer
    add_column :students, :address, :string
    add_column :students, :contact, :string
    add_column :students, :mob, :string
  end
end


