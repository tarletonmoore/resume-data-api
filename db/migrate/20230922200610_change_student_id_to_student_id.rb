class ChangeStudentIdToStudentId < ActiveRecord::Migration[7.0]
  def change
    rename_column :experiences, :studentID, :student_id
  end
end
