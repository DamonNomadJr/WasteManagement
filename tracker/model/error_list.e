note
	description: "Summary description for {ERROR_LIST}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ERROR_LIST

create
	make

feature  -- Attributes
	ok : STRING
	e1 : STRING
	e2 : STRING
	e3 : STRING
	e4 : STRING
	e5 : STRING
	e6 : STRING
	e7 : STRING
	e8 : STRING
	e9 : STRING
	e10 : STRING
	e11 : STRING
	e12 : STRING
	e13 : STRING
	e14 : STRING
	e15 : STRING
	e16 : STRING
	e17 : STRING
	e18 : STRING
	e19 : STRING
	e20 : STRING

feature {NONE}	-- Constructor
	make
	do
		create ok.make_from_string("ok")
		create e1.make_from_string("e1: current tracker is in use")
		create e2.make_from_string("e2: max phase radiation must be non-negative value")
		create e3.make_from_string("e3: max container radiation must be non-negative value")
		create e4.make_from_string("e4: max container must not be more than max phase radiation")
		create e5.make_from_string("e5: identifiers/names must start with A-Z, a-z or 0..9")
		create e6.make_from_string("e6: phase identifier already exists")
		create e7.make_from_string("e7: phase capacity must be a positive integer")
		create e8.make_from_string("e8: there must be at least one expected material for this phase")
		create e9.make_from_string("e9: phase identifier not in the system")
		create e10.make_from_string("e10: this container identifier already in tracker")
		create e11.make_from_string("e11: this container will exceed phase capacity")
		create e12.make_from_string("e12: this container will exceed phase safe radiation")
		create e13.make_from_string("e13: phase does not expect this container material")
		create e14.make_from_string("e14: container radiation capacity exceeded")
		create e15.make_from_string("e15: this container identifier not in tracker")
		create e16.make_from_string("e16: source and target phase identifier must be different")
		create e17.make_from_string("e17: this container identifier is not in the source phase")
		create e18.make_from_string("e18: this container radiation must not be negative")
		create e19.make_from_string("e19: there is no more to undo")
		create e20.make_from_string("e20: there is no more to redo")
	end

end
