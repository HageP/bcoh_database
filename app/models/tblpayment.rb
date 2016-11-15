class Tblpayment < ApplicationRecord
  # Direct associations

  belongs_to :paymentmethod,
             :class_name => "Tblpaymentmethod"

  belongs_to :invoice,
             :class_name => "Tblinvoice"

  # Indirect associations

  # Validations

end
