require_relative 'games'
require_relative 'event'

puts '
  ______                                           ______                                  __
 /      \                                         /      \                                |  \
|  $$$$$$\ __    __   ______    ______    ______ |  $$$$$$\  ______    ______    ______  _| $$_
| $$___\$$|  \  |  \ /      \  /      \  /      \| $$___\$$ /      \  /      \  /      \|   $$ \
 \$$    \ | $$  | $$|  $$$$$$\|  $$$$$$\|  $$$$$$\\$$    \ |  $$$$$$\|  $$$$$$\|  $$$$$$\\$$$$$$
 _\$$$$$$\| $$  | $$| $$  | $$| $$    $$| $$   \$$_\$$$$$$\| $$  | $$| $$  | $$| $$   \$$ | $$ __
|  \__| $$| $$__/ $$| $$__/ $$| $$$$$$$$| $$     |  \__| $$| $$__/ $$| $$__/ $$| $$       | $$|  \
 \$$    $$ \$$    $$| $$    $$ \$$     \| $$      \$$    $$| $$    $$ \$$    $$| $$        \$$  $$
  \$$$$$$   \$$$$$$ | $$$$$$$   \$$$$$$$ \$$       \$$$$$$ | $$$$$$$   \$$$$$$  \$$         \$$$$
                    | $$                                   | $$
                    | $$                                   | $$
                     \$$                                    \$$
'

puts ' Welcome to SuperSport! '.center(80, "~~")

input = true

until input == 'q'.downcase
  puts 'What year is it? >'
  year = gets.chomp

  game = Games.new(year)

  puts "Welcome to the #{year} Games!"
  input = ''

  until input == 'q'.downcase
    puts ''
    puts 'What would you like to do?'
    puts ''
    puts '[A] - Add Event'
    puts '[S] - Get Summary'
    puts '[Q] - Quit Super Sport'
    print 'Selection > '
    input = gets.chomp

    # selection options
    if input.downcase == 'q'
      puts ''
      puts 'Goodbye!'
      break
    elsif input.downcase == 'a'
      print 'Event name > '
      event_name = gets.chomp
      puts 'Ages of participants [Separate with spaces... 12 4 7]'
      print '> '
      event_ages = gets.chomp
      event = Event.new(event_name, event_ages.split(" ").map(&:to_i))
      game.add_event(event)
      puts "Added #{event_name} to events!"
    elsif input.downcase == 's'
      print game.summary
    else
      puts 'Try another selection.'
    end
  end
end
