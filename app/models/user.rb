class User < ApplicationRecord
  attr_accessor :password #What this means is that a new instance of User can be created with all of the data from our sign up form and we can store a password on this instance without having a database column back it.
  validates_confirmation_of :password
  validates :email, :uniqueness => true
  validates :email, :presence => true
  validates :password, :presence => true
  before_save :encrypt_password
  has_many :outfits
  has_many :comments


  def encrypt_password
    self.password_salt = BCrypt::Engine.generate_salt
    self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  end

  def self.authenticate(email, password)
    user = User.where(email: email).first
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
end
