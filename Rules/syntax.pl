%%%%%%%%%%%%%%%%%%%%%
%	PROLOG SYNTAX	%
%%%%%%%%%%%%%%%%%%%%%

% We can divide elements of prolog in this categories:
% -	Atoms
% - Numbers
% - Variables
% - Complex Terms

%%%%%%%%%%%%%
%	ATOM	%
%%%%%%%%%%%%%

% There are 3 types of atoms:
% 1.	Is a string that begins with a lowercase letter and composed by 
%		uppercase letters, lowercase letters, digits, underscore character.
% 2.	Is a sequence of charcters enclosed in single quotes. It can contains also special chars and spaces.
% 3.	Is a string of special chars, and some of them has a pre-defined meaning, for example strings like :-

%%%%%%%%%%%%%%%%%%%%%
%	   NUMBERS		%
%%%%%%%%%%%%%%%%%%%%%

% Prolog supports integers and floating point numbers, but this one are less important in prolog.
% Intergers are more important because they're used to manipulating lists.

%%%%%%%%%%%%%%%%%
%	VARIABLES	%
%%%%%%%%%%%%%%%%%

% Is a string that begins with an undescore or with an uppercase letter and is composed by:
% - lowercase letters
% - uppercase letters
% - underscores characters
%
% There's a special variable that is _ (underscore). It's called anoymous variable.

%%%%%%%%%%%%%%%%%%%%%
%	COMPLEX TERMS	%
%%%%%%%%%%%%%%%%%%%%%

% Atoms, number and variables are needed to create complex terms. Complex terms are functions that are composed by
% a functor (function name) and one or more arguments enclosed by simple parentheses separated by comas.
%
% Arguments can be atoms, number, variables and also complex terms.
%
% The number of argumens that a complex terms need is called arity. This is important because prolog give the possibility to 
% create more complex terms with the same functor but different arity. This property is called overload.