require 'nokogiri'
require 'open-uri'

# parrent class
class Document
  def initialize(link)
    @link = link
  end

  def parse
    Nokogiri::HTML(open(@link))
  end
end

# class for parsing links
class Link < Document
  def parse
    super.css('ul a , p a').each { |element| puts element[:href] }
  end
end

# class for parsing headers
class Header < Document
  def parse
    super.css('h2').each { |element| puts element.text }
  end
end

puts 'Links: '
Link.new('http://www.nokogiri.org/tutorials/installing_nokogiri.html').parse
puts 'Headers: '
Header.new('http://www.nokogiri.org/tutorials/installing_nokogiri.html').parse
