/****************/
/*	CROSSWORDS  */
/****************/
	
% This prolog file solves a simple crosswords game with six italian words of 7 letters.
% Here you can find the crosswords structures:

%	   A   B   C
%	   _   _   _
%	 _|_|_|_|_|_|_
%	|_|_|_|_|_|_|_|  D
%	 _|_|_|_|_|_|_
%	|_|_|_|_|_|_|_|  E
%	 _|_|_|_|_|_|_
%	|_|_|_|_|_|_|_|  F
%	  |_|_|_|_|_|


% This is the words list:

word(astante,  a,s,t,a,n,t,e). 
word(astoria,  a,s,t,o,r,i,a). 
word(baratto,  b,a,r,a,t,t,o). 
word(cobalto,  c,o,b,a,l,t,o). 
word(pistola,  p,i,s,t,o,l,a). 
word(statale,  s,t,a,t,a,l,e).

% This is the crosswords definition. Anonymous variables are used when we don't need the content of the argument.

crosswords(A,B,C,D,E,F) :- 	word(A,	_, AD, _, AE, _, AF, _),
							word(B,	_, BD, _, BE, _, BF, _),
							word(C,	_, CD, _, CE, _, CF, _),
							word(D,	_, AD, _, BD, _, CD, _),
							word(E,	_, AE, _, BE, _, CE, _),
							word(F,	_, AF, _, BF, _, CF, _).

% Query:

% ?-	crosswords(A,B,C,D,E,F).		A = D, D = astante,
%										B = E, E = baratto,
%										C = F, F = statale

% We can type ; and ask to prolog for another solution, and he will prompt something like this:

%										A = astante,
%										B = cobalto,
%										C = pistola,
%										D = astoria,
%										E = baratto,
%										F = statale 		