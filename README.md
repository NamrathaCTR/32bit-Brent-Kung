# 32bit-Brent-Kung
A 32 bit brent kung Adder using verilog HDL
![Screenshot 2023-08-13 064422](https://github.com/NamrathaCTR/32bit-Brent-Kung/assets/137050660/b2ef87da-cd91-4e81-9b46-d8186dc53584)
Above Figure shows Generation of P and G values of 8 bit Brent kung adder.

As a first step, we calculate 1st order P,G values by  G = A.B and P = A ⊕ B

using 1st order P and G, we calculate 2nd order P,G as
![image](https://github.com/NamrathaCTR/32bit-Brent-Kung/assets/137050660/0bbcabe4-3683-4138-979d-05c0f161d616)

Like wise calculate till 6th order P,Gs. 

I have used arrays to store P,Gs. Every P,G of a order will have size half of its below order P,G size.

Carrys can be generated using this P,Gs. It can be noticed that  carries of odd order can only evaluated from its previous carry whereas even carries can be jumped from lower order carries.
