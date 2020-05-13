class User < ApplicationRecord
  has_many :characters
  has_many :items, through: :characters
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def display_name
    return self.username if username
    return "#{self.first_name} #{self.last_name}" if self.first_name && self.last_name
    return self.email
  end
end