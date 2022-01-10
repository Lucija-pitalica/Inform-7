"Mudra Sova" by Lucija

Include Basic Screen Effects by Emily Short.

When play begins: 
	say "Welcome to the interactive feature game![line break]Good morning, you are a student in the dorm room. [line break]Your task is to find the book you need to return to the library."; now the time of day is 9:09 am.

Table of Time Status
left	central	right 
" "	"[time of day]"	" "
	
Rule for constructing the status line:
	 fill status bar with Table of Time Status;
	 rule succeeds.
									
The display banner rule is listed before the when play begins stage rule in the startup rules.

The bedroom is a room.  "You are very hungry, so look for money so you can buy bagel on the way to the library. You hear thunder, and it's raining hard outside. You see door but can't open them because they are magic and open only when you have money and book."


A bed is here.  The description of bed is "On the wooden bed there is a pink pillow, a brown blanket, colorful pajamas, a plush monkey toy and a pile of clothes."
The bed is an enterable supporter.

The cabinet is here. The description of cabinet is "A white cabinet that hides many things dare to explore what is in it!"
The cabinet, bag and the wallet are openable closed.
The bag is in the cabinet.
The wallet is in the bag.
The money is in the wallet.
The raincoat is in the cabinet.
The raincoat is a thing.
The raincoat is portable and wearable.
The cabinet is fixed in place.
	
After taking the money when player is in the bedroom:
	say "Well done, you found the money I think you are on the good way.";
	stop the action.
	
A white fridge is here. The description of fridge is "Large white fridge. When you get closer you hear it working, making strange noises, it seems to be broken."
A fruit is a kind of thing. 
The banana is a fruit. 
The orange is a fruit. 
The apple is a fruit.
The fridge is openable.
The apple is in the fridge.
The orange is in the fridge.
The banana is in the fridge.
The fridge is closed.
The fridge is fixed in place.

Instead of eating the fruit:
	say "The fruit is not edible by it is visible mold.";
	stop the action.
	
The shelf is a thing.
The shelf is a scenery.
The description of the shelf is "A metal shelf is attached to the wall and on it you can see many decorative things such as: candlesticks, scented candles, decorative angels..."
The shelf is in the bedroom.

The book is a thing.
The book can be discovered or undiscovered.
The book is undiscovered.
The description of the book is "The book has a thick cover, and it has the title: Inform 7"

There is a strongbox under the bed.
The strongbox is a locked openable closed container.
In the strongbox is a book.
Instead of looking under the bed when the brass key is discovered:
	move the book to the player;
	now the book is discovered;
	say "Thanks to the key that enabled you to open the strongbox, you discovered the book." 
	
Instead of looking under the bed when the brass key is undiscovered:
	say "You only see the strongbox! You have to find the key to open it.";

The picture is a thing.
The picture is on the shelf.
The description of the picture is "In the picture we see white and red roses, a green stem covered with thorns."

The brass key is a thing.
The brass key can be discovered or undiscovered.
The brass key is undiscovered.
The description of brass key is "The key is rusty, but it doesn't seem to be broken, maybe something can be opened with it."
The brass key unlocks the strongbox.

Instead of taking picture:
	If the brass key is undiscovered:
		say "You picked up the picture and saw the brass key.  Keep the key in your pocket.";
		now the player is carrying the brass key;
		now the brass key is discovered;
		stop the action;
	otherwise:
		say "Put the picture back in its place before you break it. It would be a shame to break such a work of art.";
		stop the action.

The table is here. The description of the table is "On the desk there is a laptop, chemicals, papers, markers, headphones.."
The table is fixed in place.

The hall is a room. The hall is east of the bedroom. The description of the hall is "There is only a trash can in the hallway, the walls are blueand the tiles are cube-shaped gray."
	
Before going to the hall:
	if the player carries the money:
		if the player carries the book:
			move the player to the hall;
			say "You took the money and the book, now you're in the hall. Head east onto the street. Through the window you see the storm getting worse";
			stop the action;
		otherwise:
			say "You didn't find the book, you can't go down the hall.";
			stop the action;
	otherwise:
		if the player carries the book:
			say "You didn't take the money, you can't go down the hall.";
			stop the action;
		otherwise:
			say "You haven't found out where the money and the book is so you can't go on.";
			stop the action.

The street is a room. The street is east of the hall. The description of the street is "On the street you see trees, buildings, a bell tower, cars, bicycles..."

