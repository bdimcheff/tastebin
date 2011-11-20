class User
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  field :nickname
  validates_presence_of :nickname
  validates_uniqueness_of :nickname, :email, :case_sensitive => false
  attr_accessible :nickname, :email, :password, :password_confirmation, :remember_me
end

