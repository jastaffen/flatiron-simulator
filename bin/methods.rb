# require_relative '../config/environment'
require 'pry'
def welcome
    puts 
    puts
    puts "Hello there!"
    puts
    puts
    puts "~" * 40
    puts "~" * 30
    puts "~" * 20
    puts "~" * 10
    puts "Welcome to Flatiron Simulator 9000!"
    puts "~" * 10
    puts "~" * 20
    puts "~" * 30
    puts "~" * 40
    puts
    puts
    puts "What's your name?"
end

# def get_user_input
#     gets.chomp.strip
# end

def user
    user_input = gets.chomp.strip
    if user_input.downcase == "gene"
        user = User.create(name: "RevolutionDamnation")
    elsif user_input.downcase == "tony"
        user = User.create(name: "poop")
    else
        user = User.create(name: user_input)
    end
    user
end



def runner
    welcome
    u1 = user
    puts "Howdy #{u1.name} Ready to begin Flatiron Simulator 9000?"
end