Before going to the street:
	if the player wears the raincoat:
		say "It's raining, but the raincoat protects you from the rain!";
		move the player to the street;
		stop the action;
	 if the player carries the raincoat:
		say "Now you are putting raincoat so you don't get sick!";
		move the player to the street;
		now the player wears raincoat;
		stop the action;
	otherwise:
		say "You don't have a raincoat, go back to the room if you don't want to get wet.";
		stop the action;
		
A flower is a kind of edible thing.  A violet is a kind of flower.  An anemone is a kind of flower.  A saffron is a kind of flower.  Understand "flower" as a flower.
There are five violets in street.  There are six anemone in street.  There are ten saffron in street. 
Instead of eating a flower: say "The flower is not edible, it is very bitter and may be poisonous!" 
Instead of eating a violet: say "Violets look really nice, but unfortunately they are not edible."
Instead of eating a anemone: say "Anemones resembles a daisy, but it is not edible, but unfortunately they are not edible."
Instead of eating a saffron: say "Saffron smells very nice, but are not edible."

There is a tree in street. 
The paper is on the tree.
The paper contains a message.
The description of the message is "MESSAGE: Head east toward the bakery."

The bakery is a room. The bakery is east of the street. The description of the bakery is "The bakery has a variety of pastries, three tables and six chairs, a refrigerator with milk, yogurt, juices.. If you have money you can buy a bagel now."
The Baker is a person in the bakery.
The Baker carries a bagel. 
The bagel is edible.

[Tables]
Table of Baker Responses
Topic	Response	Index
"Bagel"	"It costs 10 kuna."	"Bagel"
"bagel"	"It costs 10 kuna.."	"bagel"
"how much does a bagel cost"	"It costs 10 kuna."	"how much does a bagel cost"
"How much does a bagel cost"	"It costs 10 kuna."	"How much does a bagel cost"

After asking Baker about something:
	if the topic understood is a topic listed in the Table of Baker Responses:
		say "[Response entry]";
		
Before of buying the bagel when baker carries bagel:
	 if the player has the money:
		move money to the baker;
		say "Bon appetit!";
		move bagel to the player;
		stop the action;
	otherwise:
		say "You lost money you can't buy bagel.";
		stop the action.
		
The narrow passage is a room. The narrow passage is east of the bakery. The description of the narrow passage is "A little more and you're done. You are in a narrow passage. [line break]Continue east toward the library."

The owl is an animal in the narrow passage. The owl is either awake or asleep. The owl is awake. "The wise owl is covered with gray-white feathers, has large eyes and large wings.".

Before going to the narrow passage:
	if the baker carries bagel:
		if the player carries money:
			say "You stayed hungry because you don't want to spend money.";
			move the player to the narrow passage;
			stop the action;
		otherwise:
			say "You stayed hungry because you lost money.";
	if the player carries bagel:
		say "Okay, eat bagel when you want you don't have to eat in the bakery.";
			
After eating the bagel when the player is in the Bakery:
		say "All right, you're fed up now, you're going out on a narrow passage.";
		move player  to the narrow passage;
		stop the action;

The library is a room. The library is east of narrow passage. The description of the library is "Well done! You've reached to the library. The library contains a lot of books, chairs, desks with laptops, a lot of people and a desk behind which is a librarian. All you have to do is drop the book and you're done."

Instead of going east from the narrow passage:
	say "An owl appears in front of you the narrow passage to the library and asks you: In what year did Inform 7 first appear?";
	now the command prompt is "Enter the answer: ";

After reading a command when the command prompt is "Enter the answer: ":
	if the player's command matches "2006":
		say "The owl has asleep. Keep moving to the east.";
		now the owl is asleep;
		move the player to the library;
		now the command prompt is ">";
		reject the player's command;
	otherwise:
		if the player carries the book:
			say "The owl has steal book. Try to catch owl.";
			move the book to the owl;
			now the command prompt is ">";
			reject the player's command;
			
Catch is an action applying to nothing.
Understand "catch owl" or "catch" or "kill" or "kill owl" as Catch.
After Catch for the first time:
	end the story saying "You can't catch me, yet I fly very very fast!. GAME OVER";
	
Before going to library:
	if the player is not carrying book:
		end the story saying "You meant to fool me, but you lost a book along the way. GAME OVER";	
		
After dropping the book when the player is in the library:
	end the story saying "You have succeeded!";	














	

