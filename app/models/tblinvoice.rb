class Tblinvoice < ApplicationRecord
  # Direct associations

  has_many   :tblpayments,
             :foreign_key => "invoice_id",
             :dependent => :destroy

  belongs_to :tenant,
             :class_name => "Tbltenant"

  # Indirect associations

  # Validations

end
