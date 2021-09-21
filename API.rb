require 'rest-client'

noofppl  = 0

1..100.each do |incr|

response = RestClient.get('https://swapi.dev/', incr)

resphash = response.to_h

heightval = resphash[height]
verifyname = resphash[name]

if heightval > 200

case verifyname
when Darth Vader, Chewbacca, Roos Tarpals, Rugor Nass, Yarael Poof, Lama Su, Tuan Wu, Grievous, Tarfful, Tion Medon
noofppl = noofppl +1
end

end

expect(noofppl).toBe(82);




