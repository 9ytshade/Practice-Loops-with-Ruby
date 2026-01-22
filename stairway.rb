def roll_die
  rand(1..6)
end

def play_game(verbose: true)
  step = 0
  turns = 0

  puts "🎲 Game start! You are at the bottom of the staircase." if verbose

  while step < 10
    turns += 1
    roll = roll_die

    if roll == 5 || roll == 6
      step += 1
      puts "Rolled a #{roll}. You climb up to step #{step}!" if verbose
    elsif roll == 1
      step -= 1
      step = 0 if step < 0
      puts "Rolled a 1. Oops! You slide down to step #{step}." if verbose
    else
      puts "Rolled a #{roll}. Nothing happens. Still on step #{step}." if verbose
    end
  end

  puts "🚀🎉 YOU MADE IT TO STEP 10! ABSOLUTE LEGEND 🎉🚀" if verbose
  turns
end

roll_die play_game