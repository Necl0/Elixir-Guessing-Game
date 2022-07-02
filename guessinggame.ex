defmodule Guessinggame do
  def guess(g, 0, target) do
    IO.puts "Game over! The number was #{target}."
  end

  def guess(g, n, target) do
    {g, _} = IO.gets("Enter in a guess: ")
        |> String.trim
        |> Integer.parse


    case g - target do
      0 -> IO.puts"Congratulations, you guessed the number!"
      a when a > 0 ->
        IO.puts "Your guess is greater than the target."
        guess(g, n-1, target)
      a when a < 0 ->
        IO.puts "Your guess is less than the target."
        guess(g, n-1, target)
    end
  end
end


Guessinggame.guess(0, 5, Enum.random(1..100))
