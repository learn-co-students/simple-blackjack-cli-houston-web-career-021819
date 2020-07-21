def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
   return rand(1..11)# code #deal_card here
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
   method= gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  if card_total > 21
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end
end

def initial_round
  sum = deal_card + deal_card 
  display_card_total(sum)
   return sum
  # code #initial_round here
end

def hit?(current_total)
  prompt_user
   input= get_user_input
   if input == "h"
     current_total+= deal_card
   elsif input == "s"
     return current_total
   end# code hit? here
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
   hand=initial_round
   until hand>21 do
     hand=hit?(hand)
     display_card_total(hand)
   end
   end_game(hand)
 end		 # code runner here

    
