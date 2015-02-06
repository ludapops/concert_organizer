# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1...33).each do |i|
	
	if i % 11 == 0 
		x = Concert.create artist: "artist #{i}", date: Date.today, venue: "the venue for #{i}",
	 city: "city for #{i}", price: rand(10...50), description: "description for #{i}"
	end

	x = Concert.create artist: "artist #{i}", date: Date.yesterday, venue: "the venue for #{i}",
	 city: "city for #{i}", price: rand(10...50), description: "description for #{i}"

end