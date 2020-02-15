%%%-------------------------------------------------------------------
%%% @author vemce
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. февр. 2020 6:34
%%%-------------------------------------------------------------------
-module(main).
-include_lib("eunit/include/eunit.hrl").
-author("vemce").


swap([]) -> [];
swap([H1, H2 | T]) when H1 > H2 -> [H2 | swap([H1 | T])];
swap([H | T]) -> [H | swap(T)].

sort(X, L)  when L > 0 -> sort(swap(X), L - 1);
sort(X, L) -> X.
sort(X) -> sort(X, lists:flatlength(X)).


det_test() -> [

  ?assertEqual(swap([3,2,1]), [2,1,3]),
  ?assertEqual(swap([5,6,1]), [5,1,6]),
  ?assertEqual(swap([3,2,5]), [2,3,5]),

  ?assertEqual(sort([3,2,1]), [1,2,3]),
  ?assertEqual(sort([3,2,1,0,0]), [0,0,1,2,3]),
  ?assertEqual(sort([1,2,3]), [1,2,3]),
  ?assertEqual(sort([3,3,4]), [3,3,4]),
  ?assertEqual(sort([8,1,3,5]), [1,3,5,8]),
  ?assertEqual(sort([-100,-1000,-10000]), [-10000,-1000,-100])
].