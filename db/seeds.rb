puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", stars: 5, chef_name: 'Roger' }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", stars: 4, chef_name: 'Marco' }
mdco_guill = { name: "Mcdo Guillotiere", address: "La guill", stars: 3, chef_name: "Ronald" }

[ dishoom, pizza_east, mdco_guill ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
