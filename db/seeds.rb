# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



fable1 = {
	title: "The smelly Ogre",
	lines_attributes: {
		"0": {
			text: "Once upon a time there was a",
			key_word: "smelly"
		},
		"1": {
			text: "ogre.  He had a pet",
			key_word: "fish"
		},
		"2": {
			text: ". The end."
		}
	}
}

fable2 = {
	title: "The mystery meal",
	lines_attributes: {
		"0": {
			text: "Once upon a time there was a",
			key_word: "scary"
		},
		"1": {
			text: "chef.  He had a pet",
			key_word: "golden retriever"
		},
		"2": {
			text: ". It died. The end."
		}
	}
}


#User.create!(username: "Admin", email: "foo@bar.com", password: "111111", password_confirmation: "111111")
Fable.create!(fable1)
Fable.create!(fable2)