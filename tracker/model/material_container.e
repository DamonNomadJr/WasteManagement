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
	phase: STRING
	num: INTEGER_64

feature -- Commands
	package(cid: STRING ; c: TUPLE[material: INTEGER_64; radioactivity: VALUE] ; pid: STRING)
	local
		identifier : MATERIAL
	do
		create identifier.make
		id:= cid
		radiation := c.radioactivity
		phase := pid
		material := identifier.set_material (c.material) -- after that we can use to set correct materials
		num := c.material
	end

feature -- Querries
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

	get_material_num: INTEGER_64
	do
		Result := num
	end

	get_phase: STRING
	do
		Result := phase
	end

	to_string: STRING
	do
		create Result.make_from_string ("%N")
		Result.append ("  ")
		Result.append ("  ")
		Result.append (id.out + "->")
		Result.append (phase.out + "->")
		Result.append (material + ",")
		Result.append (radiation.out )
	end

feature -- Command
	set_phase(pid: STRING)
	do
		phase := pid
	end

end
