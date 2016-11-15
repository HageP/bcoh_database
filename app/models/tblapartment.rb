class Tblapartment < ApplicationRecord
  # Direct associations

  belongs_to :building,
             :class_name => "Tblbuilding"

  # Indirect associations

  # Validations

end
