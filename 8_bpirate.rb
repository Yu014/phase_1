require 'nokogiri'
require 'net/http'
require 'uri'

# uri = URI('http://www.codea.mx')
# p Net::HTTP.get(uri)
# uri = URI.parse('http://www.codea.mx')
# p response = Net::HTTP.get_response(uri)

class Page
  def initialize(url)
    # url = url
    # p uri = URI.parse(url)
    #<URI::HTTP http://www.codea.mx>
    # @http = Net::HTTP.get(uri)
    #<!DOCTYPE html>
    # p doc = Nokogiri::HTML(open('http'))
    #(Errno::ENOENT)
    @url = url
    @response = Net::HTTP.get_response(URI(@url)).body
    @doc = Nokogiri::HTML(@response)
  end

  def fetch!
    #Sabe hacer un http request y guarda la respuesta para usarse en otros métodos.
    # request = Net::HTTP::Get.new("index.html")
    # response = @http.request(request)
    # p response.code
    # case response.code.to_i
    # when 200 || 201
    #   p [:success]
    # when (400..499)
    #   p [:bad_request]
    # when (500..599)
    #   p [:server_problems]
    # end
  end

  def links
    #Regresa un array de los links de la página (texto/url).
    nav = @doc.search(".nav navbar-nav")
    p "#{nav.inner_text}"
  end

  def title
    #Regresa el título de la página.
    # title = @doc.search(".title")
    # p "title.inner_text"
  end
end

something = Page.new('http://www.codea.mx')
# something.fetch!
something.links
# something.title