-module(day1).
-export([countWords/1, count/1, rangeTo/1]).
-export([reallyFirst/1, join/1]).


countWords([]) -> 0;
countWords( [ $\  | Rest ] ) -> countWords(Rest) ;
countWords( [ _, $\  | Rest] ) ->  1 + countWords(Rest) ;
countWords( [ _ | [] ] ) -> 1 ;
countWords( [ _ | Rest] ) -> countWords(Rest).

reallyFirst(one) -> one;
reallyFirst(two) -> two;
reallyFirst(three) -> three.

count(0) -> ok ;
count(N) -> count(N-1), io:format("~p\n",[N]). 

rangeTo(N) -> lists:reverse( rangeRek(N) ).
rangeRek(0) -> [];
rangeRek(N) -> [ N | rangeRek(N-1) ].

joiningString() -> ", ".

prependOne(X , []) -> integer_to_list(X);
prependOne(X , Acc) -> integer_to_list(X) ++ joiningString() ++ Acc. 

join(L) -> lists:foldr(fun prependOne/2, [], L).

