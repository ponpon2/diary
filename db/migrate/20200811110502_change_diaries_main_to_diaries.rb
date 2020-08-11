class ChangeDiariesMainToDiaries < ActiveRecord::Migration[6.0]
  def change
    rename_table :diaries_main, :diaries
  end
end
