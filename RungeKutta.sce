clear;
clc;
//Implementaçao Algorítmica do Método de Runge-Kutta de Ordem 4


// Inclinacao 1 -> k1
function k1 = func_k1(x,y)
    k1=f(x,y);
endfunction

// Inclinacao 2 -> k2
function k2 = func_k2(x,y,h,k1)
    k2=f(x + 0.5*h, y + 0.5*h*k1);
endfunction

// Inclinacao 3 -> k3
function k3 = func_k3(x,y,h,k2)
    k3=f(x + 0.5*h, y + 0.5*h*k2);
endfunction

// Inclinacao 4 -> k4
function k4 = func_k4(x,y,h,k3)
    k4=f(x+h, y+h*k3);
endfunction

//Runge-Kutta de 4a Ordem
function z = rungeKutta(y,h,k1,k2,k3,k4)
    z = y + (h/6)*(k1+2*(k2+k3)+k4); //onde z = Yn+1
endfunction


mprintf("Informe a funcao:")

func = input(" y`=", "string");
func = 'z='+ func;
deff('z=f(x,y)', func);

mprintf("Informe o valor de Xo:");
entrada=input("","string");
x=msscanf(entrada,"%lg");

mprintf("Informe o valor de Yo:");
entrada=input("","string");
y=msscanf(entrada,"%lg");

mprintf("Informe o valor de h:")
entrada=input("","string");
h=msscanf(entrada,"%lg");

mprintf("Informe a abscissa cuja ordenada se deseja saber");
entrada=input("","string");
xn=msscanf(entrada,"%lg");

while (x < xn)
    k1 = func_k1(x,y);
    k2 = func_k2(x,y,h,k1);
    k3 = func_k3(x,y,h,k2);
    k4 = func_k4(x,y,h,k3)
    y = rungeKutta(y,h,k1,k2,k3,k4);
    x = x + h
end

mprintf("%.10f", y);
