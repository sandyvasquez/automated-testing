# card.rb
VALID_SUITS = [:hearts, :spades, :clubs, :diamonds]


class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    while(!VALID_SUITS)
      raise ArgumentError, "Invalid suit"
    end

    if value < 1 || value > 13
      raise ArgumentError, "#{value} is an invalid value"
    end


    @value = value
    @suit = suit
  end


  def to_s

    # if value == 1
    #   return "Ace of #{suit.to_s}"
    # elsif value == 11
    #   return "Jack of #{suit.to_s}"
    # elsif value == 12
    #   return "Queen of #{suit.to_s}"
    # elsif value == 13
    #   return "King of #{suit.to_s}"
    # else
    #   return "#{value} of #{suit.to_s}"
    #   end
    #
    card_text_values = {
        1 => "Ace",
        11 => "Jack",
        12 => "Queen",
        13 => "King"
    }

    if card_text_values[value].nil?  #is it empty?
      card_text_values[value] = value
    end
    return "#{card_text_values[value]} of #{suit.to_s}"
  end
end

