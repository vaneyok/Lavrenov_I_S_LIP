class User < ApplicationRecord
  alias_attribute :password_digest, :password_hash
  has_secure_password
  validates_uniqueness_of :email, :password_hash
  validates_presence_of :email, :password_hash
  validates_length_of :email, :within => 5..20
  validates_length_of :password, :in => 5..20


  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

  def create_remember_token
    self.remember_token = User.encrypt(User.new_remember_token)
  end

end
