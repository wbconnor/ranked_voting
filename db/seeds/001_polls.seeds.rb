polls = [
  { title: 'Favorite color?' },
  { title: 'Favorite food?' },
  { title: 'Favorite animal?' }
]

polls.each do |poll|
  Poll.find_or_create_by(poll)
end

puts "seeded polls"