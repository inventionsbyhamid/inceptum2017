class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates :contact, presence: true, length: {maximum: 13, minimum: 10}
  validates :full_name, presence: true, length: {maximum: 25, minimum: 3}

  has_and_belongs_to_many :events
  
end
