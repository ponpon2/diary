class ChangeToColumnImages < ActiveRecord::Migration[6.0]
  def change
    add_reference :images, :diary, null: false, foreign_key: true
  end
end
