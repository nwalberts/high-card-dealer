## Introduction

Let's make a simple application that can deal cards, called **High Card Dealer**. It's a 52-card deck game where the player with the highest total value of cards wins the game.

 I've written a few feature stories below, but we could also organize them into *user stories* if we wished.

Each card should have a suit and a rank. e.g. 3 (rank) of hearts (suit).

There are four suits, and 13 ranks, including face cards. All card ranks have hierarchy. 4 is greater than 2. Jack is greater than 10. Ace is greater than queen. Each of the ranks and suits can be found below.

```ruby
SUITS = ['♦', '♣', '♠', '♥']
RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
```

I should be able to create a `Deck` class comprised of entirely of unique `Card`s. If I combine each of the ranks and suits in unique ways, I should have a deck of 52 cards.

Cards can be dealt i.e. removed from a deck and given to a player, which can be represented in a `Hand` class. A `Hand` object should be be able to hold these cards in an array. A hand should have no more than four cards.

More specifically:
**Card**:
* should be initialized with `rank` and `suit`
* should be able to call `.value` on a `Card` object, that returns the value of the card (J|11, Q|12, K|13, A|14)

**Deck**:
* should initialize without arguments
* should create an array of 52 unique cards
* should have a `#deal` method, that accepts one argument `num`. `#deal` should remove `num` number of cards from the deck, and return them.

**Hand**:
* should be initialized with an array of card objects
* should have a `#hand_value` method that returns the total value of the cards in a hand

## Game Rules
* A user can start the game by running `game.rb`
* When the game begins, a user should see the output `GAME START!`
* A deck of 52 cards is dealt
* Two hands should be initialized for player one and player two
* As the cards are dealt, a user should see a list of these cards output to the screen
* As a user, I should see the total values of each hand
* The player with the highest hand value (sum of card values) wins the game
* Output should be given that shows which player won the game.
* If the hand values are the same, I should see the output `TIE!`

## Sample Output

```no-highlight
$ ./game.rb
GAME START!

There are 52 cards in the deck.

Player 1 was dealt 10♦, A♣, Q♠, 8♥
Player 2 was dealt 5♥, 7♦, 2♥, J♠

Player 1's hand value: 44
Player 2's hand value: 25

Player 1 wins the game!
```
