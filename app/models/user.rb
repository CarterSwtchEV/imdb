class User < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :foreign_key => "users_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :movies,
             :through => :bookmarks,
             :source => :movie

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
