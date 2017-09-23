class Role < ApplicationRecord
  # Direct associations

  belongs_to :actors,
             :class_name => "Actor"

  belongs_to :movies,
             :class_name => "Movie"

  # Indirect associations

  # Validations

end
