class RemoveColumnDiaries < ActiveRecord::Migration[6.0]
  def down
    remove_column :diaries, :images, :integer, null: false, foreign_key: true
  end
end
