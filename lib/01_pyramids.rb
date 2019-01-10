def full_pyramid
	puts "Nombre d'étage ?"
	print "> "
	user_floors = gets.to_i


	for floor in 1..user_floors
		blank = " " * (user_floors - floor)
		diese = "#" * (floor+floor-1)
		puts blank + diese
	end

	for floor in 1..(user_floors-1)
		blank = " " * (floor)
		diese = "#" * (user_floors+user_floors-floor-floor-1)
		puts blank + diese
	end

end

full_pyramid



