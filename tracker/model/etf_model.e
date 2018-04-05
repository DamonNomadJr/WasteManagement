note
	description: "A default business model."
	author: "Jackie Wang"
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_MODEL

inherit
	ANY
		redefine
			out
		end

create {ETF_MODEL_ACCESS}
	make

feature -- Attributes
	status : STRING		-- Represents status of the model
	extra_string: STRING
	errors: ERROR_LIST	-- Reference to error
	tracker: OPERATIONS	-- Reference to OPERATIONS tracker
	identity : INTEGER	-- Current state of the model [increased by operations call]
	history: HISTORY	-- Saves state of the model

feature {NONE}	-- Initialization
	make
	do
		create extra_string.make_empty
		create status.make_empty
		create errors.make
		create tracker.empty
		identity := 1
		status := errors.ok
		create history.set
		history.upload (0, status, tracker)
	end

feature -- Operations
	new_tracker( mpr: VALUE ; mcr: VALUE)
	do
		if tracker.count_containers > 0 then
			status := errors.e1
		elseif mpr < 0.000 then
			status := errors.e2
		elseif mcr < 0.000 then
			status := errors.e3
		elseif mcr > mpr then
			status := errors.e4
		else
			create tracker.new_tracker (mpr, mcr)
			create history.set
			status := errors.ok -- set status to ok
		end
		update
	end

	create_phase (pid: STRING; phase_name: STRING_8; cap: INTEGER_64; e_materials: ARRAY [INTEGER_64])
	do
		if tracker.count_containers > 0 then
			status := errors.e1
		elseif not pid.at (1).is_alpha_numeric then
			status := errors.e5
		elseif tracker.has_phase (pid) then
			status := errors.e6
		elseif not phase_name.at (1).is_alpha_numeric then
			status := errors.e5
		elseif cap < 1  then
			status := errors.e7
		elseif e_materials.count < 1 then
			status := errors.e8
		else
			tracker.create_phase (pid, phase_name, cap, e_materials)
			status := errors.ok -- set status to ok
		end
		update
	end

	remove_phase (pid : STRING)
	do
		if tracker.count_containers > 0 then
			status := errors.e1
		elseif not tracker.has_phase (pid) then
			status := errors.e9
		else
			tracker.remove_phase (pid)
			status := errors.ok
		end
		update
	end

	create_container(cid: STRING ; c: TUPLE[material: INTEGER_64; radioactivity: VALUE] ; pid: STRING)
	do
		if not cid.at (1).is_alpha_numeric then 		-- ID condition
			status := errors.e5
		elseif tracker.has_container (cid) then			-- Container exists
			status := errors.e10
		elseif not pid.at (1).is_alpha_numeric then		-- Phase ID condition
			status := errors.e5
		elseif not tracker.has_phase (pid) then			-- Phase exists
			status := errors.e9
		elseif c.radioactivity < 0.000	then			-- Valid radioactivity level +
			status := errors.e18
		else
			if attached tracker.get_phases.item(pid) as phase then
				if phase.get_load + 1 > phase.get_capacity then
					status := errors.e11
				elseif c.radioactivity > tracker.get_max_container_radiation then
					status := errors.e14
				elseif phase.get_radiation + c.radioactivity > tracker.get_max_phase_radiation then
					status := errors.e12
				elseif not phase.accepts_material(c.material) then
					status := errors.e13 + c.material.out
				else
					tracker.create_container (cid, c, pid)
					status := errors.ok
				end
			end
		end
		update
	end

	remove_container(cid : STRING)
	do
		if not tracker.has_container (cid) then
			status := errors.e15
		else
			tracker.remove_container (cid)
			status := errors.ok
		end
		update
	end

	move_container(cid: STRING ; pid1: STRING ; pid2: STRING)
	do
		if not tracker.has_container (cid) then
			status := errors.e15
		elseif pid1 = pid2 then
			status := errors.e16
		elseif not (tracker.has_phase (pid1) or tracker.has_phase (pid2)) then
			status := errors.e9
		else
			if
				attached tracker.get_containers.item (cid) as container and
				attached tracker.get_phases.item (pid1) as p_first and
				attached tracker.get_phases.item (pid2) as p_second
			then
				if not (container.get_phase.is_equal(pid1)) then
					status := errors.e17
				elseif p_second.get_load + 1 > p_second.get_capacity then
					status := errors.e11
				elseif (container.radiation + p_second.get_radiation) > tracker.get_max_phase_radiation then
					status := errors.e12
				elseif not p_second.accepts_material(container.get_material_num) then
					status := errors.e13
				else
					tracker.move_container (cid, pid1, pid2)
					status := errors.ok
				end
			end
		end
		update
	end

	undo
	local
		tuple: TUPLE[n:INTEGER; s: STRING; t: OPERATIONS]
	do
		identity := identity + 1
		tuple := history.undo
		if not (tuple.s ~ "NAN") then
			tracker := tuple.t
			status := tuple.s
			extra_string := "(to " + tuple.n.out + ") "
		else
			status := errors.e19
		end
	end

	redo
	local
		tuple: TUPLE[n:INTEGER; s: STRING; t: OPERATIONS]
	do
		tuple := history.redo
		identity := identity + 1
		if not (tuple.s ~ "NAN") then
			tracker := tuple.t
			status := tuple.s
			extra_string := "(to " + tuple.n.out + ") "
		else
			status := errors.e20
		end
	end

	reset	-- Reset model state.
	do
		make
	end

feature -- Queries
	out : STRING
	local
		testing : BOOLEAN
	do
		testing := false
		create Result.make_from_string ("  state " + (identity - 1).out + " " + extra_string + status)
		if status ~ errors.ok then
			Result.append ("%N")
			Result.append (tracker.tracker_info)
			Result.append ("%N")
			Result.append (tracker.phase_info)
			Result.append ("%N")
			Result.append (tracker.container_info)
		end
		if testing then
			Result.append ("%N  HISTORY: curr_head: "+ history.curr_head.out + "%N")
			Result.append (history.to_string)
		end
		extra_string := ""
	end

feature {NONE}	-- HIDDEN
	update	-- Perform update to the model state.
	do
		history.upload (identity, status, tracker)
		identity := identity + 1
	end

end




