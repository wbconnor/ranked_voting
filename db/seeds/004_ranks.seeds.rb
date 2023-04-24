Rank.destroy_all

10.times do |i|
    Rank.create!(position: i + 1)
end

puts "There are now #{Rank.count} ranks."