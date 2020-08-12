class ChangetoImages < ActiveRecord::Migration[6.0]
  def change
    remove_reference :images, :diary, null: false, foreign_key: true
  end
end
