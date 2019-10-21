# load 'seeds_for_scenes.rb'

# require_relative "../bin/methods.rb"
require_relative "../config/environment"

code_challenge = Scene.create(story: "You walk into the doors of Flatiron School’s Clarke campus 15 minutes late. 
Yoan looks disapprovingly at you and approaches you. 
'! Code challenge at 11. You better be late because you were getting those reps in last night.' 
You were not. You were perusing uniqlo’s online catalogue for heat tech to wear to Flatiron the next day. 
Now this?! What will you do?")

passed_the_challenge = Scene.create(story: "Well, you perservered and passed the test. 
You can now move on with the rest of your class. Good work. As you bask in your victory, 
20 labs are released you have a newfound confidence. Time to get labs done?")

no_can_do = Scene.create(story: "Nice try. Your attempts at rebellion were thwarted. 
Taris has caught you red-handed. He pours out all of the milk in the fridge, 
leaving you with mere almond milk, and turns the thermostat down to 62. 
You take your code challenge, and luckily you pass. You bring a black coffee back to 
your seat and are met with your match. 20 more labs. Time to get labs done?")

friday_feelings = Scene.create(story: "Yoan shouts, 'Friday Feelingseroni!' 
You walk into the lecture room and find your seat, and....You're called on first. How're you feeling?"))

comm_happy_hour = Scene.create(story: "So is everyone. 3...2...1....CSS and DESIST!!! Luckily, it's just about community happy hour, 
and Sebastian just pulled up with 24 24 packs of budweiser. 
Now that you've sufficiently shared your feelings, time to drink!")






