# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

200.times do
	Songs.create(name: Faker::Kpop.iii_groups, band: Faker::Music.band, album: Faker::Music.album, genre: Faker::Music.genre, chord: Faker::Music.chord)
end


Songs.where("chord LIKE 'C'") or Songs.where("chord = 'C'")
Songs.where("band = 'The Bretles'")
Songs.where("genre LIKE '%rock%'")
