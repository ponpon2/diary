class RemoveToColumnDiaries < ActiveRecord::Migration[6.0]
  def change
    remove_column :diaries, :images, :integer ,null: false
  end
end
