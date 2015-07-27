#class Publication < ActiveRecord::Base
	#has_many :feed_entries

	#def self.update_from_feed(feed_url)
    #feed = Feedjira::Feed.fetch_and_parse(feed_url)
    #add_publications(publication.title)
	#end

  #private


    #def self.add_entries(publication_title)
    #entries.each do |entry|
      #unless exists? :guid => entry.id
       # create!(  
        #:publication_title => publication_title
          
        #)
      #end
  #end
  #end
#end