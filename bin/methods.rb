require 'tty'


def welcome
    puts 
    puts
    puts "Hello there!"
    puts
    puts
    Catpix::print_image "Flatiron-Logo.jpg"
end

# def get_user_input
#     gets.chomp.strip
# end

# def user_seed
#     Faker::Name.first_name
# end 

def start
    # puts "What do you want to do?"
    prompt = TTY::Prompt.new
    decision = prompt.select("What do you want to do?", ["start game", "exit"])
end

def end_game
    puts "Thanks for playing!"
end

def user_login
    # user_input = gets.chomp.strip
    # if user_input.downcase == "gene"
    #     user = User.create(name: "RevolutionDamnation")
    # elsif user_input.downcase == "tony"
    #     user = User.create(name: "poop")
    # else
    #     user = User.create(name: user_input)
    # end
    # user
    prompt = TTY::Prompt.new
    user = prompt.ask("What is your name?")
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

def scene1
    puts "#{Scene.first.story}"
    options = TTY::Prompt.new
    decision_text = options.select("Choose:", Scene.first.options.map {|option| option.text})
    choice = Option.find_by(text: decision_text)
    uo1 = UserOption.create(user_id: @u1.id, option_id: choice.id)
end



def runner
    welcome
    # start
    unless start == 'exit'
        @u1 = user_login
        puts "=" * 50
        puts
        puts "Howdy #{@u1.name}!"
        yes_or_no = TTY::Prompt.new
        yes_or_no.ask("Ready to begin Flatiron Simulator 9,000?")
        puts
        puts "=" * 50 
        puts "=" * 40
        puts "=" * 30
        puts "=" * 20
        puts "=" * 10
        puts "SPLAT!" + " " * 30 + "git vom!"
        puts "~" * 10
        puts "~" * 20
        puts "~" * 30
        puts "~" * 40
        puts "~" * 50
        puts 
        scene1
    end
end
