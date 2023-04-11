# 1
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# outputs 1,2,3


# 2


(10..100).include?(42)




# 3
advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!('important', 'urgent')

puts advice

#6

famous_words = "seven years ago..."

famous_words.prepend("Four score")

famous_words.insert(0, "Four score")

=begin

"Four score and " + famous_words
famous_words.prepend("Four score and ")
"Four score and " << famous_words
=end

flinstones = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

flinstones.flatten!

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
 
barney = flintstones.assoc("Barney")

  

