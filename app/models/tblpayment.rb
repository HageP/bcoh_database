class Tblpayment < ApplicationRecord
  # Direct associations

  belongs_to :invoice,
             :class_name => "Tblinvoice"

  # Indirect associations

  # Validations

end
