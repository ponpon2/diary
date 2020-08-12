class AddColumnToDiaries < ActiveRecord::Migration[6.0]
  def change
    add_column :diaries, :images, :integer, null: false, foreign_key: true
  end
end
