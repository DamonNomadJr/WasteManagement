note
	description: "Summary description for {HISTORY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HISTORY

create
	set

feature -- Attributes
	list: ARRAY[TUPLE[state:INTEGER; string: STRING; tracker: OPERATIONS]]
	last_head : INTEGER_32
	curr_head : INTEGER_32

feature
	set
	do
		create list.make_empty
		last_head := 0
		curr_head := 0
	end

	upload(state:INTEGER; string: STRING; tracker: OPERATIONS)
	local
		tuple: TUPLE[n:INTEGER; s: STRING; t: OPERATIONS]
	do
		create tuple.default_create
		tuple.n := state
		tuple.s := string
		tuple.t := tracker.get_copy
		curr_head := curr_head + 1
		last_head := curr_head
		list.force (tuple, curr_head)
		--remove_after

	end

	remove_after
	local
		l: ARRAY[TUPLE[state:INTEGER; string: STRING; tracker: OPERATIONS]]
		count : INTEGER_32
	do
		create l.make_empty
		from
			count := 1
		until
			curr_head < count
		loop
			l.force (list.item (count), count)
			count := count + 1
		end
		create list.make_from_array (l)
	end

	undo: TUPLE[state:INTEGER; string: STRING; tracker: OPERATIONS]
	local
		tuple: TUPLE[n:INTEGER; s: STRING; t: OPERATIONS]
	do
		if curr_head > 0 then
			curr_head := curr_head - 1
		end
		if curr_head = 0 or not list.valid_index (curr_head) then
			create tuple.default_create
			tuple.s := "NAN"
			Result := tuple
		else
			Result := list.item (curr_head)
		end

	end

	redo: TUPLE[state:INTEGER; string: STRING; tracker: OPERATIONS]
	local
		tuple: TUPLE[n:INTEGER; s: STRING; t: OPERATIONS]
	do
		if curr_head = 0 then
			curr_head := 2
		elseif curr_head < last_head then
			curr_head := curr_head + 1
		end
		if not list.valid_index (curr_head) then
			create tuple.default_create
			tuple.s := "NAN"
			curr_head := curr_head - 1
			Result := tuple
		else
			Result := list.item (curr_head)
		end

	end


	to_string: STRING
	local
		count : INTEGER_32
	do
		create Result.make_from_string ("")
		from
			count := 1
		until
			count > list.count
		loop
			Result.append ("  " + list.item (count).state.out + " " + list.item (count).string + " %N")
			count := count + 1
		end
	end

end
