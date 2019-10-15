
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



#on définit la classe du joueur qui affrontera les ennemis
#cette classe hérite de Player
# elle aura plus de santé, qu'elle peut améliorer jusqu'à 100 avec la méthode search_health_pack
# elle aura une arme, qu'elle peut améliorer avec la méthode search_weapon
#class HumanPlayer < Player
 # attr_accessor :weapon_level

  #def initialize(name)
   # @life_points = 100
    #@weapon_level = 1
    #@name = name

  #end

  #def compute_damage
   # rand(1..6) * @weapon_level
 # end

  #def show_state
  #  print "#{self.name} a #{self.life_points} points de vie et une arme de niveau #{self.weapon_level}."
  #end

  #def search_weapon
  #  random = rand(1..6)
   # puts "Tu as trouvé une arme de niveau #{random}."
   # if random > self.weapon_level
    #  self.weapon_level = random
     # puts "Youhou ! Elle est meilleure que ton arme actuelle: tu la prends."
      #puts
     # #puts "Appuie sur entrée pour continuer."
      #gets.chomp
    #else
    #  puts  "M@*#$... elle n'est pas mieux que ton arme actuelle..."
     # puts
     # puts "Appuie sur entrée pour continuer."
      ##gets.chomp
    #end
  #end

#  def search_health_pack
 #   random = rand(1..6)
 #   case random
 #   when 1
 #     puts "Tu n'as rien trouvé... "
 #   when 6
 #     puts "Waow, tu as trouvé un pack de +80 points de vie !"
 #     if self.life_points < 20
 #       self.life_points += 80
 #     else
 #       self.life_points = 100
 #     end
 #     puts "Appuie sur entrée pour continuer."
 #     gets.chomp
 #   else
 #     puts "Bravo, tu as trouvé un pack de +50 points de vie !"
 #    if self.life_points < 50
 #      self.life_points += 50
 #     else
 #       self.life_points = 100
 #     end
 #     puts "Appuie sur entrée pour continuer."
 #     gets.chomp
 #   end
 # end

#end
	 