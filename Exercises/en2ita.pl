/************************************/
/*	TRANSLATING A LIST OF NUMBERS	*/
/************************************/

/* Given a list of numbers (e.g. [one, three, eight, zero]) translate them in italian. */

/* Example: */	

/*	?-	en2ita([one,two,zero,six], X) 			X = [uno, due, zero, sei]. 	**/



/** FACTS **/
translation(one,	uno).
translation(two,	due).
translation(three,	tre).
translation(four,	quattro).
translation(five,	cinque).
translation(six,	sei).
translation(seven,	sette).
translation(eight,	otto).
translation(nine,	nove).
translation(zero,	zero).


/** Rules **/

/* We first need a rule that do the reverse of the list */
reverseList([Elem|List], Acc, Reverse) :- reverseList(List, [Elem|Acc], Reverse).
reverseList([], Acc, Acc).

/* We translate the head of the English list and we use it as head of the Accumulator list after translating it in italian */
en2ita([Word|English], Accumulator, Italian) :- en2ita(English, [Parola|Accumulator], Italian), translation(Word, Parola).
en2ita([],Accumulator, Accumulator).

/* We reverse the result of the translation */
en2ita(English, Italian) :- en2ita(English, [], X), reverseList(X,[], Italian).