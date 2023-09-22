class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.string :start_date
      t.string :end_date
      t.string :job
      t.string :company
      t.text :details
      t.integer :studentID

      t.timestamps
    end
  end
end
