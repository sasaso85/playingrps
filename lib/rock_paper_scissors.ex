defmodule RockPaperScissors do
  def play(player_choice) do
    valid_choices = ["rock", "paper", "scissors"]
    computer_choice = Enum.random(valid_choices)
    
    if player_choice in valid_choices do
      case {player_choice, computer_choice} do
        {"rock", "scissors"}, {"paper", "rock"}, {"scissors", "paper"} ->
          IO.puts "You win!"
        {"rock", "paper"}, {"paper", "scissors"}, {"scissors", "rock"} ->
          IO.puts "Computer wins!"
        _ ->
          IO.puts "It's a tie!"
      end
    else
      IO.puts "Invalid choice. Please choose from #{valid_choices}."
    end
  end
end
