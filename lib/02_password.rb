
#/ Première méthode : Initialiser son mdp 

def sign_in
	puts "Définis ton password"
	print "> "
	true_mdp = gets.chomp
	return true_mdp
end


#/ Deuxième méthode : Déclarer son mdp
def log_in
	puts "Quel est ton password?"
	print "> "
	mdp = gets.chomp
	return mdp
end


#/ Troisième méthode : Entrer son log_in et faire la correspondance entre la 1ère et 2ème méthode
#/ Boucle while pour confirmer le log_in tant que le mdp n'est pas le bon

def check (true_mdp,mdp)
	while mdp != true_mdp
		puts "Entrez votre mot de passe de nouveau"
 		print "> "
  		mdp = gets.chomp
	end
	puts "Félicitations, vous pouvez entrer !"
end

#/ Quatrième méthode : Affichage du welcome_screen
def welcome_screen
	puts "Bastien est vraiment un petit filou !"
end

#/ Conclusion : Exécution de chaque méthode

def perform
	true_mdp = sign_in
	mdp = log_in
	check(true_mdp,mdp)
	welcome_screen  
end

perform



