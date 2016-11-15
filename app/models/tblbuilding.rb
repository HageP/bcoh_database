class Tblbuilding < ApplicationRecord
  # Direct associations

  has_many   :tblapartments,
             :foreign_key => "building_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
