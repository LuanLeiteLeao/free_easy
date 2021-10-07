
class Project < ApplicationRecord
  DEMAND_STATUS = { 'Face to Face': 0, 'Remote': 1 }
  enum demand: DEMAND_STATUS 

end
