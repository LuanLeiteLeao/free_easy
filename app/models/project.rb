
class Project < ApplicationRecord
  DEMAND_STATUS = { face_to_face: 0, remote: 1 }
  enum demand: DEMAND_STATUS 

end
