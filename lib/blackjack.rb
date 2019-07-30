require "pry"

def welcome
  # code #welcome here

puts "Welcome to the Blackjack Table"

end

def deal_card
  # code #deal_card here

(rand(1...11))


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

input = gets.chomp
#return input


end

def end_game(card_total)
  # code #end_game here

puts "Sorry, you hit #{card_total}. Thanks for playing!"

end

def initial_round
  # code #initial_round here

card_total = deal_card + deal_card

display_card_total(card_total)
#binding.pry
return card_total

end

def hit?(card_total)

prompt_user
input = get_user_input

if input == "h"
  new_card = deal_card
  card_total += new_card
elsif input == "s"
  card_total
else
  invalid_command
  hit?(card_total)
end


end

def invalid_command
  # code invalid_command here
puts  "Please enter a valid command"
  #prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner

welcome

first_hit = 0
second_hit = 0
total_hit = 0
hit_count = 0
asked_again = false

inital_total = initial_round

until total_hit == 21

if first_hit = 0
  first_hit = hit?(inital_total)
  second_hit = hit?(first_hit)
end

continued_hit = hit?(second_hit)

hit_one = hit?(hit_two)
hit_count += 1


hit_two = hit(hit_one)
hit_count += 1

total_hit = hit_two

if hit_one == hit_two
  sticked = true




  if first_hit == inital_total && asked_again = false
    second_hit = hit?(inital_total)
    asked_again = true

  end

if first_hit == 0
first_hit = hit?(inital_total)
end



total_hit = first_hit += second_hit

puts "Your cards add up to #{total_hit}"
end

end_game(total_hit)
exit
end
