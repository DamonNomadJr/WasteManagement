note
	description: "A container of nuclear waste."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	WASTE_CONTAINER

inherit
	COMPARABLE
		redefine
			out
		end

create
	make

feature {NONE} -- creation

	make(cid: STRING ; c: TUPLE[material: INTEGER_64; radioactivity: VALUE] ; p_id: STRING)
		do

			create id.make_from_string (cid)
			create pid.make_from_string (p_id)
			material:= c.material.as_integer_32
			rad_count:= c.radioactivity
            
            -- create the materials array. Materials, as strings, are specified by indices.
			create materials.make_empty
			materials.put("glass", 1)
			materials.put ("metal", 2)
			materials.put ("plastic", 3)
			materials.put ("liquid", 4)
		end

feature -- attributes
	id : STRING
	pid:STRING
	rad_count: VALUE
	material: INTEGER
	materials : ARRAY[STRING]

feature -- commands 

feature -- queries
    -- getters below are for information hidding.
    get_id: STRING
        do
            create Result.make_from_string(id)
        end

	get_pid : STRING
	    do
			create Result.make_from_string(pid)
		end

    get_rad: VALUE
        do
        end

	get_material: STRING
		do
			create Result.make_from_string(materials.at (material))
		end

	transfer_to_phase(p:STRING)
		do
			pid:= p
		end


	out : STRING
		do
            -- containers: cid->pid->material,radioactivity
			create Result.make_from_string ("    " + id.out + "->" + pid.out + "->" + materials.at (material)  + "," + rad_count.out)

		end
    -- Comparable. Comparing the ids of containers
	infix "<" (other: like Current): BOOLEAN
		do
			Result:= current.id.is_less (other.id)
		end

end











