class Tblinvoice < ApplicationRecord
  # Direct associations

  belongs_to :tenant,
             :class_name => "Tbltenant"

  # Indirect associations

  # Validations

end
