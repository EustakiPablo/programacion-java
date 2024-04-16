#ejercicio 1
#a
a = {1,2,3,4,5}
b = {"a","b","c","d","e"}
#b
a.update(b)
print(a)
#ejercicio 2
#a
x = {2,4,6,8}
y = {1,4,7,7}
#b
print(x&y)
#ejercicio 3
#a
p={"a","b","c"}
q={1,2,3}
print(p.difference(q))
#ejercicio 4
#a
c = {2,4,6,8}
d = {1,4,7,7}
#b
print(c.issuperset(d))
#ejercicio 5
#a
lista = [1,1,1,2,3,4,4,2,4,3,5]
#b
nuevaLista=set(lista)
print(nuevaLista)
#ejercicio 6
#a
e = {2,4,6,8}
f = {1,4,7,7}
g={"a","b","c"}
#b
set1 = e.union(f)
print(set1)
print(set1&g)
#ejercicio 7
#a
h = {2,4,6,8}
i = {1,4,7,7}
j={"a","b","c"}
k = {1,4,7,7}
#b
#update(), intersection() y difference()
#ejercicio 8
#a
l = {2,4,6,8}
m = {8,4,2,6}
#b
print(l.issubset(m))
#ejercicio 9
#a
n = {1,2,3,4,5,6,7}
#b
n.add(8)
n.discard(2)
print(n)
#ejercicio 10
#a
u={"a","b","c",1,2,3,4,5,6}
#b
v={"a",5}
print(v.issubset(u))