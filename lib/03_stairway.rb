
#/ Première méthode : Lancer de dés
def lancer
	d = rand (1..6)
	return d
end


#/ Deuxième méthode : Règles du jeu
#/ légence : m = marche et i = tour

def games 
	m = 0
	i = 1

	while m < 10
		d = lancer() #/ relancer le jeu à chaque fois 
		if d == 5 || d == 6
			m = m+1
			puts "Tour #{i}, tu avances d'une marche, tu es à la marche #{m}"
			i = i+1
		elsif d == 1
			m = m-1
			if m < 0 #/ pour ne pas avoir une échelle négative
				then m = 0
			end
			puts "Tour #{i}, tu descends d'une case et tu es à la marche #{m}"
			i = i+1
		else 
			m = m
			puts "Tour #{i}, rien ne s'est passé, tu es à la marche #{m}"
			i = i+1
		end 
	end
	puts "Tu as gagné!"
	return i #/ mémoriser les nombres de tours effectués pour la troisième méthode
end

#/ Troisième méthode : Définition du nombre moyen de tours pour arriver à 10 sur l'échelle

def average_finish_time
	my_hash = [] #/ on initialise un tableau vide
	100.times do games()
		my_hash << games() #/ on insère l'intégralité des tours pour calculer la moyenne 
	end

	my_average = my_hash.sum / my_hash.size.to_f #/ calcul de la moyenne 
	#/ to_f permet de faire la moyenne sur un nombre décimal
	puts " "
	puts "En moyenne, tu as besoin de #{my_average} tours pour gagner."
	puts " "
end

def perform
	d = lancer
	games
	average_finish_time
end

perform
