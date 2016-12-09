# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

items = ListItem.create([{ id: 1, itemtype: 'babyrecord', itemname: 'Milk' },
												 { id: 2, itemtype: 'babyrecord', itemname: 'Faeces' }])

