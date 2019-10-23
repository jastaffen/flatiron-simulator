require 'tty/prompt'

class CLI
    attr_accessor :coffee_count

    def initialize
        @coffee_count = 0
    end

def welcome
    2.times {puts}
    puts "Hello there!"
    2.times {puts}
end

def start
    prompt = TTY::Prompt.new
    decision = prompt.select("What would you like to do?", ["start game", "exit"])
end

def end_game
    puts "Thanks for playing!"
end

def user_login
    prompt = TTY::Prompt.new
    user = prompt.ask("What is your name?", required: true)
    if User.find_by_name(user)
        user = User.find_by_name(user)
    elsif user.downcase == "gene"
        user = User.create(name: "RevolutionDamnation")
    elsif user.downcase == "tony"
        user = User.create(name: "poop")
    else
        user = User.create(name: user)
    end
    user
end

def storyline
    story = Scene.first.story
    story["**//**"] = @u1.name.upcase
    puts "#{story}"
    keyhit = TTY::Prompt.new
    puts
    keyhit.keypress("press Enter to continue")
    puts
    options = TTY::Prompt.new
    2.times {puts}
    decision_text = options.select("Choose:", Scene.first.options.map {|option| option.text})
    choice = Option.find_by(text: decision_text)

    if choice.id == 1 || choice.id == 2 || choice.id == 3
        @coffee_count += 1
    end

    uo1 = UserOption.create(user_id: @u1.id, option_id: choice.id)
    2.times {puts}


    while choice.to_scene do
        small_break
        puts "#{choice.to_scene.story}"
        keyhit2 = TTY::Prompt.new
        puts
        keyhit2.keypress("press Enter to continue")
        options = TTY::Prompt.new
        puts
        decision_text = options.select("Choose:", choice.to_scene.options.map {|option| option.text})
        choice = Option.find_by(text: decision_text)
        uo1 = UserOption.create(user_id: @u1.id, option_id: choice.id)
        2.times {puts}
        check_story if choice.id == 21
        2.times {puts}
        if choice.to_scene_id == 11 || choice.to_scene_id == 12
            small_break
            puts "#{choice.to_scene.story}"
            next_scene = TTY::Prompt.new
            2.times {puts}
            next_scene.keypress("press Enter to continue")
            break
        end

    end
    2.times {puts}
    puts "** " * 12
    puts 
    puts "#{Scene.last.story}"
    puts 
    puts "** " * 12
end

def check_story
    coffee_number = TTY::Prompt.new
    coffee_option = Option.find(21)
    num = coffee_number.ask(coffee_option.text) {|q| q.in('0-1000000000')}
    @coffee_count += num.to_i
    coffee_option.to_scene
end 

def runner
    welcome
    unless start == 'exit'
        @u1 = user_login
        @u1name = @u1.name
        small_break
        puts "Howdy #{@u1.name}! 🤠"
        yes_or_no = TTY::Prompt.new
        yes_or_no.keypress("Ready to begin Flatiron Simulator 9,000? Press Enter to begin!")
        big_break
        get_user = @u1.name
        storyline
        2.times {puts}
        view_your_stats = TTY::Prompt.new
        stats = view_your_stats.select("Do you want to view your experience?", ["yes", "no"])
        2.times {puts}
        if stats == "yes"
            puts "HERE IS WHAT YOU DID, #{@u1.name}!"
            2.times {puts}
            @u1.options.each { |option| puts "#{option.from_scene.story} \n \n #{option.text} \n \n" }
            puts 
            puts "#{@u1.options.last.to_scene.story}"
            puts
            puts "Coffee Count: #{@coffee_count}"
        end
        @u1.user_options.destroy_all
    end
end
end

def small_break
    puts
    puts "=" * 204
    puts
end

def big_break
    puts
    puts "=" * 204
    puts
    puts "~" * 204
    puts
    puts "*" * 204
    puts
    puts "=" * 204
    #Catpix::print_image "Flatiron-Logo.jpg"
    puts "=" * 204
    puts
    puts "*" * 204
    puts
    puts "~" * 204
    puts
    puts "=" * 204
    puts
end