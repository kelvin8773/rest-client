require 'rest-client'

URL = 'https://www.bing.com/search'
p "please input the keyword for search: "
input = gets.chomp

respone = RestClient.get URL, {params: {q: input}}

p respone.body

# result = respone.body.scan(/<h2><a.*?[a-zA-Z]+<\/a.*?>)