# This will delete any existing rows from the venues and bands tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting Venue/Band data..."
Venue.destroy_all
Band.destroy_all

puts "Creating Venues..."
la_venue = Venue.create(title: "The Roxy", city: "LA")
chi_venue = Venue.create(title: "Subterranean", city: "Chicago")
nyc_venue = Venue.create(title: "Terminal 5", city: "NYC")

puts "Creating Bands..."
ny_band = Band.create(name: "LCD Soundsystem", hometown: "NYC")
la_band = Band.create(name: "Muna", hometown: "LA")
chi_band = Band.create(name: "Noname", hometown: "Chicago")

puts "Creating Concerts..."
# ****************************************************************
# * TODO: create concerts! Remember, a concert belongs to a band *
# * and a concert belongs to a venue.                            *
# ****************************************************************
# Create concerts Here
Concert.create(date: "January 10", band: ny_band, venue: chi_venue)
Concert.create(date: "January 20", band: la_band, venue: la_venue)
Concert.create(date: "January 30", band: chi_band, venue: nyc_venue)
Concert.create(date: "January 31", band: la_band, venue: la_venue)
Concert.create(date: "January 12", band: ny_band, venue: chi_venue)

puts "Seeding done!"
