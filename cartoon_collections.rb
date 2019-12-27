def roll_call_dwarves(dwarf_array)# code an argument here
  dwarf_array.each_with_index {|dwarf, index| puts "#{index + 1}. #{dwarf}"}
end

def summon_captain_planet(calls)# code an argument here
  calls.map {|word| "#{word.capitalize}!"}
end

def long_planeteer_calls(calls)# code an argument here
  # map array to true/false statements; true if word > 4, false if word 4 or less
  calls = calls.map {|x| x.length > 4}
  # if there are any true values, return true, otherwise return false
  if calls.reduce {|x, y| x || y}
    return true
  else
    return false
  end
end

def find_the_cheese(list)# code an argument here
  # the array below is here to help
  cheese_types = ["cheddar", "gouda", "camembert"]
  cheese_presence = cheese_types.map {|x| list.include?(x)}
  if cheese_presence.reduce {|x, y| x || y}
    return "There is cheese in this list"
    
  else
    return "No cheese, I'm afraid!"
  end
end

example = ["crackers", "tomatoes", "cheddar", "peppers", "potatoes"]
puts find_the_cheese(example)
