# Prolog is composed by query, fact and rules. This are examples or facts.

animal(cat).
animal(dog).
animal(tiger).

feline(cat).
feline(tiger).

# This are query, prolog will answer to them in this way:

#	?- animal(cat).				true.
#	?- animal(dog).				true.
#	?- animal(john).			false.

#	?- feline(tiger).			true.
#	?- feline(dog).				false.

#Also this is a fact:

jump.

# And we can query this to prolog:

#	?- jump.					true.
#	?- walk						false.

