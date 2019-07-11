def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  num = rand(11) + 1
  num
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  response = gets.chomp
  response
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_one = deal_card
  card_two = deal_card
  sum = card_one + card_two
  display_card_total(sum)
  sum
end

def hit?(current_total)
  # code hit? here
 prompt_user
 user_input = get_user_input
  if user_input == "h"
    new_card = deal_card
    current_total += new_card
    display_card_total(current_total)
    current_total
  elsif user_input == "s"
    current_total
  else
    invalid_command
    current_total
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = hit?(initial_round)
  while total <= 21
    total = hit?(total)
  end
  end_game(total)
end


#ßrunner
