class Tbltenant < ApplicationRecord
  # Direct associations

  has_many   :tblleases,
             :foreign_key => "tenant_id"

  # Indirect associations

  # Validations

end
