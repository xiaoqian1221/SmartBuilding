class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :vehicles
  belongs_to :role

  canadian_postal_code = /\A[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1}[ -]?\d{1}[A-Z]{1}\d{1}\z/
  validates :email, :uniqueness => true
  validates :fname, :lname, :street, :city, :postal, :phone, :presence => true
  validates :postal, :format => { :with => canadian_postal_code }
  validates :phone, :length => { :is => 10, :message => 'must only contain 10 digits.' }
end
