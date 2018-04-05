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
	load: INTEGER_64								-- Current load of the phase
	radiation: VALUE
	capacity: INTEGER_64							-- Maximum load of the phase
	material_types: HASH_TABLE[STRING, INTEGER_64]	-- Materials allowed in phase
	material: MATERIAL

feature -- Constructor
	initialize(pid: STRING ; phase_name: STRING ; cap: INTEGER_64 ; e_materials: ARRAY[INTEGER_64])
	local
		count1, count2: INTEGER_32
	do
		id := pid							-- Phase id is set
		name := phase_name					-- Phase name is set
		load := 0							-- Load is 0 by default
		capacity := cap						-- Maximum capacity is set
		create material_types.make (4) 		-- An array of all material types ['glass', 'metal', 'plastic', 'liquid']
		create material.make
		from
			count1 := 1
			count2 := 1
		until
			count1 > e_materials.count
		loop
			if not material_types.has_item (material.set_material (e_materials.item (count1))) then
				material_types.force (material.set_material(e_materials.item (count1)), count2)
				count2 := count2 + 1
			end
			count1 := count1 + 1
		end
	end

feature -- Commands
	get_id:STRING					-- Returns phase's id
	do
		Result := id
	end

	get_name: STRING				-- Returns phase's name
	do
		Result := name
	end

	get_capacity: INTEGER_64		-- Return phases's capacity
	do
		Result := capacity
	end

	get_load: INTEGER_64			-- Returns curret load, counts the number of containers
	do
		Result := load

	end

	get_radiation: VALUE			-- Returns current radiation level
	do
		Result := radiation
	end

	accepts_material(int: INTEGER_64): BOOLEAN
	do
		Result := material_types.has_item (material.set_material (int))

	end

	get_allowed_materials: STRING	-- Returns a string of materials which can be used as "{xxx, xxx, xxx, xxx}"
	local
		count : INTEGER_32
		list: ARRAYED_LIST[STRING]
	do
		create list.make (0)
		from count := 1
		until count > 5
		loop
			if material_types.has (count) then
				check attached material_types.at (count) as string then
					list.force (string)
				end
			end
			count := count + 1
		end
		Result := "{"
		from
			list.start
		until
			list.after
		loop
			Result.append(list.item)
			if not (list.item ~ list.last) then
				Result.append(",")
			end

			list.forth
		end
		Result.append ("}")
	end

	to_string: STRING
	do
		create Result.make_from_string ("%N")
		Result.append ("  ")
		Result.append ("  ")
		Result.append (get_id.out + "->")
		Result.append (get_name.out + ":")
		Result.append (get_capacity.out + ",")
		Result.append (get_load.out + ",")
		Result.append (get_radiation.out + ",")
		Result.append (get_allowed_materials)
	end

feature -- Querries
	increase_load
	do
		load := load + 1
	end

	decrease_load
	do
		load := load - 1
	end

	add_radiation(val: VALUE)
	do
		radiation := radiation + val
	end

	reduce_radiation(val: VALUE)
	do
		radiation := radiation - val
	end

end
