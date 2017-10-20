/****************/
/*	VARIABLES	*/
/****************/

% For Prolog a variable is a string that starts with an uppercase letter or with a lowerscore.
% They can be used in rules.

% Facts:

fly(mosquito).
fly(bird).
walks(john).

% Rules:

has_wings(X) :- fly(X).

% Query:

%	? - has_wings(bird).				yes.
%	? - has_wings(mosquito).			yes.
%	? - has_wings(john).				no.

% Another interesting query:

%	? - fly(X).							X = mosquito

% Asking to a prolog for fly(X) it will answer with first element matching facts. 
% We can not prompt ; and it will search for a second element matching facts. In this way:

%	? - fly(X).							X = mosquito;
%										X = bird;
%										false.

% Note that when there are no matching elements it will answer false.