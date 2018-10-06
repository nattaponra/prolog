
## Install Prolog
```
git clone https://github.com/SWI-Prolog/swipl-devel.git
cd swipl-devel
./prepare
```

## A first look at Prolog
รัน Prolog
```
$ swipl
```

ให้ socrates เป็นมนุษย์ (fact)
```
man(socrates).
```

X ต้องตาย ถ้า X เป็นมนุษย์ (clause)
```
mortal(X) :- man(X).
```

Ctrl + D

รันคำสั่งนี้เพื่อถามว่า socrates ต้องตายหรือไม่ 
```
| ?- mortal(socrates).
```
โปรแกรมก็จะตอบเป็น True

