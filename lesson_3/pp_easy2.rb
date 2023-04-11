 
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.key?("Spot")

munsters_description = "The Munsters are creepy in a good way."

munsters_description.swapcase!()
munsters_description.downcase!()
munsters_description.capitalize!()
munsters_description.upcase!()

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }


ages.merge!(additional_ages)

advice = "Few things in life are as important as house training your pet dinosaur."

advice.match?("Dino")




flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flinstones.push("Dino")

flinstones.concat(["Dino", "Hoppy"])




advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!("Few things in life are as important as ")

statement = "The Flintstones Rock!"

statement.chars.count {|x| x == 't'}

statement.center(table.size)