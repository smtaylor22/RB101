VALID_CHOICES = { r: 'rock', p: 'paper', sc: 'scissors',
                  sp: 'spock', l: 'lizard' }

WINNING_MOVES = { r: ['sc', 'l'],
                  p: ['r', 'sp'],
                  sc: ['p', 'l'],
                  l: ['sp', 'p'],
                  sp: ['sc', 'r'] }

scores = { you: 0, computer: 0 }
winner = ''

def prompt(message)
  Kernel.puts("=>#{message}")
end

def win?(first, second)
  WINNING_MOVES[first].include?(second.to_s)
end

def compute_score(player, computer, scores)
  if win?(player, computer)
    scores[:you] += 1
  elsif win?(computer, player)
    scores[:computer] += 1
  end
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You Won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie")
  end
end

loop do
  choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.values.join(', ')}")

    VALID_CHOICES.each do |key, val|
      prompt(" #{key} = #{val}")
    end

    choice = Kernel.gets.chomp.to_sym

    if VALID_CHOICES.key?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.keys.sample

  prompt("You chose: #{VALID_CHOICES[choice]}
          Computer chose: #{VALID_CHOICES[computer_choice]}")

  display_results(choice, computer_choice)
  compute_score(choice, computer_choice, scores)

  if scores.any? { |key, val| winner = key if val >= 3 }
    prompt("#{winner.capitalize} are the Grand Winner!") if winner == :you
    prompt("#{winner.capitalize} is the Grand Winner!") if winner == :computer
    break
  else
    prompt("Current score: You = #{scores[:you]} <-->
            Computer = #{scores[:computer]}")
    prompt("Do you want to play again?")
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end
end

prompt("Thank you for playing")
