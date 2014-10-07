-module(day2).
-export([getValue/2, totalPrice/1]).

getValue(K, L) -> lists:keyfind(K, 1, L).

totalPrice(Products) -> [ {Product, Quantity * Price} || {Product, Quantity, Price } <- Products ] .

