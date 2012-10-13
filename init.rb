require './channel.rb' # inkludim vnishnij fail
require "open-uri"     # biblioteka dlja s4ityvanija iz interneta

urls = Array.new
urls << "./rss.xml"
urls << "http://feeds2.feedburner.com/maaleht"
urls << "http://feeds.feedburner.com/org/LOR"

urls.each do |url|
    # proverjaem esli internet ssylka
    if url.start_with?("http://")
	  file = open(url).read
	else
	  file = File.read(url) #schityvaem soderzhanie faila
	end
	
	test = Channel.new(file)

	puts "Latest top #{test.count} news at #{url}:"
	test.title_headers.each do |row|
	  puts row
	end
	puts "\n"
end
