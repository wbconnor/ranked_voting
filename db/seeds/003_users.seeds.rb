users = [
  { name: 'Bojack Horseman', email: 'bojack@example.com', password_digest: 'password' },
  { name: 'Diane Nguyen', email: 'diane@example.com', password_digest: 'password' },
  { name: 'Mr. Peanutbutter', email: 'mrpb@example.com', password_digest: 'password' },
  { name: 'Princess Carolyn', email: 'pc@example.com', password_digest: 'password' },
  { name: 'Todd Chavez', email: 'todd@example.com', password_digest: 'password' }
]

users.each do |user|
  unless User.find_by(email: user[:email])
    User.create(user)
  end
end

puts "There are now #{User.count} users."