# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

author = User.create!(username: "Admin", email: "foo@bar.com", password: "11111111", password_confirmation: "11111111")
completer = User.create!(username: "Completer", email: "foo2@bar.com", password: "11111111", password_confirmation: "11111111")
completer2 = User.create!(username: "Completer2", email: "foo22@bar.com", password: "11111111", password_confirmation: "11111111")



fable1 = {
	author: author,
	title: "The smelly Ogre",
	lines_attributes: {
		"0": {
			text: "Once upon a time there was a",
			user_input: "smelly",
			kind: "adjective"
		},
		"1": {
			text: "ogre.  He had a pet",
			user_input: "fish",
			kind: "noun"
		},
		"2": {
			text: ". The end."
		},
	}
}

fable2 = {
	author: author,
	title: "The mystery meal",
	lines_attributes: {
		"0": {
			text: "Once upon a time there was a",
			user_input: "scary",
			kind: "adjective"
		},
		"1": {
			text: "chef.  He had a pet",
			user_input: "golden retriever",
			kind: "noun"
		},
		"2": {
			text: ". It died. The end."
		}
	}
}



fable3 = {
	author: author,
	title: "The mystery story no one has done",
	lines_attributes: {
		"0": {
			text: "Once upon a time there was a",
			user_input: "scary",
			kind: "adjective"
		},
		"1": {
			text: "thing.  It was a giant ",
			user_input: "pig",
			kind: "noun"
		},
		"2": {
			text: ". It ate your MOM. The end."
		}
	}
}



Fable.create!(fable1)
Fable.create!(fable2)
Fable.create!(fable3)

input1 = {fable_id: 1, answers: ["stupid", "cardboard box"]}
input2 = {fable_id: 2, answers: ["magical", "unicorn"]}
input3 = {fable_id: 1, answers: ["chubby", "paperclip"]}

completer.complete_fable(input1)
completer.complete_fable(input2)
completer2.complete_fable(input3)