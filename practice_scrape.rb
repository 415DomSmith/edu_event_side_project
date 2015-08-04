require 'rubygems'
require 'nokogiri'  
require 'typhoeus'
require 'pry'
require 'rest-client'

	# url = 'http://www.redtri.com/events/san-francisco/'
	# # response = Typhoeus.get(url)
	# response = RestClient.get url, :user_agent => 'Chrome'
	# page = Nokogiri::HTML(response)

	# links = page.css('div.events-2-cols-grid div.event.container h2 a')

	# links.each do |link|
	# 	puts link.attr('href')
	# end

	# p links

	# link = links[2].split('"')
	# one = links[2]
	# # p one
	# p links


 	# url = 'http://sf.funcheap.com/free-admission-day-museum-of-craft-and-design-dogpatch-22/' #GOOD
 	# url = 'http://sf.funcheap.com/legion-of-honor-free-admission-day-first-tuesdays-24/' #GOOD
 	# url = 'http://sf.funcheap.com/annual-san-francisco-jewish-film-festival-free-movie-day-sf/' #GOOD
 	# url = 'http://sf.funcheap.com/2015-backtoschool-backpack-giveaway-sf/' #IMG DOESN'T WORK
 	# url = 'http://sf.funcheap.com/neuroscience-love-palo-alto/' #IMG DOESN'T WORK
 	# url = 'http://sf.funcheap.com/life-literary-fiction-book-conversation-sf/' #ONLY GETS IMG (gif)
 	# url = 'http://sf.funcheap.com/summertime-outdoor-pop-rock-concert-orinda/' #GOOD
 	# url = 'http://sf.funcheap.com/its-just-2-minutes-stand-up-comedy-game-show-haight-13/' #GOOD
 	# url = 'http://sf.funcheap.com/hot-flash-heat-wave-garage-pop-rickshaw-stop/' #IMG DOESN'T WORK
 	# url = 'http://sf.funcheap.com/summer-stride-2015-visions-loveliness-book-event-sf/' #IMG DOESN'T WORK
 	# url = 'http://sf.funcheap.com/people-plazas-free-rb-concert-sf/' #GOOD
 	# url = 'http://sf.funcheap.com/oakland-baltimore-orioles-2-ticket-day-2/' #GOOD
 	# url = 'http://sf.funcheap.com/drink-draw-art-event-raffle-the-knockout-14/' #GOOD


 	response = RestClient.get url, :user_agent => 'Chrome'
 	page = Nokogiri::HTML(response)

 	title = page.css('header.entry-header h1.entry-title').text
 	date = page.css('div.entry-meta span.date-time a').text
 	cost = page.css('div.entry-meta span.cost').text
 	time = page.css('div.entry-meta span.date-time > span').text
 	city = page.css('div.entry-meta span.region-parent').text
 	address = page.css('div.entry-meta span.venue').text
 	# image_url = page.css('div.clearfloat img').attr('src').text
 	# image_url = page.css('meta og:image').text
 	description = page.css('div.entry-content-description p').text
 

 	p title
 	p date
 	p cost
 	p time
 	p city
 	p address
 	# p image_url
 	p description
 
 	# p page.to_s

 	# p page.to_s
 	# p cost.split('\r')
 	# p content