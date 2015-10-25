class User < ActiveRecord::Base
  has_many :entries
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
