def half_pyramid 
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	user_floors = gets.to_i

	for floor in 1..user_floors
		blank = " " * (user_floors - floor)
		diese = "#" * (floor)
		puts blank + diese
	end
end

def full_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	user_floors = gets.to_i

	for floor in 1..user_floors
		blank = " " * (user_floors - floor)
		diese = "#" * (floor+floor-1)
		puts blank + diese
	end
end

def wtf_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu (nombre impair) ?"
	print "> "
	user_floors = gets.to_i
	middle = (user_floors/2) + 1

	for floor in 1..(middle)
		blank = " " * (middle - floor)
		diese = "#" * (floor+floor-1)
		puts blank + diese
	 end

	for floor in 1..(middle-1)
	 	blank = " " * (floor)
	 	diese = "#" * (user_floors-floor-floor)
	 	puts blank + diese
	 end

end

half_pyramid
full_pyramid
wtf_pyramid




