class Deck
  def initialize
    @cards = load_deck
    @current = nil
  end
  def cards
    @cards
  end
  def current
    @current
  end

  def load_deck
    new_deck = []
    i = 0
    [:spades, :clubs, :hearts, :diamonds].each do |suit|
      ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K'].each do |value|
        new_deck.push Card.new({suit: suit, value: value, index: i})
        i += 1
      end
    end
    return new_deck
  end

  def draw
    if @cards.any?
      return @current = @cards.shift
    else
      return 'no more cards'
    end
  end

  def shuffle
    @cards.length.times do |i|
      rand_i = rand @cards.length - i
      @cards[i] = @cards[rand_i]
      @cards[rand_i] = @cards[i]
    end
    return @cards
  end
end
