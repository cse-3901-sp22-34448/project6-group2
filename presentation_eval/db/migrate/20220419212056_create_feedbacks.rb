class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.integer :score
      t.text :comments

      t.timestamps
      t.belongs_to :presentation, foreign_key: true
    end
  end
end
