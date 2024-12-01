# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"

Project.all.each do |project|
  project.key_visual.purge
end

Project.destroy_all

file_path = Rails.root.join("app/assets/images/pp.png")
file = File.open(file_path)
project1 = Project.new(title: "productivityPEST", subtitle: "Work smarter", description: "Your all-in-one productivity helper", url: "https://www.productivitypest.xyz", stack: "Ruby, Rails, Javascript, HTML, SCSS, Stimulus, Posgres")
project1.key_visual.attach(io: file, filename: "pp.png", content_type: "image/png")
project1.save

file_path = Rails.root.join("app/assets/images/bl.png")
file = File.open(file_path)
project2 = Project.new(title: "bad_loser", subtitle: "Lose like a winner", description: "Keep track of your loses", url: "https://www.badloser.me", stack: "Ruby, Rails, Javascript, HTML, SCSS, Stimulus, Posgres")
project2.key_visual.attach(io: file, filename: "bl2.png", content_type: "image/png")
project2.save

file_path = Rails.root.join("app/assets/images/zf.png")
file = File.open(file_path)
project3 = Project.new(title: "ZEBRAFISH", subtitle: "A fullstack portfolio", description: "Lorem ipsum", url: "https://www.zebrafish.com", stack: "Ruby, Rails, Javascript, HTML, SCSS, Stimulus, Posgres")
project3.key_visual.attach(io: file, filename: "zf.png", content_type: "image/png")
project3.save

puts "Seeded 3 projects!!"
