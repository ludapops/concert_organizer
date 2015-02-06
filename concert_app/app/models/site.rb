class Site < ActiveRecord::Base
	def self.created_today
		# order(created_at: :desc).limit(n)
		where(date: Date.today)
	end
end
