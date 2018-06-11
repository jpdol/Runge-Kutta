# Runge-Kutta
## Implementação do Método de Runge-Kutta de Ordem 4 para solução numérica de Equações Diferenciais Ordinárias de 1a Ordem


Seja um Problema do Valor Inicial da seguinte forma:
  
                                Y' = f(X,Y) ;  Y(Xo)= Yo


Então o método Runge-Kutta de Ordem 4 para este problema é dado pelas seguintes equações:
                                     
                                     
                                Yn+1 = Yn + (h/6)*(k1 + 2(k2 + k3) + k4)
                                      
                                Xn+1 = Xn + h
                                     
onde:                                     
                                     
                                k1 = f(Xn, Yn)
                                        
                                k2 = f(Xn + (h/2), Yn + (h/2)*k1)
                                        
                                k3 = f(Xn + (h/2), Yn + (h/2)*k2)
                                        
                                k4 = f(Xn + h, Yn + h*k3)
                                     

sendo:

                                n = 1, 2, 3, ...
                                
Então, o próximo valor (Yn+1) é determinado pelo valor atual (Yn) somado com o produto do tamanho do intervalo (h).
O intervalo (h) representa a distância de uma abscissa para outra, portanto quanto menor seu valor, maior sua precisão. 
