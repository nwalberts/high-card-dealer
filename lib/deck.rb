class Deck
  # start with this commented in
  SUITS = ['♦', '♣', '♠', '♥']
  RANKS = [2, 3, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']


  def initialize(build_deck)
    @cards = build_deck
  end

  def build_deck
    cards = []
    SUIT.each do |sut|
      RANKS.each do |rank|
        cards << Card.new(rank, suit)
      end
    end
    cards.shuffle
  end

  def deal

  end
end
