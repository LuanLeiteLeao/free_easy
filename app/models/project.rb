
class Project < ApplicationRecord
  enum demand: { face_to_face: 1, remote: 2 }
  validates :maximum_value_hour, numericality: { greater_than_or_equal_to:0 }
  validates :title,:description,:skills_descritions,:maximum_value_hour,:demand,:deadline, presence:  true
end
