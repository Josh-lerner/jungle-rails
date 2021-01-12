class User < ActiveRecord::Base
  has_secure_password

  validates :name, presence: true
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 3 }
  validates :password_confirmation, presence: true, length: { minimum: 3 }

  def self.authenticate_with_credentials(email, password)
      user = where('LOWER(email) = ?', email.downcase.delete(' '))[0]
      user && user.authenticate(password)
  end
end
