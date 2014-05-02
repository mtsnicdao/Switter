class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :password, :confirmation => { message: 'password' },
                         :length => { minimum: 6, message: 'password length' }

   validates :email, :presence => { message: 'email' },
              :format => { with: /\A[A-Za-z0-9._%+-]/ , message: 'email format' },
              :uniqueness => { message: 'uniqueness?' }
end
