class Movie < ApplicationRecord
  # Direct associations

  has_many   :roles,
             :foreign_key => "movies_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
