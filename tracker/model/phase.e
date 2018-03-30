note
	description: "A phase in the nuclear waste tracking system."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PHASE

inherit
	COMPARABLE
		redefine
			out
		end
--	ANY
--		redefine
--			out
--		end	

create
	make

feature {NONE} -- Initialization

	make(pid: STRING ; phase_name: STRING ; cap: INTEGER_64 ; e_materials: ARRAY[INTEGER_64])
	local
		in:INTEGER
		in2:INTEGER
		do
			create id.make_from_string (pid)
			create name.make_from_string (phase_name)
			capacity := cap.as_integer_32
			container_count := 0

			create expected_materials.make_empty
			from
				in:= 1
				in2:=1
			until
				in>e_materials.count
			loop
				if not expected_materials.has (e_materials.at (in)) then
					expected_materials.force (e_materials.at (in), in2)
					in2:=in2+1
				end
				in:=in+1
			end


			create materials.make_empty
			materials.force ("glass", 1)
			materials.force ("metal", 2)
			materials.force ("plastic", 3)
			materials.force ("liquid", 4)

		end




feature -- attributes
    id: STRING
	name: STRING
	capacity: INTEGER
	container_count: INTEGER
	rad_count: VALUE
	expected_materials: ARRAY[INTEGER_64]
	materials : ARRAY[STRING]

feature -- commands 

    add_material(rad:VALUE)
    	do
			rad_count := rad_count + rad
			container_count := container_count + 1

    	end

    remove_material(rad:VALUE)
    	do
    		rad_count := rad_count - rad
			container_count := container_count - 1

    	end

feature -- queries

	accepts_material(material: INTEGER) : BOOLEAN
		do
			Result := expected_materials.has (material)
		end



    will_exceed_capacity: BOOLEAN
    	do
    		Result:= (1 + current.container_count) > current.capacity
    	end

	out : STRING
		do
            --	phases: pid->name:capacity,count,radiation
			create Result.make_from_string ("    " + id + "->" + name  + ":")
			Result.append (capacity.out + "," + container_count.out + "," + rad_count.out + "," + list_of_materials)

		end

	list_of_materials : STRING
		local
			i:INTEGER
		do
			create Result.make_from_string ("{")

			Result.append (materials.at (expected_materials.at (1).as_integer_32).out)
			from
				i:= 2
			until
				i>expected_materials.count
			loop
				Result.append ( "," + materials.at (expected_materials.at (i).as_integer_32).out )
				i := i + 1
			end
			Result.append ("}")

		end

	infix "<" (other: like Current): BOOLEAN
	do
		Result:= current.id.is_less (other.id)
	end


end
