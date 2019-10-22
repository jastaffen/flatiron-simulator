# require_relative "../config/environment"

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
option21 = Option.create(text: "#{coffee_number = gets.chomp}", from_scene_id: 8, to_scene_id: 9) 
#if coffee_num >= 4 scene 9, else scene 10 *doesn't accept 0

#puppiesdownstairs
option22 = Option.create(text: "A winged-British Bulldog with a 
giant tattoo that says 'RevolutionDamnation' on his back.", from_scene_id: 9, to_scene_id: 10)
option23 = Option.create(text: "A Corgy that has a howl 
which sounds awfully like he's saying while", from_scene_id: 9, to_scene_id: 10)
option24 = Option.create(text: "A three-headed Chihuahua that's bark is 3.times { puts 'bark'}", from_scene_id: 9, to_scene_id: 10)
option25 = Option.create(text: "A great dane that with a desperate look on his face who keeps saying 'please clap..'", from_scene_id: 9, to_scene_id: 10)

#mod1 options
option26 = Option.create(text: "#{mod1_option = gets.chomp}", from_scene_id: 10, to_scene_id: 11)
option27 = Option.create(text: "A search engine where you can type in anything and it'll return a multitude of related links", from_scene_id: 10, to_scene_id: 11)
option28 = Option.create(text: "A CLI App game that predicts what Harry Potter house you're in, and then sends you your robe in the mail", from_scene_id: 10, to_scene_id: 11)
option29 = Option.create(text: "A CLI app game that turns up the thermostat by the number of points the winner receives", from_scene_id: 10, to_scene_id: 11)
option30 = Option.create(text: "A button that delivers milk in 10 minutes", from_scene_id: 10, to_scene_id: 11)
option31 = Option.create(text: "Flatiron Simulator 9000", from_scene_id: 10, to_scene_id: 12)

#mod1 options for scene 6ers
option32 = Option.create(text: "#{mod1_option = gets.chomp}", from_scene_id: 6, to_scene_id: 11)
option33 = Option.create(text: "A search engine where you can type in anything and it'll return a multitude of related links", from_scene_id: 6, to_scene_id: 11)
option34 = Option.create(text: "A CLI App game that predicts what Harry Potter house you're in, and then sends you your robe in the mail", from_scene_id: 6, to_scene_id: 11)
option35 = Option.create(text: "A CLI app game that turns up the thermostat by the number of points the winner receives", from_scene_id: 6, to_scene_id: 11)
option36 = Option.create(text: "A button that delivers milk in 10 minutes", from_scene_id: 6, to_scene_id: 11)
option37 = Option.create(text: "Flatiron Simulator 9000", from_scene_id: 6, to_scene_id: 12)