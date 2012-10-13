class Item
  attr_accessor :title, :link
  attr_accessor :description, :pubDate
  
  def initialize xml
    @title = xml.split(/<\/?title>/)[1] # delim stroku po tegam <title> i </title>
	@link  = xml.split(/<\/?link>/)[1]
	@description  = xml.split(/<\/?description>/)[1]
	@pubDate  = xml.split(/<\/?pubDate>/)[1]
  end
end