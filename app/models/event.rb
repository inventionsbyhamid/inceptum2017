class Event < ApplicationRecord
	has_and_belongs_to_many :users, :uniq => true, :dependent => :destroy

	validates :title, presence: true, length: {maximum: 40}
  	validates :description, presence: true, length: {minimum: 20}
  	validates :rules, presence: true, length: {minimum: 10}
  	validates :location, presence: true, length: {maximum: 30, minimum: 3}
  	validates :date_time, presence: true, length: {maximum: 20, minimum: 3}
  	validates :day, presence: true, :numericality => { :greater_than => 0 }
end
