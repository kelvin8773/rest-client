require 'rest-client'

URL = 'https://www.bing.com/search'
p "please input the keyword for search: "
input = gets.chomp

response = RestClient.get URL, {params: {q: input}}

p response.code
p response.cookies
p response.headers


result = response.body.scan(/<h2><a.*?href="(?<link>.*?)".*?h=.*?>(?<text>.*?)<\/a.*?>/)
p result