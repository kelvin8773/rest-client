require 'rest-client'
URL = 'https://www.bing.com/search'
matcher = /<h2><a.*?href="(?<link>.*?)".*?h=.*?>(?<text>.*?)<\/a.*?>/

p "please input the keyword for search:"
input = gets.chomp

response = RestClient.get URL, {params: {q: input}}

# p response.code
# p response.cookies
# p response.headers

p "Here is the result:"
p "##################################"


result = response.body.scan(matcher)

result.each do |x|
  p "#{x[1]}"
  p "#{x[0]}"
  p "-------------------------------------------------------------"
end