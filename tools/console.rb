require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


first_names = [
  "mark",
  "elon",
  "avi",
  "eric",
  "steve",
  "prete",
  "aaron",
  "ethan",
  "shawn",

]

last_names_part_1 =[
  "zucker",
  "flom",
  "musk",
  "jobs",
  "ef",
  "camis",
  "aus"
]

last_names_part_2 =[
  "burg",
  "baum",
  "musk",
  "jobs",
  "ti",
  "sar",
  "tin"
]

startup_names_part_1 = [
  'fun',
  "grin",
  "fun",
  "intuit",
  "dumb",
  "stupid"
] 

startup_names_part_2 = [
  'hound',
  "dex",
  "ner",
  "tab",
  ".er",
  ".io"
] 

invest_rounds = [
  "Angel", 
  "Pre-Seed", 
  "Seed", 
  "Series A", 
  "Series B", 
  "Series C"
]

# let's make some startups

10.times do
  name = startup_names_part_1.sample + startup_names_part_2.sample
  founder = first_names.sample + ' ' + last_names_part_1.sample + last_names_part_2.sample
  Startup.new(name: name, founder: founder, domain: 'startup_aggregator')
end


# let's make some vcs!

5.times do
  vc = first_names.sample + ' ' + last_names_part_2.sample + last_names_part_1.sample
  VenturtCapitalist.new(vc)
end





binding.pry
0 #leave this here to ensure binding.pry isn't the last line