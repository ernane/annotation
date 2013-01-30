class User < ActiveRecord::Base
  attr_accessible :email, :username, :password, :password_confirmation

  validates_presence_of :username, :email
  validates_uniqueness_of :username, :email
  validates_confirmation_of :password
  
  has_many :snippets, dependent: :destroy
  before_create { generate_token(:auth_token) }

  has_secure_password
  

private
  def self.generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
end