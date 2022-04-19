class AddFeedbackToPresentation < ActiveRecord::Migration[6.0]
  def change
    create_table :feedback do |t|
      t.integer :score
      t.text :feedback
      t.timestamps
      t.belongs_to :presentation, foreign_key: true
    end
  end
end
