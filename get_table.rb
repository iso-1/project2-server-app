require 'nokogiri'
require 'open-uri'
require 'pry'

url = 'https://ja.wikipedia.org/wiki/Debian'
html = open(url).read
doc = Nokogiri::HTML(html)

# 下の行をコメントアウトすると、pryが起動する
#binding.pry

# 例：h2要素のみを抜き出す
doc.css('table').each do |node|
  puts node.text
end
