require 'tty/prompt'

class CLI
    attr_accessor :coffee_count, :mod1_project

    def initialize
        @coffee_count = 0
        @mod1_project = ""
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
            user = User.create(name: "p.o.o.p.")
        elsif user.downcase == "caryn" || user.downcase == "sebastian" || user.downcase == "yoan" 
            user = User.create(name: "Anonymous student")
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

            if choice.to_scene.id == 8 || choice.to_scene.id == 12
                choice.to_scene.story["**//**"] = @u1.name
            end

            coffee_input if choice.id == 21
            mod_project_idea(choice) if choice.from_scene.id == 6 || choice.from_scene.id == 10

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

    def coffee_input
        coffee_number = TTY::Prompt.new
        coffee_option = Option.find(21)
        num = coffee_number.ask("Add here:") {|q| q.in('0-1000000000')}
        @coffee_count += num.to_i
        coffee_option.to_scene
    end 

    def mod_project_idea(choice)
        if choice.id == 26 || choice.id == 32
            mod1 = TTY::Prompt.new
            @mod1_project = mod1.ask("Add here:", required: true)
        
        elsif choice.id == 27 || choice.id == 33
            @mod1_project = choice.text
        elsif choice.id == 28 || choice.id == 34
            @mod1_project = choice.text
        elsif choice.id == 29 || choice.id == 35
            @mod1_project = choice.text
        elsif choice.id == 30 || choice.id == 36
            @mod1_project = choice.text
        elsif choice.id == 31 || choice.id == 37
            @mod1_project = choice.text
        end
        @mod1_project
    end

    def runner
        welcome

        unless start == 'exit'

            @u1 = user_login
            # @u1name = @u1.name
            small_break


            puts "Howdy #{@u1.name.upcase}! 🤠"
            yes_or_no = TTY::Prompt.new
            yes_or_no.keypress("Ready to begin Flatiron Simulator 9,000? Press Enter to begin!")


            big_break


        # get_user = @u1.name
            storyline


            2.times {puts}
            view_your_stats = TTY::Prompt.new
            stats = view_your_stats.select("Do you want to view your experience?", ["yes", "no"])
            2.times {puts}


            if stats == "yes"
                puts "HERE IS WHAT YOU DID, #{@u1.name}!"
                2.times {puts}
                    @u1.options.each do |option| 
                        if option.from_scene.story["**//**"]
                        option.from_scene.story["**//**"] = @u1.name
                        end
                puts "#{option.from_scene.story} \n \n #{option.text} \n \n" 
                end
                puts

                last_scene = Scene.find(12).story
                last_scene["**//**"] = @u1.name
                puts "#{last_scene}"
                puts
                puts "Coffee Count: #{@coffee_count}"
                puts "Mod1 Project: #{@mod1_project}"
            end


            @u1.user_options.destroy_all
        end
    end
end

def small_break
    puts
    puts "=" * 178
    puts
end

def big_break
    puts
    puts "=" * 178
    puts
    puts "~" * 178
    puts
    puts "*" * 178
    puts
    puts "=" * 178
    # Catpix::print_image "Flatiron-Logo.jpg"
    puts "=" * 178
    puts
    puts "*" * 178
    puts
    puts "~" * 178
    puts
    puts "=" * 178
    puts
end

