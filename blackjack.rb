def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(11) +1
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay."
end

def get_user_input
  get_user_input = gets.chomp
end

def end_game(total, dealer_total)
  if total == 21
    puts "Blackjack! You hit #{total}! Thanks for playing!"
  elsif total > 21
    puts "Sorry, you hit #{total}. Thanks for playing!"
  elsif dealer_total == 21
    puts "#{dealer_total}. House wins."
  elsif dealer_total > 21
    puts "House loss. You win!"
  elsif total > dealer_total && total < 21
    puts "House loss. You win!"
  end
  p dealer_total
  exit
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  total
end

def initial_dealer
  dealer_total = deal_card
  puts "House start: #{dealer_total}"
  dealer_total += deal_card
end

def hit?(total, dealer_total)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    total += deal_card
    total
  elsif user_input == "s"
    end_game(total, dealer_total)
  else
    invalid_command
    hit?(total)
  end
end

def dealer_hit(dealer_total, dealer_risk)
  if dealer_total < (17 + dealer_risk)
    dealer_total += deal_card
    dealer_total
  else
    dealer_total
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  dealer_total = initial_dealer
  dealer_risk = rand(3)
  total = initial_round
  while total < 21 && dealer_total < 21 do
    total = hit?(total, dealer_total)
    display_card_total(total)
    dealer_total = dealer_hit(dealer_total, dealer_risk)
  end
  end_game(total, dealer_total)
end
    
runner