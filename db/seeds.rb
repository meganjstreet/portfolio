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
  project.key_visual.purge if project.key_visual.attached?
  project.app_logo.purge if project.app_logo.attached?
  project.challenges_visual.purge if project.challenges_visual.attached?
  project.learnings_visual.purge if project.learnings_visual.attached?
end

Project.destroy_all

# PROJECT 1

file_path = Rails.root.join("app/assets/images/pp.png")
file_path2 = Rails.root.join("app/assets/images/rat.png")
file_path3 = Rails.root.join("app/assets/images/pp2.png")

file = File.open(file_path)
file2 = File.open(file_path2)
file3 = File.open(file_path3)
project1 = Project.new(title: "productivityPEST", subtitle: "Work smarter", description: "Your all-in-one productivity helper", url: "https://www.productivitypest.xyz", stack: "Ruby, Rails, Javascript, HTML, SCSS, Stimulus, Posgres")
project1.key_visual.attach(io: file, filename: "pp.png", content_type: "image/png")
project1.app_logo.attach(io: file2, filename: "rat.png", content_type: "image/png")
project1.challenges_visual.attach(io: file3, filename: "pp2.png", content_type: "image/png")

project1.save

# PROJECT 2

file_path = Rails.root.join("app/assets/images/bl.png")
file_path2 = Rails.root.join("app/assets/images/game-over.png")
file_path3 = Rails.root.join("app/assets/images/bl2.png")

file = File.open(file_path)
file2 = File.open(file_path2)
file3 = File.open(file_path3)

project2 = Project.new(title: "bad_loser", subtitle: "Lose like a winner", description: "Keep track of your loses", url: "https://www.badloser.me", stack: "Ruby, Rails, Javascript, HTML, SCSS, Stimulus, Posgres")
project2.key_visual.attach(io: file, filename: "bl.png", content_type: "image/png")
project2.app_logo.attach(io: file2, filename: "bl1.png", content_type: "image/png")
project2.challenges_visual.attach(io: file3, filename: "bl3.png", content_type: "image/png")

project2.save

# PROJECT 3


file_path = Rails.root.join("app/assets/images/zf.png")
file_path2 = Rails.root.join("app/assets/images/logo-mark.png")
file_path3 = Rails.root.join("app/assets/images/zf2.png")

file = File.open(file_path)
file2 = File.open(file_path2)
file3 = File.open(file_path3)

project3 = Project.new(title: "ZEBRAFISH", subtitle: "A fullstack portfolio", description: "Lorem ipsum", url: "https://www.zebrafish.com", stack: "Ruby, Rails, Javascript, HTML, SCSS, Stimulus, Posgres")
project3.key_visual.attach(io: file, filename: "zf.png", content_type: "image/png")
project3.app_logo.attach(io: file2, filename: "logo-mark.png", content_type: "image/png")
project3.challenges_visual.attach(io: file3, filename: "zf2.png", content_type: "image/png")
project3.save

puts "Seeded 3 projects!!"
