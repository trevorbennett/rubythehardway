#hashing

states = {
"California" => "CA",
"Ohio" => "OH",
"Michigan" => "MI",
"Texas" => "TX",
"Florida" => "FL"
}

cities = {
  "OH" => "Columbus",
  "CA" => "San Francisco",
  "FL" => "Miami"
}

cities["MI"] = "Detroit"
cities["TX"] = "Austin"

puts "Ohio cities #{cities["OH"]}"
puts "Cali cities #{cities["CA"]}"

puts "Ohio abbr. is #{states["Ohio"]}"
puts "Florida abbr. is #{states["Florida"]}"

puts "Ohio has: #{cities[states["Ohio"]]}"
puts "Texas has #{cities[states["Texas"]]}"

cities.each do |abbr, city|
    puts "#{abbr}'s city is #{city}"
end

states.each do |state, abbr|
  city = cities[abbr]
  puts "#{state}'s abbr is #{abbr}, and it's city is #{city}"
end

state = states["Virginia"]

if !state
  puts "Virginia doesn't exist"
end

city = cities["Virginia"]
city ||= "Does not exist"
puts "Virginia's city: #{city}"
