note
description: "This class contains all the possible error outputs."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ERRORS

create
	make


feature {NONE} -- creation
	make
		do

			create OK.make_from_string("ok")
			create E1.make_from_string("e1: current tracker is in use")
			create E2.make_from_string("e2: max phase radiation must be non-negative value")
			create E3.make_from_string("e3: max container radiation must be non-negative value")
			create E4.make_from_string("e4: max container must not be more than max phase radiation")
			create E5.make_from_string("e5: identifiers/names must start with A-Z, a-z or 0..9")
			create E6.make_from_string("e6: phase identifier already exists")
			create E7.make_from_string("e7: phase capacity must be a positive integer")
			create E8.make_from_string("e8: there must be at least one expected material for this phase")
			create E9.make_from_string("e9: phase identifier not in the system")
			create E10.make_from_string("e10: this container identifier already in tracker")
			create E11.make_from_string("e11: this container will exceed phase capacity")
			create E12.make_from_string("e12: this container will exceed phase safe radiation")
			create E13.make_from_string("e13: phase does not expect this container material")
			create E14.make_from_string("e14: container radiation capacity exceeded")
			create E15.make_from_string("e15: this container identifier not in tracker")
			create E16.make_from_string("e16: source and target phase identifier must be different")
			create E17.make_from_string("e17: this container identifier is not in the source phase")
			create E18.make_from_string("e18: this container radiation must not be negative")

		end


feature  -- attributes

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
end
