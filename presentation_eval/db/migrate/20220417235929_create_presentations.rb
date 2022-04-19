class CreatePresentations < ActiveRecord::Migration[6.0]
  def change
    create_table :presentations do |t|
      t.string :grade
      t.string :presentation_name
      t.string :student_name
      t.date :date

      t.timestamps
    end
   
  end
end
