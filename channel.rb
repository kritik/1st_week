require './item.rb'

class Channel
  # stavim gettery i settery
  attr_accessor :title, :link
  attr_accessor :description, :language
  attr_accessor :pubDate
  
  # peregruzhaem metod parent klassa (Class)
  def initialize(xml)
    @title = xml.split(/<\/?title>/)[1] # delim stroku po tegam <title> i </title>
	@link  = xml.split(/<\/?link>/)[1]
	@description  = xml.split(/<\/?description>/)[1]
	@language = xml.split(/<\/?language>/)[1]
	@pubDate  = xml.split(/<\/?pubDate>/)[1]
	
	# polu4aem rezultat ot delenija po tegam <item> i </item>
	# i  raspechatyvaem
	@items = Array.new
	xml.split(/<\/?item>/).each do |item|
	  # sozdaem novyj objekt klassa Item esli 
	  # v peremennoj item est' teg <title>
	  @items << Item.new(item) if item.include?("<title>")
	end
  end
  #TODO: get news titles, count
end