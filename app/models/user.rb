class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :pins
  has_many :husky_breeders
  has_many :pomeranian_breeders
  has_many :pomsky_breeders

  validates :name, presence: true
end
