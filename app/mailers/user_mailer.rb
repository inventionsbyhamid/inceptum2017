class UserMailer < ApplicationMailer

	def event_notice(users)
    	mail(to: "inventionsbyhamid@gmail.com", subject: "Inceptum 2017 Postponed", bcc: users)
  	end
end