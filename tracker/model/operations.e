note
	description: "Summary description for {OPERATIONS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	OPERATIONS

create
	new_tracker

create
	empty

feature {NONE, OPERATIONS}	-- Attributes
	phases: HASH_TABLE[PHAZE, STRING]
	containers: HASH_TABLE[MATERIAL_CONTAINER, STRING]
	max_phase_radiation: VALUE
	max_container_radiation: VALUE

feature	-- Constructor
	new_tracker(mpr: VALUE ; mcr: VALUE)
	do
		create containers.make(0)
		create phases.make (0)
		max_phase_radiation := mpr
		max_container_radiation := mcr
	end

	empty
	do
		create phases.make (0)
		create containers.make(0)
		create max_phase_radiation.default_create
		create max_container_radiation.default_create
	end

feature	-- Commands
	create_phase (pid: STRING; phase_name: STRING_8; cap: INTEGER_64; e_materials: ARRAY [INTEGER_64])
	local
		p: PHAZE
	do
		create p.initialize (pid, phase_name, cap, e_materials)
		phases.force (p, pid)
	end

	remove_phase(pid: STRING)
	do
		phases.remove (pid)
	end

	create_container(cid: STRING ; c: TUPLE[material: INTEGER_64; radioactivity: VALUE] ; pid: STRING)
	local
		container: MATERIAL_CONTAINER
	do
		create container.package (cid, c, pid)
		containers.force(container, cid)
		if attached phases.item (pid) as phase then
			phase.increase_load
			phase.add_radiation(c.radioactivity)
		end
	end

	move_container(cid: STRING ; pid1: STRING ; pid2: STRING)
	do
		if
			attached containers.item (cid) as container and
			attached phases.item (pid1) as p_from and
			attached phases.item (pid2) as p_to
		then
				p_from.decrease_load
				p_from.reduce_radiation(container.radiation)
				container.set_phase(pid2)
				p_to.increase_load
				p_to.add_radiation(container.radiation)
		end
	end

	remove_container(cid : STRING)
	do
		containers.remove (cid)
	end

feature	-- Querries

	has_phase(id: STRING): BOOLEAN
	do
		Result := phases.has (id)
	end

	get_phases: HASH_TABLE[PHAZE,STRING]
	do
		Result := phases
	end

	count_containers: INTEGER_32
	do
		Result := containers.count
	end

	has_container(id : STRING): BOOLEAN
	do
		Result := containers.has (id)
	end

	get_containers: HASH_TABLE[MATERIAL_CONTAINER,STRING]
	do
		Result := containers
	end

	get_max_phase_radiation: VALUE
	do
		Result := max_phase_radiation
	end

	get_max_container_radiation: VALUE
	do
		Result := max_container_radiation
	end

	tracker_info: STRING
	do
		create Result.make_from_string ("  ")
		Result.append ("max_phase_radiation: ")
		Result.append (max_phase_radiation.out)
		Result.append (", max_container_radiation: ")
		Result.append (max_container_radiation.out)
	end

	phase_info: STRING
	local
		count : INTEGER_32
		sorted_keys: SORTED_TWO_WAY_LIST[STRING]
		unsorted_keys: ARRAY[STRING]
	do
		create sorted_keys.make
		create unsorted_keys.make_from_array (phases.current_keys)
		from
			count := 1
		until
			count > unsorted_keys.count
		loop
			sorted_keys.extend (unsorted_keys.at (count))
			count := count + 1
		end
		Create Result.make_from_string ("  ")
		Result.append ("phases: pid->name:capacity,count,radiation")
		from
			sorted_keys.start
		until
			sorted_keys.after
		loop
			check attached phases.item (sorted_keys.item) as phase then
				Result.append (phase.to_string)
			end
			sorted_keys.forth
		end
	end

	container_info: STRING
	local
		count : INTEGER_32
		sorted_keys: SORTED_TWO_WAY_LIST[STRING]
		unsorted_keys: ARRAY[STRING]
	do
		create sorted_keys.make
		create unsorted_keys.make_from_array (containers.current_keys)
		from
			count := 1
		until
			count > unsorted_keys.count
		loop
			sorted_keys.extend (unsorted_keys.at (count))
			count := count + 1
		end
		Create Result.make_from_string ("  ")
		Result.append ("containers: cid->pid->material,radioactivity")
		from
			sorted_keys.start
		until
			sorted_keys.after
		loop
			check attached containers.item (sorted_keys.item) as container then
				Result.append (container.to_string)
			end
			sorted_keys.forth
		end
	end

	get_copy: OPERATIONS
	do
		create Result.empty
		Result.deep_copy(current)
	end

end
