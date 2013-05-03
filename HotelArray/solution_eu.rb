require 'nokogiri'

puts "Openning Wynn File"
wynn_file = File.open("wynn.html")
doc = Nokogiri::HTML(wynn_file)
wynn_file.close
#for each room_availability_container tr, check this td and a and class = togglelink jqrt for the room name
room_price = {}
doc.css("tbody#room_availability_container tr.maintr").map{|row|
		[row.css("td.roomType a.togglelink").text,row.css("td.roomPrice strong.click_change_currency").text]
	}