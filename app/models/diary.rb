class Diary < ApplicationRecord
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images

  def self.search(search)
    return Diary.all unless search
    Diary.where(['text LIKE ?', "%#{search}%"])
  end
end
