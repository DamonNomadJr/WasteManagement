note
	description: "Summary description for {MATERIAL_CONTAINER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	MATERIAL_CONTAINER

create
	package

feature
	id: STRING
	radiation: VALUE
	material: STRING

feature
	package(cid: STRING ; c: TUPLE[material: INTEGER_64; radioactivity: VALUE])
	do
		id:= cid
		radiation := c.radioactivity
		material := "empty"	-- after that we can use to set correct materials
	end

	get_id: STRING
	do
		Result := id
	end

	get_radiation:VALUE
	do
		Result := radiation
	end

	get_material: STRING
	do
		Result := material
	end

end
