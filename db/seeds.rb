# load 'seeds_for_scenes.rb'

# require_relative "../bin/methods.rb"
require_relative "../config/environment"
# require_relative "seeds_for_options.rb"

#1
code_challenge = Scene.create(story: "You walk into the doors of Flatiron School’s Clarke campus 15 minutes late. 
Yoan looks disapprovingly at you and approaches you. 
'! Code challenge at 11. You better be late because you were getting those reps in last night.' 
You were not. You were perusing uniqlo’s online catalogue for heat tech to wear to Flatiron the next day. 
Now this?! What will you do?")

#2
passed_the_challenge = Scene.create(story: "Well, you perservered and passed the test. 
You can now move on with the rest of your class. Good work. As you bask in your victory, 
20 labs are released you have a newfound confidence. Time to get labs done?")

#3
no_can_do = Scene.create(story: "Nice try. Your attempts at rebellion were thwarted. 
Taris has caught you red-handed. He pours out all of the milk in the fridge, 
leaving you with mere almond milk, and turns the thermostat down to 62. 
You take your code challenge, and luckily you pass. You bring a black coffee back to 
your seat and are met with your match. 20 more labs. Time to get labs done?")

#4
friday_feelings = Scene.create(story: "Yoan shouts, 'Friday Feelingseroni!' That's a new one!
You walk into the lecture room and find your seat, and....You're called on first. How're you feeling?")

#5
comm_happy_hour = Scene.create(story: "So is everyone. 3...2...1....CSS and DESIST!!! Luckily, it's just about community happy hour, 
and Sebastian just pulled up with 24 24 packs of budweiser. 
Now that you've sufficiently shared your feelings, time to drink!")

#6
comm_party = Scene.create(story: "You party it up with the other programmers. 
Programming is so one hour ago. Happy hour is winding down and the 'weisers are running dry. Time to head home and hit the mattress hard.
You come back on Monday and Yoan deploys the prompt for the mod1 projects. A curious mod3 student approaches 
you asks you what you're doing for your project....SO? What are you doing? ")

#7
comm_labs = Scene.create(story: "Bunker down, get some coffee (or beer), and get those reps in. It's game time. Or?............\n.......\n......
you wake up. It's Monday.. You have no recollection of doing any labs. 
You're still in the seat you were in Friday night. Your classmates are 
walking in and getting situated. Oh no. 
Caryn is asking you what you did this weekend. What are you going to say?")

#8
response_to_weekend = Scene.create(story: "Caryn nods her head but clearly 
appears to notice the dark bags under your eyes and the waver in your voice. 
She looks concerned, but responds 'Good (user). Code challenge today!' 
Oh....\n This is not good. You need coffee. How many cups of coffee do you need?")

#9 if coffee_num >= 4
throw_up = Scene.create(story: "You throw up. That did not work, 
but at least you are awake now. You misheard Caryn earlier. 
There's actually no code challenge. But there's a doge scavenge. 
That's right. Puppy scavenger hunt on floor 2. You head downstairs in anticipation. 
You need to FIND * FROMD dogs WHERE dog.legs > 4. You can't find that, but you see some crazy looking pups. 
Which will you play with?")


#10 actually waking up
wake_up = Scene.create(story: "You wake up and realize the puppy scavenger was a dream, 
but you are at Flatiron School. Yoan just deployed the prompt for the mod1 projects. 
A curious mod3 student approaches you asks you what you're doing for your project....SO? What are you doing?")

#11 MOD1 project that's not flatiron simulator
mod1_project_complete = Scene.create(story: "You present your project to the class and all goes well! 
Everyone is impressed. Yes you had to reduce your idea a bit, but the MVP did the job it needed to. You're moving onto Mod2. Congratulations!")

#12 Flatiron Simulator
flatiron_simulator_complete = Scene.create(story: "Avi sees your code for Flatiron Simulator 9000 and drops to the floor in utter awe, 
takes out a lighter and burns his copy of “The Well Grounded Rubyist”, and joins a welding school. 
Tim Apple loves the program so much that he rolls out ios (user).")


#13 END GAME
thanks = Scene.create(story: "THANKS FOR PLAYING")





#from code_challenge
option1 = Option.create(text: "Bunker down, get some coffee, and get those reps in", from_scene_id: 1, to_scene_id: 2)
option2 = Option.create(text: "Run.", from_scene_id: 1, to_scene_id: 3)
option3 = Option.create(text: "Watch Youtube, turn the thermostat up to 76", from_scene_id: 1, to_scene_id: 3)

#from passed_the_challenge and no_can_do
option4 = Option.create(text: "heck yes", from_scene_id: 2, to_scene_id: 4)
option5 = Option.create(text: "heck no", from_scene_id: 2, to_scene_id: 4)
option6 = Option.create(text: "heck yes", from_scene_id: 3, to_scene_id: 4)
option7 = Option.create(text: "heck no", from_scene_id: 3, to_scene_id: 4)


#friday_feelings!
option8 = Option.create(text: "happy", from_scene_id: 4, to_scene_id: 5)
option9 = Option.create(text: "sad", from_scene_id: 4, to_scene_id: 5)
option10 = Option.create(text: "excited", from_scene_id: 4, to_scene_id: 5)
option11 = Option.create(text: "nervous", from_scene_id: 4, to_scene_id: 5)
option12 = Option.create(text: "overwhelmed", from_scene_id: 4, to_scene_id: 5)
option13 = Option.create(text: "poop", from_scene_id: 4, to_scene_id: 5)

#comm_happy_hour
option14 = Option.create(text: "drink (no pressure though..almond milk is totally acceptable)", from_scene_id: 5, to_scene_id: 6)
option15 = Option.create(text: "drink while playing bananagrams", from_scene_id: 5, to_scene_id: 6)
option16 = Option.create(text: "drink whlie playing pong (and drinking more)", from_scene_id: 5, to_scene: 6)
option17 = Option.create(text: "do labs, be antisocial, but maybe with a beer?", from_scene_id: 5, to_scene_id: 7)


#person who slept in
option18 = Option.create(text: "ummm I fell asleep on Friday and just woke up?", from_scene_id: 7, to_scene_id: 8)
option19 = Option.create(text: "So many labs I did...So much work done omg. Must have..", from_scene_id: 7, to_scene_id: 8)
option20 = Option.create(text: "I think I relaxed.", from_scene_id: 7, to_scene_id: 8)

#coffeecups
option21 = Option.create(text: "(coffee_number = gets.chomp)", from_scene_id: 8, to_scene_id: 9) 
#if coffee_num >= 4 scene 9, else scene 10 *doesn't accept 0

#puppiesdownstairs
option22 = Option.create(text: "A winged-British Bulldog with a 
giant tattoo that says 'RevolutionDamnation' on his back.", from_scene_id: 9, to_scene_id: 10)
option23 = Option.create(text: "A Corgy that has a howl 
which sounds awfully like he's saying while", from_scene_id: 9, to_scene_id: 10)
option24 = Option.create(text: "A three-headed Chihuahua that's bark is 3.times { puts 'bark'}", from_scene_id: 9, to_scene_id: 10)
option25 = Option.create(text: "A great dane that with a desperate look on his face who keeps saying 'please clap..'", from_scene_id: 9, to_scene_id: 10)

#mod1 options
option26 = Option.create(text: "(mod1_option = gets.chomp)", from_scene_id: 10, to_scene_id: 11)
option27 = Option.create(text: "A search engine where you can type in anything and it'll return a multitude of related links", from_scene_id: 10, to_scene_id: 11)
option28 = Option.create(text: "A CLI App game that predicts what Harry Potter house you're in, and then sends you your robe in the mail", from_scene_id: 10, to_scene_id: 11)
option29 = Option.create(text: "A CLI app game that turns up the thermostat by the number of points the winner receives", from_scene_id: 10, to_scene_id: 11)
option30 = Option.create(text: "A button that delivers milk in 10 minutes", from_scene_id: 10, to_scene_id: 11)
option31 = Option.create(text: "Flatiron Simulator 9000", from_scene_id: 10, to_scene_id: 12)

#mod1 options for scene 6ers
option32 = Option.create(text: "(mod1_option = gets.chomp)", from_scene_id: 6, to_scene_id: 11)
option33 = Option.create(text: "A search engine where you can type in anything and it'll return a multitude of related links", from_scene_id: 6, to_scene_id: 11)
option34 = Option.create(text: "A CLI App game that predicts what Harry Potter house you're in, and then sends you your robe in the mail", from_scene_id: 6, to_scene_id: 11)
option35 = Option.create(text: "A CLI app game that turns up the thermostat by the number of points the winner receives", from_scene_id: 6, to_scene_id: 11)
option36 = Option.create(text: "A button that delivers milk in 10 minutes", from_scene_id: 6, to_scene_id: 11)
option37 = Option.create(text: "Flatiron Simulator 9000", from_scene_id: 6, to_scene_id: 12)

