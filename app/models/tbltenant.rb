class Tbltenant < ApplicationRecord
  # Direct associations

  has_many   :tblinvoices,
             :foreign_key => "tenant_id"

  has_many   :tblleases,
             :foreign_key => "tenant_id"

  # Indirect associations

  # Validations

end
