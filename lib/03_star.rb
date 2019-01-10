
#/ Lancer de dés
def lancer
	d = rand (1..6)
	return d
end


#/ m = marche et i = tour

def games (d)
	m = 0
	if m < 0
		then m = 0
	end
	
	i = 1

	while m < 10
		d = lancer() #/ relancer le jeu 

		if d == 5 || d == 6
			m = m+1
			puts "Tour #{i}, tu avances d'une marche, tu es à la marche #{m}"
			i = i+1
		elsif d == 1
			m = m-1
			puts "Tour #{i}, tu descends d'une case et tu es à la marche #{m}"
			i = i+1
		else 
			m = m
			puts "Tour #{i}, rien ne s'est passé, tu es à la marche #{m}"
			i = i+1
		end 
	end
	puts "Tu as gagné!"
end


def perform
	d = lancer
	games(d)
end

perform
