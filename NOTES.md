# Funny Fables!

## Funny Fables is an online Madlibs story creator!


### How to do this???

Fable
-- belongs to a user
-- Has some sort of rating
-- serialize :lines
		line -> The sentence of a fable that you will add a keyword to
		ie: "The dog went to the" [  noun  ]
-- serialize :key_words
		key_word -> noun, verb, adjective etc that is entered by the user
		
		
User
-- has many fables <- These are the ones that you completed that you can read later or redo!
-- has many authored_fables (you can write your own)
-- Use devise to login as well as omniauth
-- Allow a user to vote up a fable that someone else has written
-- Would be cool to send your fable to a friend
-- has many friends through: user

Rating
-- user_id, fable id. User can only vote once on a fable


#### What about fables <=> users?

Maybe a fable has an author, and it has users that have completed it

A user has the fable that it authored, as well as completed_fables that it has completed.


### What if someone uses bad words?

A user can rate the fable as nsfw
A user can filter whether or not to show bad stories in the view

### Rethinking sentences

What if we did sentences or "lines" as a nested attribute that had the text and then the key word (noun, verb etc)
at the end?


### Views

Lets get setup with devise for login, and have basic static pages, 
	ie: a home page 
				-> without logging in you can read they top completed fables
				-> has a call to action to sign up or log in
				-> has a navigation bar that has your user acct, home, logout if logged in 
					 and sign up, sign in if not logged in