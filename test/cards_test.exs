defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck creates 52 cards" do
    deck = Cards.create_deck
    assert length(deck) == 52
  end

  test "cards should be shuffled" do
    deck = Cards.create_deck
    shuffled = Cards.shuffle(deck)
    refute deck == shuffled
  end
end
