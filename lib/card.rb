class Card
  def initialize attributes
    @suit = attributes.fetch(:suit)
    @value = attributes.fetch(:value)
  end

  def suit
    @suit
  end

  def value
    @value
  end
end
