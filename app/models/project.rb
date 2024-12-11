class Project < ApplicationRecord
  has_one_attached :key_visual
  has_one_attached :challenges_visual
  has_one_attached :learnings_visual
  has_one_attached :app_logo
end
