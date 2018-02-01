text = "I am Trevor. Being@!$$!$%! Trevor 35% is cool. Bana59782355372809nas. Oi.".downcase

#doesnt work well, finds only a single instance,not global
direction = /(([a-z]+).$)+/.match(text)
puts direction

#strip text
direction2 = text.gsub(/([A-Za-z]+[:space:]*)/,'')
puts text
puts direction2

#spaces and a-z only
direction3 = text.gsub(/[^a-z\s]/,'')
puts text
puts direction3
