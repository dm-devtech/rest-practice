class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  has_many :taggings
  has_many :tags, through: :taggings

  accepts_nested_attributes_for :taggings

  # def taggings_attributes=(ta)
  #   binding.pry
  #   taggings.build(:tag => Tag.new(ta["tag_attributes"]))
  # end

  # def taggings_attributes
  #   taggings
  # end
end
