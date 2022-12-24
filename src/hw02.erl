%%% 02: Разделить строку на слова

-module(hw02).
-export([words/1]).

words(Bin) ->
    words(Bin,Bin, 0).

words(<<>>, Bin, C) -> 
    <<W:C/binary,_/binary>> = Bin, 
    [W];
words(<<" ",Rest/binary>>, Bin, C) -> 
    <<W:C/binary,_/binary>> = Bin,
    [W|words(Rest,Rest, 0)];
words(<<_,Rest/binary>>, Bin, C) -> words(Rest, Bin, C+1).