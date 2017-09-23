class Movie < ApplicationRecord
  # Direct associations

  belongs_to :director

  has_many   :bookmarks,
             :dependent => :destroy

  has_many   :roles,
             :foreign_key => "movies_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :bookmarks,
             :source => :users

  has_many   :actors,
             :through => :roles,
             :source => :actors

  # Validations

end
