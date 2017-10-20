#############
#	RULES	#
#############

# Rules are the engine of prolog. They are composed of head and body.
# Can be sintetized as: if the body is true the head is true too

hungry(john).

eat(john) :- hungry(jhon).

# Query:
#
#	eat(john).			yes. 