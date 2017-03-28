task :send_notice => :environment do
	users = User.pluck(:email)
	puts users
	UserMailer.event_notice(users).deliver_now
	puts "Emails sent"
end