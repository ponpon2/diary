class AddColumnImages < ActiveRecord::Migration[6.0]
  def up
    add_reference :images, :diary, null: false, foreign_key: true
  end
  def down
    remove_reference :images, :diaries, null: false, foreign_key: true
  end
end
