class User
  include Mongoid::Document

  authenticates_with_sorcery!

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  field :nickname
  field :email
  
  validates_presence_of :nickname
  validates_uniqueness_of :nickname, :email, :case_sensitive => false
  validates_presence_of :password, :on => :create
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password
  attr_accessible :nickname, :email, :password, :password_confirmation, :remember_me

  attr_accessor :remember_me

end

