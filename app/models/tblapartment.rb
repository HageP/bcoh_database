class Tblapartment < ApplicationRecord
  # Direct associations

  has_many   :tblleases,
             :foreign_key => "apartment_id"

  belongs_to :building,
             :class_name => "Tblbuilding"

  # Indirect associations

  # Validations

end
