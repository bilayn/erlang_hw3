%%% 03: Разделить строку на части, с явным указанием разделителя:

-module(hw03).
-export([split/2]).

split(Bin, Divider) ->
	DividerBin = list_to_binary(Divider),
	DividerSize = byte_size(DividerBin),
	split(Bin,Bin, 0, DividerBin, DividerSize).

split(Rest, Bin, C, DividerBin, DividerSize) ->
    case Rest of
        <<DividerBin:DividerSize/binary,T/binary>> ->            
            erlang:display("case 1"),
            <<W:C/binary, _/binary>> = Bin,
            erlang:display(W),
            erlang:display(T),
            [W|split(T,T, 0, DividerBin, DividerSize)];
        <<_:DividerSize/binary>> -> 
            [Bin];
        _ -> 
            <<_:1/binary,TRest/binary>> = Rest,
            split(TRest,Bin, C+1, DividerBin, DividerSize)
    end.