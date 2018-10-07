/**  
  ด้วยสถานะสุดท้าย (final state)
  ตำแหน่งที่ลิงอยู่: don't care
  ลิงยืนบนพื้นหรือกล่อง: don't care
  ตำแหน่งที่กล่องตั้งอยู่: don't care
  ลิงมีกล้วยหรือไม่:has
 */
canget(state(_,_,_,has)).


canget(S1) :- move(S1,M,S2), canget(S2).
move(state(middle,onbox,middle,hasnot), grasp,state(middle,onbox,middle,has)).
move(state(P,onfloor,P,H), climb, state(P,onbox,P,H)).
move(state(P1,onfloor,P1,H), push(P1,P2), state(P2,onfloor,P2,H)).
move(state(P1,onfloor,B,H), walk(P1,P2),  state(P2,onfloor,B,H)).


/** รันคำสั่ง catget() 
  ด้วยสถานะเริ่มต้น (initial state)
  ตำแหน่งที่ลิงอยู่:atdoor
  ลิงยืนบนพื้นหรือกล่อง:onfloor
  ตำแหน่งที่กล่องตั้งอยู่:atwindow
  ลิงมีกล้วยหรือไม่:hasnot
 */

run :- canget(state(atdoor,onfloor,atwindow,hasnot)).