class FeedEntry < ActiveRecord::Base

  def self.update_from_feed(feed_url)
    feed = Feedjira::Feed.fetch_and_parse(feed_url)
    add_entries(feed.entries, feed.title)
  end
  
  #def self.update_from_feed_continuously(feed_url, delay_interval = 15.minutes)
   #feed = Feedjira::Feed.fetch_and_parse(feed_url)
   # add_entries(feed.entries)
    #loop do
     # sleep delay_interval
      #feed = Feedjira::Feed.update(feed)
      #add_entries(feed.new_entries) if feed.updated?
    #end
  #end
  
  private
  
  def self.add_entries(entries, feed_title)
    entries.each do |entry|
      unless exists? :guid => entry.id
        create!(  
          :feed_title => feed_title,
          :name         => entry.title,
          :summary      => entry.summary,
          :url          => entry.url,
          :published_at => entry.published,
          :guid         => entry.id
        )
      end
    end
  end
end


#FeedEntry.update_from_feed("http://feeds.feedburner.com/railscasts")
#url = "http://feedjira.com/blog/feed.xml"
#FeedEntry.update_from_feed("http://feedjira.com/blog/feed.xml")
#**FeedEntry.update_from_feed("http://medicinenet.com/rss/dailyhealth.xml")**
#http://rss.nytimes.com/services/xml/rss/nyt/Nutrition.xml
#**FeedEntry.update_from_feed("http://rss.nytimes.com/services/xml/rss/nyt/Nutrition.xml")**



