note
	description: "Summary description for {MATERIAL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	MATERIAL

feature
	set_material(number: INTEGER_64): STRING
	require
		number > 0 and number < 5
	do
		if number = 1 then
			Result := "glass"
		elseif number = 2 then
			Result := "metal"
		elseif number = 3 then
			Result := "plastic"
		else
			Result := "liquid"
		end
	end

end
