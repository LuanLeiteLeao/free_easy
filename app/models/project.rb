class Project < ApplicationRecord
  enum demand: [ :face_to_face, :remote ]
end
