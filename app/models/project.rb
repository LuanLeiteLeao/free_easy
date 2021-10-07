
class Project < ApplicationRecord
  enum demand: { face_to_face: 1, remote: 2 }
  validates :title,:description,:skills_descritions,:maximum_Value_hour,:demand,:deadline, presence:  {message:'não pode ficar em branco'}

end
