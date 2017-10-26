/*****************************/
/* MINIMUM INTEGER OF A LIST */
/*****************************/

/** Given a list of integers program will find the minimum integer. **/ 

/* Example: */	

%	?- minList([2,3,10,11,141,1,4,2,2,0],X).					X = 141

/** Here we define the recursion and if the head of the list is less then the Acc we set it as Acc. **/
minAccList([Head|Tail], Acc, Min) :- Acc  > Head,	minAccList(Tail, Head, Min).
minAccList([Head|Tail], Acc, Min) :- Head >= Acc,	minAccList(Tail, Acc, Min).

/** End of recursion, Acc is min now **/
minAccList([], Acc, Acc).

/** Main function. We set as Acc the Head of the list. **/
minList([Head|Tail], Min) :- minAccList(Tail, Head, Min).