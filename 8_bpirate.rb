require 'nokogiri'
require 'net/http'
require 'uri'

class Page
  def initialize(url)
    p @url = url[0..-1].join(' ')
    @response = Net::HTTP.get_response(URI(@url)).body
    @doc = Nokogiri::HTML(@response)
  end

  def fetch!
    "Fetching..."
  end

  def links
    #Regresa un array de los links de la página (texto/url).
    arr = []
    nav = @doc.search(".nav-item")
    nav.map do |item|
      arr << "#{item.text.gsub(/\n/, "")}"
    end
    links = []
    link = @doc.search(".nav-item")
    link.map do |item|
      links << item.search("a").first["href"]
    end
    
    count = 2
    finish = arr.length
    while count < finish
      p "   #{arr[count]}: #{links[count]}"
      count += 1
    end
  end

  def title
    #Regresa el título de la página.
    name = @doc.search("title")
    "Título: #{name.text}"
  end
end

class Browser 
  def run!
    input = ARGV
    something = Page.new(input)
    puts something.fetch!
    puts something.title
    puts something.links
  end
end

Browser.new.run!
