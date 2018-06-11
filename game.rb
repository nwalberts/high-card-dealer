# require_relative "lib/card"
# require_relative "lib/deck"
# require_relative "lib/hand"

deck = Deck.new
player_1_cards = Deck.deal(4)
player_2_cards = Deck.deal(4)

player_1 = Hand.new(player_1_cards)
player_2 = Hand.new(player_2_cards)

# removed
player_1.card_output
player_2.card_output

puts "Player 1's hand value: #{player_1.hand_value}"
puts "Player 2's hand value: #{player_2.hand_value}"

if player_1.hand_value > player_2.hand_value
  puts "Player 1 wins!"
elsif player_1.hand_value < player_2.hand_value
  puts "Player 2 wins!"
else
  puts "Tie!"
