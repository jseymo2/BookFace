# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

User.create!(name: 'James Doe', email: 'jdoe@example.com', password: 'password', password_confirmation: 'password')
User.create!(name: 'Jane Doe', email: 'janedoe@example.com', password: 'password', password_confirmation: 'password')

ya = Genre.create! :name => "Young Adult"
humor = Genre.create! :name => "Humor"
gnovel = Genre.create! :name => "Graphic Novel"
crime = Genre.create! :name => "Crime"
fantasy = Genre.create! :name => "Fantasy"
business = Genre.create! :name => "Business and Finance"

collins = Author.create! :first_name => "Suzanne", :last_name => "Collins"
kaling = Author.create! :first_name => "Mindy", :last_name => "Kaling"
handler = Author.create! :first_name => "Chelsea", :last_name => "Handler"
ohba = Author.create! :first_name => "Tsugumi", :last_name => "Ohba"
oda = Author.create! :first_name => "Eiichiro", :last_name => "Oda"
grisham = Author.create! :first_name => "John", :last_name => "Grisham"
patterson = Author.create! :first_name => "James", :last_name => "Patterson"
martin = Author.create! :first_name => "George", :last_name => "Martin"
tolkien = Author.create! :first_name => "John", :last_name => "Tolkien"
ende = Author.create! :first_name => "Michael", :last_name => "Ende"
ries = Author.create! :first_name => "Eric", :last_name => "Ries"
eyal = Author.create! :first_name => "Nir", :last_name => "Eyal"

Book.create! :name => "The Hunger Games", :price => 20.00, :author => collins, :genre => ya, :image_name => "hunger_games"
Book.create! :name => "Catching Fire", :price => 20.00, :author => collins, :genre => ya, :image_name =>  "catching_fire"
Book.create! :name => "Mockingjay", :price => 20.00, :author => collins, :genre => ya, :image_name => "mocking_jay"
Book.create! :name => "Is Everyone Hanging out Without Me?", :price => 20.00, :author => kaling, :genre => humor, :image_name => "without_me"
Book.create! :name => "Are You There, Vodka? It's Me Chelsea", :price => 20.00, :author => handler, :genre => humor, :image_name => "you_there_vodka"
Book.create! :name => "Death Note", :price => 20.00, :author => ohba, :genre => gnovel, :image_name => "death_note"
Book.create! :name => "One Piece", :price => 20.00, :author => oda, :genre => gnovel, :image_name => "one_piece"
Book.create! :name => "The Pelican Brief", :price => 20.00, :author => grisham, :genre => crime, :image_name => "pelican"
Book.create! :name => "A Time to Kill", :price => 20.00, :author => grisham, :genre => crime, :image_name => "time_to_kill"
Book.create! :name => "Along Came a Spider", :price => 20.00, :author => patterson, :genre => crime, :image_name => "spider"
Book.create! :name => "A Game of Thrones", :price => 20.00, :author => martin, :genre => fantasy, :image_name => "game_of_thrones"
Book.create! :name => "A Clash of Kings", :price => 20.00, :author => martin, :genre => fantasy, :image_name => "clash_of_kings"
Book.create! :name => "A Storm of Swords", :price => 20.00, :author => martin, :genre => fantasy, :image_name => "storm_of_swords"
Book.create! :name => "A Feast for Crows", :price => 20.00, :author => martin, :genre => fantasy, :image_name => "feast_for_cows"
Book.create! :name => "A Dance with Dragons", :price => 20.00, :author => martin, :genre => fantasy, :image_name => "dance_with_dragons"
Book.create! :name => "The Silmarillion", :price => 20.00, :author => tolkien, :genre => fantasy, :image_name => "silmarillion"
Book.create! :name => "The NeverEnding Story", :price => 20.00, :author => ende, :genre => fantasy, :image_name => "never_ending"
Book.create! :name => "The Lean Startup", :price => 20.00, :author => ries, :genre => business, :image_name => "lean_startup"
Book.create! :name => "Hooked", :price => 20.00, :author => eyal, :genre => business, :image_name => "hooked"