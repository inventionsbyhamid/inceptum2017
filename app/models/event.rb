require 'csv'
class Event < ApplicationRecord
	has_and_belongs_to_many :users, :uniq => true, :dependent => :destroy

	validates :title, presence: true, length: {maximum: 40}
  	validates :description, presence: true, length: {minimum: 20}
  	validates :location, presence: true, length: {maximum: 30, minimum: 3}
  	validates :date_time, presence: true, length: {maximum: 20, minimum: 3}
  	validates :day, presence: true, :numericality => { :greater_than => 0 }

  	def to_csv()
    attributes = %w{full_name email contact} #customize columns here
    users = self.users

    CSV.generate(headers: true) do |csv|
      csv << attributes

      users.each do |user|
        csv << attributes.map{ |attr| user.send(attr) }
      end
    end
  	end
end
