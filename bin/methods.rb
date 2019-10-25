require 'tty/prompt'
require_relative 'storyline.rb'

class CLI
    attr_accessor :coffee_count, :mod1_project

    def initialize
        @coffee_count = 0
        @mod1_project = ""
    end

    def runner
        welcome
        unless start_game == 'exit'
            @u1 = user_login
            small_break
            puts "Howdy #{@u1.name}! 🤠"
            prompt.keypress("Ready to begin Flatiron Simulator 9,000? Press Enter to begin!")
            big_break
            storyline
            smallest_break
            stats
            @u1.user_options.destroy_all
        end
    end

    def welcome
        smallest_break
        puts "Hello there!"
        smallest_break
    end

    def start_game
        prompt.select("What would you like to do?", ["start game", "exit"])
    end

    def user_login
        user = prompt.ask("What is your name?", required: true)
        if User.find_by_name(user)
            user = User.find_by_name(user)
        elsif user.downcase == "gene" 
            user = User.create(name: "RevolutionDamnation")
        elsif user.downcase == "tony"
            user = User.create(name: "p.o.o.p.")
        elsif user.downcase == "caryn" || user.downcase == "sebastian" || user.downcase == "yoan" 
            user = User.create(name: "anonymous student")
        else
            user = User.create(name: user)
        end
        user
    end

    def stats
        stats = prompt.select("Do you want to view your experience?", ["yes", "no"])
        smallest_break
        if stats == "yes"
            ending_style_1
            puts "HERE'S WHAT YOU DID, #{@u1.name}!".cyan
            ending_style_2
            smallest_break
            @u1.options.each do |option| 
                if option.from_scene.story["**//**"]
                    option.from_scene.story["**//**"] = @u1.name
                end
                puts "#{option.from_scene.story} \n \n #{option.text.light_red} \n \n" 
                if option.to_scene.id == 11
                    puts "#{Scene.find(11).story}"
                elsif option.to_scene.id == 12
                    last_scene = Scene.find(12).story
                    last_scene["**//**"] = @u1.name
                    puts "#{last_scene}"
                end
            end
            puts
            puts "Coffee Count: #{@coffee_count}".cyan
            puts "Mod-1 Project: #{@mod1_project}".cyan
        end
    end
##########################################Prompt Refactor Methods########################################################################
    def prompt
        prompt = TTY::Prompt.new(active_color: :cyan)
    end

    def press_enter
        prompt.keypress("press Enter to continue")
    end
#############################################styling methods######################################################################
    def smallest_break
        2.times {puts}
    end
    
    def small_break
        puts
        puts ("=" * 178).cyan
        puts
    end
    
    def big_break
        puts
        puts ("=" * 178).red
        puts
        puts ("~" * 178).yellow
        puts
        puts ("*" * 178).blue
        puts
        puts ("=" * 178).magenta
        Catpix::print_image "Flatiron-Logo.jpg"
        puts ("=" * 178).magenta
        puts
        puts ("*" * 178).blue
        puts
        puts ("~" * 178).yellow
        puts
        puts ("=" * 178).red
        puts

    end

    def ending_style_1
        puts
        puts ("** " * 13).blue
        puts 
        puts ("~~ " * 13).magenta
        puts
    end

    def ending_style_2
        puts
        puts ("~~ " *13).magenta
        puts
        puts ("** " * 13).blue
        puts
    end
end

