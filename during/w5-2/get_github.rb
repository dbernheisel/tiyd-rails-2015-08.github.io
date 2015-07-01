require 'httparty'

# puts HTTParty.get("https://api.github.com/users/masonfmatthews/repos",
#   headers: {"Authorization" => "token 0f110c12427482247b7e24d736becd1a85a63ac1",
#             "User-Agent" => "masonfmatthews"})

# 0f110c12427482247b7e24d736becd1a85a63ac1

puts HTTParty.get("https://api.github.com/users/masonfmatthews/repos?access_token=0f110c12427482247b7e24d736becd1a85a63ac1")
