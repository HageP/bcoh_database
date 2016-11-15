class Tbllease < ApplicationRecord
  # Direct associations

  belongs_to :tenant,
             :class_name => "Tbltenant"

  belongs_to :apartment,
             :class_name => "Tblapartment"

  # Indirect associations

  # Validations

end
