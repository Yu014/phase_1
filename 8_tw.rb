require 'nokogiri'
require 'open-uri'

# html_file = open( ARGV.to_s )
# puts html_file.read

class TwitterScrapper
  def initialize
    @doc = Nokogiri::HTML(open("https://twitter.com/Pizcade_Sal"))
    # @doc = Nokogiri::HTML(File.open('twitter_account.html'))
  end

  def extract_username
    profile_name = @doc.search(".ProfileHeaderCard-name > a")
    p " Username: #{profile_name.first.inner_text} "
    # user = @doc.search(".ProfileHeaderCard-screennameLink")
    # user.first.inner_text

  end

  def extract_tweets
    count = 0
    p "Tweets:"
    
    5.times do 

    arr = []
    tweet_t = @doc.search(".time")
    tweet_t.map do |date|
      arr << date.text.gsub(/\n/, "").lstrip
    end

    content = []
    tweet_c = @doc.search(".js-tweet-text-container")
    tweet_c.map do |text|
      content << text.text.gsub(/\n/, "").lstrip
    end

    int = []
    tweet_f = @doc.search(".ProfileTweet-actionCountList")
    tweet_f.map do |fav|
      int << fav.text.gsub(/\n/, "").lstrip
    end

    p "#{arr[count]}: #{content[count]}"
    puts "#{int[count]}"
    
    count += 1
    end
  end

  def extract_stats
    arr = []
    stats = @doc.search(".ProfileNav-value")
    stats.map do |num|
      arr << num.text
    end
    p "------------------------------------------------------------------------"
    p " Tweets:#{arr[0]}, Siguiendo:#{arr[1]}, Seguidores:#{arr[2]}, Favoritos: #{arr[3]}"
    p "------------------------------------------------------------------------"


  end

end

account = TwitterScrapper.new
account.extract_username
account.extract_stats
account.extract_tweets
