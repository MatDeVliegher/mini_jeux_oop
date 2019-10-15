require 'bundler'
require 'pry'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'



# Présentation des joueurs

player1 = Player.new ("Josianne")
puts "A ma droite #{player1.name}"
player2 = Player.new ("José")
puts "A ma gauche #{player2.name}"


# Présentation de l'état physique de chaque joueur : nom et point de vie

puts "Voici l'état de chaque joueur: "
puts "#{player1.show_state} #{player2.show_state}"


# Le combat commence
while player1.life_points >=1 && player2.life_points >=1
	puts "Passons à la phase d'attaque"
	player1.attacks(player2)
		break if player2.life_points <= 0
	player2.attacks(player1)
		break if player1.life_points <= 0
end


