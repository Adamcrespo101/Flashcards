class CreateFlashcards < ActiveRecord::Migration[6.1]
  def change
    create_table :flashcards do |t|
      t.string :question
      t.string :answer
      t.string :subject
      t.string :option_one
      t.string :option_two
      t.string :option_three
      t.integer :streak
      t.integer :longest_streak

      t.timestamps
    end
  end
end
