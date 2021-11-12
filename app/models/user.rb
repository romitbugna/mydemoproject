class User < ApplicationRecord
  rolify
  # has_many :booking
  # has_many :bus
  has_many :schedule
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  after_create :assign_default_role


  def assign_default_role
    self.add_role(:user) if self.roles.blank?
  end 
end
