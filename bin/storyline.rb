def storyline
    first_scene
    while @choice.to_scene do #main_story
        small_break
        puts "#{@choice.to_scene.story}"
        puts
        press_enter
        puts
        decision_text = prompt.select("Choose:", @choice.to_scene.options.map {|option| option.text})
        @choice = Option.find_by(text: decision_text)
        UserOption.create(user_id: @u1.id, option_id: @choice.id)
        2.times {puts}
        if @choice.to_scene.id == 8 || @choice.to_scene.id == 12
            @choice.to_scene.story["**//**"] = @u1.name
        end

        coffee_input if @choice.id == 21 #coffee_counter
        mod_project_idea(@choice) if @choice.from_scene.id == 6 || @choice.from_scene.id == 10 #mod-1_user_input

        2.times {puts}
        if @choice.to_scene_id == 11 || @choice.to_scene_id == 12
            small_break
            puts "#{@choice.to_scene.story}"
            2.times {puts}
            press_enter
            break
        end
    end
    ending_style_1
    puts "#{Scene.last.story}" #last_scene
    ending_style_2
end

def first_scene
    story = Scene.first.story
    story["**//**"] = @u1.name.upcase
    puts "#{story}"
    puts
    press_enter
    puts
    smallest_break
    decision_text = prompt.select("Choose:", Scene.first.options.map {|option| option.text})
    @choice = Option.find_by(text: decision_text)
    if @choice.id == 1 || @choice.id == 2 || @choice.id == 3
        @coffee_count += 1
    end
    UserOption.create(user_id: @u1.id, option_id: @choice.id)
    smallest_break
end

def coffee_input
    num = prompt.ask("Add here:") {|q| q.in('1-1000000000')}
    @coffee_count += num.to_i
    Option.find(21).to_scene
end 

def mod_project_idea(choice)
    if choice.id == 26 || choice.id == 32
        @mod1_project = prompt.ask("Add here:", required: true)
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