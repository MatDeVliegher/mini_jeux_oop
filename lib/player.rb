
class Player
	attr_accessor :name, :life_points

	@@all_players = []

	def initialize (name)
		@name = name
		@life_points = 10
		@@all_players << self
	end

	def show_state
		puts "#{@name} à #{@life_points} points de vie !"
	end

	def gets_damages (damages_points)
		@life_points = @life_points-damages_points
		if @life_points >= 1
			puts "#{@name} à #{@life_points} points de vie !"
		else
			puts "#{@name} a été tué !"
		end
	end

	def attacks (player_attacked)
		attacks_damages_points = compute_damage
		puts "Le joueur #{@name} attaque le joueur #{player_attacked.name}"
		puts "il lui inflige #{attacks_damages_points} points de dommages !"
		player_attacked.gets_damages(attacks_damages_points)
		
	end
	
	def compute_damage
    return rand(1..6)
  end

end

	 