class Tblpaymentmethod < ApplicationRecord
  # Direct associations

  has_many   :tblpayments,
             :foreign_key => "paymentmethod_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
