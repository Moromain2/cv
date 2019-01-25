class Skill < ApplicationRecord
  has_one_attached :image
  CATEGORY_LIST = ["Web Development", "Computing", "Language"]
end
