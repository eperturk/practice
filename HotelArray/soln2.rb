require 'Nokogiri'

page = Nokogiri::HTML(open("wynn.html"))

titles = [page.css('div#4911701 span')[1].text, page.css('div#4911702 span')[1].text, page.css('div#4911703 span')[1].text, page.css('div#4911704 span')[1].text ,page.css('div#4911705 span')[1].text, page.css('div#4911706 span')[1].text ]
prices = [page.css('div#room_id_4911701_81255715_0_42 strong')[0].text, page.css('div#room_id_4911702_81255715_0_42 strong')[0].text, page.css('div#room_id_4911703_81255718_0_41 strong')[0].text, page.css('div#room_id_4911704_81255718_0_41 strong')[0].text, page.css('div#room_id_4911705_81255718_0_41 strong')[0].text, page.css('div#room_id_4911706_81255715_0_42 strong')[0].text]
final_array = titles.zip(prices)

p final_array
