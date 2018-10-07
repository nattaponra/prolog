on_route(rome).
on_route(Place):-
                move(Place,Method,NewPlace),
                on_route(NewPlace).
move(gatwick,plane,rome).
move(home,taxi,halifax).
move(halifax,train,gatwick).


/** ลองทดสอบโดยการ query ว่า อยู่บ้านสามารถไป romeได้ไหม

[trace]  ?- on_route(home).
   Call: (8) on_route(home) ? creep
   Call: (9) move(home, _3986, _3988) ? creep
   Exit: (9) move(home, taxi, halifax) ? creep
   Call: (9) on_route(halifax) ? creep
   Call: (10) move(halifax, _3986, _3988) ? creep
   Exit: (10) move(halifax, train, gatwick) ? creep
   Call: (10) on_route(gatwick) ? creep
   Call: (11) move(gatwick, _3986, _3988) ? creep
   Exit: (11) move(gatwick, plane, rome) ? creep
   Call: (11) on_route(rome) ? creep
   Exit: (11) on_route(rome) ? creep
   Exit: (10) on_route(gatwick) ? creep
   Exit: (9) on_route(halifax) ? creep
   Exit: (8) on_route(home) ? creep
true  คำตอบคือได้ครับ
*/