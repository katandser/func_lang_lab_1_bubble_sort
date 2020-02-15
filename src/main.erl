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

%% API
%%-export([main/0]).

swap([]) -> [];
swap([H1, H2 | T]) when H1 > H2 -> [H2 | swap([H1 | T])];
swap([H | T]) -> [H | swap(T)].

%%main() ->
%%  erlang:display(swap([1,3,2,1,5,1,2,3])).

det_test() -> [

  ?assertEqual(swap([3,2,1]), [2,1,3]),
  ?assertEqual(swap([5,6,1]), [5,1,6]),
  ?assertEqual(swap([3,2,5]), [2,3,5])
].