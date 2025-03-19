class CreateCources < ActiveRecord::Migration[8.0]
  def change
    create_table :cources do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
