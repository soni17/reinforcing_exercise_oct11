def select_cards(possible_cards, hand)

  while (hand.length < 3)
    randomCard = possible_cards.sample
    print "Do you want to pick up #{randomCard}?"
    answer = gets.chomp
    if answer.downcase == 'y'
      hand << randomCard
    end

  end

  return hand

end

available_cards = ['queen of spades', '2 of clubs', '3 of diamonds', 'jack of spades', 'queen of hearts']

new_hand = select_cards(available_cards, [])

display_hand = new_hand.join("\n")

puts "Your new hand is: \n#{display_hand}"
