require 'pry'

spicy_foods = [
  { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
  { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },
  { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
]

def print_spicy_foods(spicy_foods)
  spicy_foods.map do |menu_item|
    if menu_item[:heat_level] == 3
      spice_emojis = "🌶🌶🌶"
    elsif menu_item[:heat_level] == 6
      spice_emojis = "🌶🌶🌶🌶🌶🌶"
    elsif menu_item[:heat_level] == 9
      spice_emojis = "🌶🌶🌶🌶🌶🌶🌶🌶🌶"
    end
   puts "#{ menu_item[:name] } (#{ menu_item[:cuisine] }) | Heat Level: #{spice_emojis}"
  end
end
#print_spicy_foods(spicy_foods)

def get_names(spicy_foods)
  spicy_foods.map do |menu_item|
   "#{ menu_item[:name] }"
  end
end
#p get_names(spicy_foods)

def spiciest_foods(spicy_foods)
  spicy_foods.select do |menu_item|
    menu_item[:heat_level] > 5
  end
end
#p spiciest_foods(spicy_foods)


def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find do |menu_item|
    if cuisine == menu_item[:cuisine]
      return menu_item
    end
  end
end
#p get_spicy_food_by_cuisine(spicy_foods, 'Thai')


# BONUS Deliverables
def print_spiciest_foods(spicy_foods)
  spiciest_foods = spiciest_foods(spicy_foods)
  print_spicy_foods(spiciest_foods)
end
#print_spiciest_foods(spicy_foods)


def average_heat_level(spicy_foods)
  heat_levels_array = []
    spicy_foods.map do |menu_item|
      heat_levels_array << menu_item[:heat_level]
    end
    heat_levels_array.inject(0) do |sum, i|  
      @heat_levels_sum = sum + i 
    end
    @heat_levels_sum / heat_levels_array.length
end
#p average_heat_level(spicy_foods)

# Use this to test your methods
# run "ruby run.rb" and try calling the methods from the console

