note
	description: "Summary description for {OPERATIONS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	OPERATIONS

create
	initialize

feature
	phases: HASH_TABLE[PHAZE, STRING]
	state: STRING
	max_phase_radiation: VALUE
	max_container_radiation: VALUE

feature -- Constructor
	initialize(mpr: VALUE ; mcr: VALUE)
	do
		create phases.make (0)
		state := "ok"
		max_phase_radiation := mpr
		max_container_radiation := mcr
	end

feature

	create_phaze(pid: STRING ; phase_name: STRING ; capacity: INTEGER_64 ; expected_materials: ARRAY[INTEGER_64])
	local
		phaze : PHAZE
	do
		create phaze.initialize (pid, phase_name, capacity, expected_materials)
		phases.force (phaze, pid)
	end

	create_container(cid: STRING ; c: TUPLE[material: INTEGER_64; radioactivity: VALUE] ; pid: STRING)
	local
		phaze: PHAZE
		container: MATERIAL_CONTAINER
	do
		phaze := phases.at (pid)
		create container.package (cid, c)
		check attached phaze as p then
			p.add_containers(container)
		end
	end

end
