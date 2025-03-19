class CreateJoinTableStudentsCources < ActiveRecord::Migration[8.0]
  def change
    create_join_table :students, :cources do |t|
       t.index [:student_id, :cource_id]
       t.index [:cource_id, :student_id]
    end
    # add_foreign_key :students_cources, :students, on_delete: :cascade
    # add_foreign_key :students_cources, :cources, on_delete: :cascade
  end
end
