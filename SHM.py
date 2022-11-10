import numpy as np

m = 1
g = -10
k = 100
l = 10
x = 10
v0 = 0
t = 0.02
zeta = 1.0
damp = zeta*2 * np.sqrt(m*k)
print(damp)

for i in range(100):
    hook = - (x-l)*k 
    damping = - v0*damp
    F = hook+damping
    print("F = "+str(hook)+" damping force = " + str( damping))
    print("total F = " + str(F))
    G = m*g
    a = (F+G) / m
    vf = v0+a*t
    x += 0.5*(vf+v0)*t + 0.5*a*t*t
    v0 = vf
    
    
print(x)