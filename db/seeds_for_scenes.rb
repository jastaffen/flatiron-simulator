require_relative '../config/environment'
require_relative '../bin/methods.rb'

#1
code_challenge = Scene.create(story: "You walk into the doors of Flatiron School’s Clarke campus 15 minutes late. 
Yoan looks disapprovingly at you and approaches you. 
\"**//**! Code challenge at 11. You better be late because you were getting those reps in last night. 💪 \" 
You were not. 
You were perusing UNIQLO’s online catalogue for the latest heat tech to wear to Flatiron the next day. 
Now this?! What will you do?")

#2
passed_the_challenge = Scene.create(story: "You perservered and passed the test! 🎉 Good work. As you bask in your victory, 
20 labs are released, but you have a newfound confidence. Time to get some labs done?")

#3
no_can_do = Scene.create(story: "Nice try. Your attempts at rebellion were thwarted. 
Taris has caught you red-handed. He pours out all of the milk in the fridge, 
leaving you with mere almond milk, and turns the thermostat down to 62°. 
You take your code challenge, and luckily, you pass. You bring a black coffee back to 
your seat and look at your computer in disbelief. 20 more labs. Time to get labs done?")

#4
friday_feelings = Scene.create(story: "Before you can decide, Yoan shouts, \"Friday Feelingseroni! 🍕 \" That's a new one!
You walk into the lecture room, find your seat, and........
You're called on first. How're you feeling?")

#5
comm_happy_hour = Scene.create(story: "So is everyone. 
3...2...1.....CSS and DESIST!!! 
Luckily, it's just about community happy hour, 
and Sebastian just pulled up with twenty-four 24 packs of Budweiser. 
Now that you've sufficiently shared your feelings, time to drink!")

#6
comm_party = Scene.create(story: "Programming is so one hour ago. You party it up with the other programmers. 🤠 🍻
#{"~" * 100} \nHappy hour is winding down and the 'weisers are running dry. Time to head home and hit the mattress hard.
You come back on Monday and Yoan deploys the prompt for the mod-1 project. A curious mod-3 student approaches 
you and asks you what you're doing for your project....SO? What are you doing?")

#7
comm_labs = Scene.create(story: "Bunker down, get some ☕️ (or 🍺), and get those 💪 💪 💪 💪 in. It's game ⏰. 
Or?............\n..................\n....................\n........................
You wake up. It's Monday. You have no recollection of doing any labs. 
You're still in the seat you were in Friday night. Your classmates are walking in and getting situated. 
Oh no. 
Caryn is asking you what you did this weekend. What are you going to say?")

#8
response_to_weekend = Scene.create(story: "Caryn nods her head but clearly 
appears to notice the dark bags under your eyes and the waver in your voice. 
She looks concerned, but responds \"Good (user). Code challenge today!\" 
Oh......................\n This is not good. 
You need coffee. ")

#9 coffee_num
throw_up = Scene.create(story: "You throw up. That did not work, but at least you're awake now. 
You misheard Caryn earlier. 
There's actually no code challenge. But there is a doge scavenge. 
That's right. Puppy scavenger hunt on floor 2. You head downstairs in anticipation. 
You need to SELECT * FROM dogs WHERE dog.legs > 4. You can't find that, but you see some crazy looking pups. 
Which will you play with?")

#10 actually waking up
wake_up = Scene.create(story: "You happily snuggle your pup. 🐶 ❤️ \n
SUDDENLY!!! \n
You wake up and realize the puppy scavenger was just a dream, and you're still on Clarke campus. 
Yoan just deployed the prompt for the mod-1 projects. A curious mod-3 student approaches 
you and asks you what you're doing for your project....SO? What are you doing?")

#11 MOD1 project that's not flatiron simulator
mod1_project_complete = Scene.create(story: "You present your project to the class and all goes well! 
Yes, you had to reduce your idea a bit, but the MVP did the job. Everyone is impressed. 
You're moving onto mod-2. Congratulations! 🎉 🎊 💪 🧠 🎊 🎉 💩")

#12 Flatiron Simulator
flatiron_simulator_complete = Scene.create(story: "Avi sees your code for Flatiron Simulator 9000 and drops to the floor in utter awe, 
takes out a lighter and burns his copy of “The Well Grounded Rubyist”, and joins a welding school. 
Tim Apple loves the program so much that he rolls out iOS (user).")

#13 END GAME
thanks = Scene.create(story: "THANKS FOR PLAYING!! \n \nCreated by Jack 🐘 💨 and Babs 🌈 😊")






    