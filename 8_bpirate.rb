require 'nokogiri'
require 'net/http'
require 'uri'

class Page
  def initialize(url)
    @url = url
    @response = Net::HTTP.get_response(URI(@url)).body
    @doc = Nokogiri::HTML(@response)
  end

  def fetch!
    "url> #{@url}"
    "Fetching..."
  end

  def links
    #Regresa un array de los links de la página (texto/url).
    count = 2
    finish = 7
    while count < finish
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
    "   #{arr[count]}: #{links[count]}"
    count += 1
    end
  end

  def title
    #Regresa el título de la página.
    name = @doc.search("title")
    "Título: #{name.text}"
  end
end

something = Page.new('http://www.codea.mx')
puts something.fetch!
puts something.title
puts something.links
