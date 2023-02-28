# PROBLEM
# GOAL: two players, each player gets to pick a unique flip sequence
# Flip a coin until one of those sequences is reached
#
# INPUT: 2 flip sequences that are not the same
# OUTPUT: winner - string
#
# EXAMPLES
# RULES
#   Explicit
#     two players' flip sequences have to be different
#     sequence must be at least two long
#     no longer than 5
#   Implicit
#
# DATA STRUCTURES
#   Array of strings that are either heads or tails
#   Guesses are entered as strings but then converted to an array
# ALGORITHM
#   Tell the user their options
#   Get a sequence from player 1
#   get a sequence from player 2
#   Begin flipping
#     flip a coin and record result
#     check if either player won
#     if not, we flip again
#   Report winner
# CODE
def prompt(msg)
  puts "==> #{msg}"
end

def display_introduction
  system 'clear'
  prompt <<HEREDOC
Welcome to coinflip!
You will choose a 2-5 sequence of heads/tails
Your opponent chooses the same!
Then we'll flip a coin until somebody wins.
Ready to play?
HEREDOC

end

def pause
  prompt "Press enter to continue"
  input = gets
  return if input
end

def play_game
  display_introduction
  pause
  player_one_sequence = nil
  player_two_sequence = nil
  loop do
    player_one_sequence = get_sequence
    player_two_sequence = get_sequence
    break if player_one_sequence != player_two_sequence
    prompt "You must choose different sequences! Try again"
  end
  play_round(player_one_sequence, player_two_sequence)
end

def valid?(choice)
  if choice.size < 2 && choice.size > 5
    return false
  end

  choice.chars.all? { |char| char == 'h' || char == 't' }
end

def display_options
  prompt "Enter between 2 and 5 characters representing a heads/tails sequence"
  prompt "type t for tails and h for heads"
  prompt "3 character example: tth"
  prompt "5 character example: htht"
end

def get_sequence
  display_options
  sequence = nil
  loop do
    sequence = gets.chomp.downcase
    break if valid?(sequence)
    prompt "not a valid choice - try again"
  end

  sequence
end

def play_round(player_one_sequence, player_two_sequence)
  flips = ''
  loop do
    flips << flip_coin
    player_one_match = flips.slice(-player_one_sequence.size, player_one_sequence.size)
    player_two_match = flips.slice(-player_two_sequence.size, player_two_sequence.size)
    break if player_one_match == player_one_sequence || player_two_match == player_two_sequence
  end

  prompt flips
end

def flip_coin
  ["h", "t"].sample
end
#   Begin flipping
#     flip a coin and record result
#     check if either player won
#     if not, we flip again
#   Report winner

play_game
