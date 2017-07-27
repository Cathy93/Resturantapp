require 'terminal-table'

class MenuItem
  attr_accessor :name, :price, :description

  def initialize(name, price, description)
    @name = name
    @price = price
    @description = description
  end

end

class Entree < MenuItem
end

class Main < MenuItem
end

class Dessert < MenuItem
end

class Drink < MenuItem
end

class Order
  def initialize()
    @items = []
  end

  def << (menu_item)
    @items << menu_item
  end

  def total
    total = 0
    @items.each do |item|
      total += item.price
    end
    total
  end



  def total_with_surcharge
    total + (total * 0.015)
  end

  def bill
    loop do
      puts "I hope you enjoyed your meal. Will you be paying by cash or card?"
      choice = gets.chomp
      if choice == 'cash'
        table = Terminal::Table.new headings: ['Name', 'Price'] do |t|
          @items.each do |item|
            t << [item.name, "$#{item.price}"]
          end
          t.add_separator
          t << ['TOTAL', "$#{total}"]
        end
        return table
      elsif choice == 'card'
        table = Terminal::Table.new headings: ['Name', 'Price'] do |t|
          @items.each do |item|
            t << [item.name, "$#{item.price}"]
          end
          t.add_separator
          t << ['Sub Total', total]
          t.add_separator
          t << ['Surcharge', '1.5%']
          t.add_separator
          t << ['TOTAL', total_with_surcharge]
        end
        return table
      else
        puts 'invalid entry, please try again'
        next
      end
    end
  end
end


MENU_ITEMS = [
  Entree.new('Garden Salad', 12, 'Healthy'),
  Entree.new('Aranchini', 15, 'Balls of rice. Whats not to love'),
  Entree.new('Chicken Wings', 5, 'Deep fried southen style wings'),
  Main.new('Steak', 20, 'cooked medium rare. Comes with mash and beans and your choice of gravey'),
  Main.new('Parma', 15, 'Chicken parma with chips and salad'),
  Main.new('Eggplant Casserole', 15, 'Eggplant, oven baked. Healthy and vegan friendly'),
  Dessert.new('Chocolate Mousse', 15, ' Rich cholaty mousse'),
  Dessert.new('Pannacotta', 16, 'Delicious italian cold dessert. Jelly for grownups.'),
  Dessert.new('Baked Alaska', 12,'Want to eat a flaming dessert. Nows your chance. Dont try this at home.'),
  Drink.new('Beer', 7, 'American IPA'),
  Drink.new('Soft drink', 3.50, 'Coke, Dietcoke, Solo, Lemonade'),
  Drink.new('Manhatten', 20, 'Classic cocktail served in a martini glass.'),
  Drink.new('Pina Colada', 15, 'Fruity and Alcholic. Is there anything better. The answer....NO'),
  Drink.new('Side Car', 15, '1920s classy cocktail. Harking back to the time of proabition and speakeasys this little number will make you want to do jazz hands' ),
  Drink.new('Snake Bite', 20, 'Beer in a cocktail. They said it couldnt be done. We did it. '),
  Drink.new('Midori Illusion', 15, 'Need a holiday but dont have the time. This sweet decedant tropical cocktail will make you feel so much better'),
  Drink.new('Hot Toddy', 15, 'Best on a cold winters day, this concotion of Honey, Lemon and Whisky will melt those winter blues away' )
]


