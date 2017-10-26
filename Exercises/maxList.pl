/*****************************/
/* MAXIMUM INTEGER OF A LIST */
/*****************************/

/** Given a list of integers program will find the maximum integer. **/ 

/* Example: */	

%	?- maxList([2,3,10,11,141,1,4,2,2,0],X).					X = 141

/** Here we define the recursion and if the head of the list is greather then the Acc we set it as Acc. **/
maxAccList([Head|Tail], Acc, Max) :- Head > Acc,	maxAccList(Tail, Head, Max).
maxAccList([Head|Tail], Acc, Max) :- Acc >= Head,	maxAccList(Tail, Acc, Max).

/** End of recursion, Acc is Max now **/
maxAccList([], Acc, Acc).

/** Main function. We set as Acc the Head of the list. **/
maxList([Head|Tail], Max) :- maxAccList(Tail, Head, Max).