def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_num)
  puts "Your cards add up to #{card_num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_num)
  puts "Sorry, you hit #{card_num}. Thanks for playing!"
end

def initial_round
  deal1 = deal_card()
  deal2 = deal_card()
  total = deal1 + deal2
  display_card_total(total)
  return total
end

def hit?(num)
  prompt_user()
  if get_user_input() == "h"
    num += deal_card()
  end
  return num
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner()
  num = 0
  welcome()
  num += initial_round()
  until num >= 21
    num = hit?(num)
    display_card_total(num)
  end
end_game(num)
end
