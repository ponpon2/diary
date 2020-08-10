class ChangeDiariesToDiariesMain < ActiveRecord::Migration[6.0]
  def change
    rename_table :diaries, :diaries_main
  end
end
