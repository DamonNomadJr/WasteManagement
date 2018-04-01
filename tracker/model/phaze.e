note
	description: "Summary description for {PHAZE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PHAZE

create
	initialize

feature
	id: STRING										-- Phase's ID
	name: STRING									-- Name of the phase
	capacity: INTEGER_64							-- Maximum load of the phase
	load: INTEGER_64								-- Current load of the phase
	radiation: INTEGER_64							-- Current radiation level
	material_types: ARRAY[STRING]					-- Materials allowed in phase
	containers: ARRAYED_LIST[MATERIAL_CONTAINER]	-- List of all containers in phase

feature -- Constructor
	initialize(pid: STRING ; phase_name: STRING ; cap: INTEGER_64 ; e_materials: ARRAY[INTEGER_64])
	local
		str: STRING
		count : INTEGER
		material : MATERIAL
	do
		create material 					-- Local
		id := pid
		name := phase_name
		capacity := cap
		load := 0
		radiation := 0
		create containers.make (0)
		create material_types.make_empty
		from
			count := 1
		until
			count > material_types.count
		loop
			str := material.set_material (e_materials.at (count))
			if not material_types.has (str) then
				-- If the item doesn't appear once in array
				material_types.force (str, material_types.count + 1)
				-- Add it to the end of the array
				-- This case makes it so that it would have an array of example {liquid, metal, plastic}
			end
			count := count + 1
		end
	end

feature -- Commands
	get_id:STRING
	do
		Result := id
	end

	get_name: STRING
	do
		Result := name
	end

	get_capacity: INTEGER_64
	do
		Result := capacity
	end

	get_load: INTEGER_64
	do
		Result := load
	end

	get_radiation: INTEGER_64
	do
		Result := radiation
	end

feature -- Querries
	add_containers (container: MATERIAL_CONTAINER)
	do
		containers.force (container)
	end

end
