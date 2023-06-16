json.extract! flashcard, :id, :question, :answer, :option_one, :option_two, :option_three, :streak, :longest_streak, :created_at, :updated_at
json.url flashcard_url(flashcard, format: :json)
