class Movie < ApplicationRecord
  # Direct associations

  belongs_to :director

  has_many   :bookmarks,
             :dependent => :destroy

  has_many   :roles,
             :foreign_key => "movies_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
