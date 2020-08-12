class ChangeToImages < ActiveRecord::Migration[6.0]
  def change
    remove_reference :images, :diaries, null: false, foreign_key: true
  end
end
