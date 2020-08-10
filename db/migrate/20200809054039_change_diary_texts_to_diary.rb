class ChangeDiaryTextsToDiary < ActiveRecord::Migration[6.0]
  def change
    rename_table :diary_texts, :diaries
  end
end
