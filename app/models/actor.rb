class Actor < ApplicationRecord
  # Direct associations

  has_many   :roles,
             :foreign_key => "actors_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :movies,
             :through => :roles,
             :source => :movies

  # Validations

end
