class CreateDiaryTexts < ActiveRecord::Migration[6.0]
  def change
    create_table :diary_texts do |t|
      t.string :text

      t.timestamps
    end
  end
end
