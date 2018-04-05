note
	description: "Summary description for {MATERIAL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	MATERIAL

create
	make

feature
	type1 : STRING
	type2 : STRING
	type3 : STRING
	type4 : STRING

feature -- Constructor
	make
	do -- FLAG [ something is wrong here ]
		type1 := "glass"
		type2 := "metal"
		type3 := "plastic"
		type4 := "liquid"
	end

feature -- Querries
	set_material(number: INTEGER_64): STRING
	require
		number > 0 and number < 5
	do
		if number = 1 then
			Result := type1
		elseif number = 2 then
			Result := type2
		elseif number = 3 then
			Result := type3
		else
			Result := type4
		end
	end

	get_number(string: STRING): INTEGER_64
	do
		if string ~ type1 then
			Result := 1
		elseif string = type2 then
			Result := 2
		elseif string = type3 then
			Result := 3
		else
			Result := 4
		end
	end
end
