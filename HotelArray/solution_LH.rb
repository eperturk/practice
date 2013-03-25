require 'nokogiri'




def hotel_room_price
page = Nokogiri::HTML(open("Wynn.html"))
arr_room = []
arr_price = []

page.css("a [class = 'togglelink jqrt']").each{|x| arr_room << x.text}

page.css("strong[class = 'click_change_currency jq_tooltip toggle_price_per_night_or_stay']").each{|x| arr_price << x.text}
p arr_room.zip(arr_price)

end


hotel_room_price