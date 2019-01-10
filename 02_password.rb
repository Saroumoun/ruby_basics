
#/ Initialiser son mdp et le déclarer

def sign_in
	puts "Définis ton password"
	print "> "
	true_mdp = gets.chomp
	return true_mdp
end


def log_in
	puts "Quel est ton password?"
	print "> "
	mdp = gets.chomp
	return mdp
end


#/ Entrer son log_in
#/ Boucle while pour confirmer le log_in tant que le mdp n'est pas le bon

def check (true_mdp,mdp)
	while mdp != true_mdp
		puts "Entrez votre mot de passe de nouveau"
 		print "> "
  		mdp = gets.chomp
	end
	puts "Vous pouvez entrer"
end

def welcome_screen
	puts "Bienvenue dans la zone secrète"
end

#/ Exécution de chaque méthode

def perform
	true_mdp = sign_in
	mdp = log_in
	check(true_mdp,mdp)
	welcome_screen  
end

perform