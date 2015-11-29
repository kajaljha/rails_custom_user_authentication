class User < ActiveRecord::Base

	attr_accessible :name, :email

	validates :name, presence: true

   attr_accessible :name, :email, :password, :password_confirmation
   has_secure_password

   has_many :microposts, dependent: :destroy

   before_save { |user| user.email = email.downcase }
   


   
   end
