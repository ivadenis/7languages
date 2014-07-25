-module(step2).
-export([countloop/1]).

countloop(Accum) ->
  receive
    done ->
      io:format("String ~p~n", [Accum]);
    next ->
      R = random:uniform(100000000000000000000000000000000000000000000000000000000000),
      S = string:substr(integer_to_list(R),1,1),
      % io:format("Received ~p~n", [Accum]),
      countloop(Accum ++ S)
  end.