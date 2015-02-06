class Concert < ActiveRecord::Base
	
	def self.last_created_concerts
		# order(created_at: :desc).limit(n)
		where("date >= ?", Date.today.beginning_of_month)
	end

	def self.created_today
		# order(created_at: :desc).limit(n)
		where(date: Date.today)
	end
end
