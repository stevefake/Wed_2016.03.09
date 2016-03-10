#generate random number between 1 and 100
  #and ask you for a guess
#If guess is less, tell you were low and let you guess again.
#If guess is greater, tell you were high and let you guess again.
#If guess is correct, tell you that you win and then quit.
def random_num_generator
  return rand(1..100)
end

num = random_num_generator
count = 0

#which second method would be useful to call here?
  #Create, add to, and check for presence in an array
    #def guessing_game[array]
     #check user_input against presence in array
puts "Guess my random number between 1 and 100."
while count < 5
  user_input = gets.chomp
  count += 1
  if count == 5 && user_input.to_i != num
    puts "You lose." #why did this not work when i had it as an
                       #elsif a few lines below?
  elsif user_input.to_i < num
    puts "You're low, guess again, bub."
  elsif user_input.to_i > num
    puts "You're high, play it again Sam."
  elsif user_input == user_input
    puts "Are you ill, Doc? Guess a new number."
      #broken : user_input == user_input(previous)
  else user_input.to_i == num
      puts "You win!"
      #doesn't quit program if user correctly guesses early?
  end
end

#Other requirements:
#After 5 incorrect guesses, the program should tell you that you lose.
#If guess same number twice, ask you if you're feeling all right
#Your code should include  at least two methods.
#This game should be run from the command line by typing "ruby guessing_game.rb".
