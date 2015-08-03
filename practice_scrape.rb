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


 	url = 'http://sf.funcheap.com/de-young-museum-free-admission-day-first-tuesdays-24/'

 	response = RestClient.get url, :user_agent => 'Chrome'
 	page = Nokogiri::HTML(response)

 	title = page.css('div.post h1.title').text
 	date = page.css('div#stats a').first.text
 	cost = page.css('div.post span.cost + a.tt:not(div.tooltip)').text
 	time =
 	# p cost.split('\r')
 	# p content