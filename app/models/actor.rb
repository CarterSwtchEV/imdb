class Actor < ApplicationRecord
  # Direct associations

  has_many   :roles,
             :foreign_key => "actors_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