def menu_choice
  menu_choice = gets.chomp
  system 'clear'
  case menu_choice
    when "1"
      puts  "#{MENU_ITEMS[0].name}: #{MENU_ITEMS[0].price}  #{MENU_ITEMS[0].description}"
      puts  "#{MENU_ITEMS[1].name}: #{MENU_ITEMS[1].price}"" #{MENU_ITEMS[1].description}"
      puts  "#{MENU_ITEMS[2].name}: #{MENU_ITEMS[2].price}"" #{MENU_ITEMS[2].description}"
    when "2"
      puts  "#{MENU_ITEMS[3].name}: #{MENU_ITEMS[3].price}  #{MENU_ITEMS[3].description}"
      puts  "#{MENU_ITEMS[4].name}: #{MENU_ITEMS[4].price}"" #{MENU_ITEMS[4].description}"
      puts  "#{MENU_ITEMS[5].name}: #{MENU_ITEMS[5].price}"" #{MENU_ITEMS[5].description}"
    when "3"
      puts  "#{MENU_ITEMS[6].name}: #{MENU_ITEMS[6].price}  #{MENU_ITEMS[6].description}"
      puts  "#{MENU_ITEMS[7].name}: #{MENU_ITEMS[7].price}"" #{MENU_ITEMS[7].description}"
      puts  "#{MENU_ITEMS[8].name}: #{MENU_ITEMS[8].price}"" #{MENU_ITEMS[8].description}"
    when "4"
      puts  "#{MENU_ITEMS[9].name}: #{MENU_ITEMS[9].price}  #{MENU_ITEMS[9].description}"
      puts  "#{MENU_ITEMS[10].name}: #{MENU_ITEMS[10].price}"" #{MENU_ITEMS[10].description}"
      puts  "#{MENU_ITEMS[11].name}: #{MENU_ITEMS[11].price}"" #{MENU_ITEMS[11].description}"
      puts  "#{MENU_ITEMS[12].name}: #{MENU_ITEMS[12].price}  #{MENU_ITEMS[12].description}"
      puts  "#{MENU_ITEMS[13].name}: #{MENU_ITEMS[13].price}"" #{MENU_ITEMS[13].description}"
      puts  "#{MENU_ITEMS[14].name}: #{MENU_ITEMS[14].price}"" #{MENU_ITEMS[14].description}"
      puts  "#{MENU_ITEMS[15].name}: #{MENU_ITEMS[15].price}  #{MENU_ITEMS[15].description}"
      puts  "#{MENU_ITEMS[16].name}: #{MENU_ITEMS[16].price}"" #{MENU_ITEMS[16].description}"
    when "5"
      puts  "#{MENU_ITEMS[0].name}: #{MENU_ITEMS[0].price}  #{MENU_ITEMS[0].description}"
      puts  "#{MENU_ITEMS[1].name}: #{MENU_ITEMS[1].price}"" #{MENU_ITEMS[1].description}"
      puts  "#{MENU_ITEMS[2].name}: #{MENU_ITEMS[2].price}"" #{MENU_ITEMS[2].description}"
      puts  "#{MENU_ITEMS[3].name}: #{MENU_ITEMS[3].price}  #{MENU_ITEMS[3].description}"
      puts  "#{MENU_ITEMS[4].name}: #{MENU_ITEMS[4].price}"" #{MENU_ITEMS[4].description}"
      puts  "#{MENU_ITEMS[5].name}: #{MENU_ITEMS[5].price}"" #{MENU_ITEMS[5].description}"
      puts  "#{MENU_ITEMS[6].name}: #{MENU_ITEMS[6].price}  #{MENU_ITEMS[6].description}"
      puts  "#{MENU_ITEMS[7].name}: #{MENU_ITEMS[7].price}"" #{MENU_ITEMS[7].description}"
      puts  "#{MENU_ITEMS[8].name}: #{MENU_ITEMS[8].price}"" #{MENU_ITEMS[8].description}"
      puts  "#{MENU_ITEMS[9].name}: #{MENU_ITEMS[9].price}  #{MENU_ITEMS[9].description}"
      puts  "#{MENU_ITEMS[10].name}: #{MENU_ITEMS[10].price}"" #{MENU_ITEMS[10].description}"
      puts  "#{MENU_ITEMS[11].name}: #{MENU_ITEMS[11].price}"" #{MENU_ITEMS[11].description}"
      puts  "#{MENU_ITEMS[12].name}: #{MENU_ITEMS[12].price}  #{MENU_ITEMS[12].description}"
      puts  "#{MENU_ITEMS[13].name}: #{MENU_ITEMS[13].price}"" #{MENU_ITEMS[13].description}"
      puts  "#{MENU_ITEMS[14].name}: #{MENU_ITEMS[14].price}"" #{MENU_ITEMS[14].description}"
      puts  "#{MENU_ITEMS[15].name}: #{MENU_ITEMS[15].price}  #{MENU_ITEMS[15].description}"
      puts  "#{MENU_ITEMS[16].name}: #{MENU_ITEMS[16].price}"" #{MENU_ITEMS[16].description}"
    when "x"
      main_menu([])
  end
end

def submenu
  system 'clear'
  puts "Please choose from a sub menu"
  puts "1. Entree"
  puts "2. Mains"
  puts "3. Desserts"
  puts "4. Drinks"
  puts "5. Show All"
  puts "x. Back to main menu"

  menu_choice

  puts "press any key to go back to previous menu"
  choice = gets
  return display_menu if choice
end

# Show menu
def display_menu
  submenu

  puts "press any key to go back to main menu"
  choice = gets
  return main_menu([]) if choice

end

# Add menu items
def order_items

  MENU_ITEMS.each_with_index do |menu_item, index|
    user_index = index + 1
    # Display item with index first, then name and price
    puts "#{user_index}. #{menu_item.class} #{menu_item.name}: #{menu_item.price}: #{menu_item.description}"
  end

  order = Order.new

  loop do
    puts 'What would you like?'
    choice = gets.chomp
    # Stop looping if user pressed just enter
    break if choice == ""
    puts 'Please ensure you notify us of any allerigies or intolerences '
    edit = gets.chomp


    # User must choose an index number
    user_index = choice.to_i

    # If the user entered in an invalid choice
    if user_index < 1 || user_index > 8
      puts "Invalid choice, please try again"
      next # Loop through and ask again
    end

    index = user_index - 1 # Convert to zero-based index
    menu_item = MENU_ITEMS[index]

    # Add item to order
  order << menu_item
  end
  return main_menu(order)
end


def show_bill(order)
  system 'clear'
  puts order.bill
  sleep 2
end


def main_menu(order)
  system 'clear'
  loop do
    puts 'Please choose an option'
    puts '1. Show menu'
    puts '2. Order items'
    puts '3. Ask for bill'
    puts 'x. Exit'
    choice = gets.chomp
    case choice
        when '1'
          system 'clear'
          display_menu
        when '2'
          system 'clear'
          order_items
        when '3'
          system 'clear'
          show_bill(order)
        when 'x'
          break
        else
          puts "Invalid choice: #{choice}"
      end

      sleep 1
  end
end
order = []
main_menu(order)
