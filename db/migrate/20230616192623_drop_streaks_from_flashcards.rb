class DropStreaksFromFlashcards < ActiveRecord::Migration[6.1]
  def change
    remove_column :flashcards, :streak
    remove_column :flashcards, :longest_streak 
  end
end
