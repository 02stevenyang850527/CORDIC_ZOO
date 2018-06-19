# CORDIC_ZOO
MATALB function of all modes of CORDIC. All functions have test script, respectively.

### Rotation mode:
theta: rotation angle  
u    : input complex vector  
n    : # of iteration

1. Circular mode: v is the output vector after rotation
```
v = myCordicRotate0(theta, u ,niters)
```

2. Linear mode: v = imag(u) + real(u)*theta
```
v = myCordicRotate1(theta, u ,niters)
```

3. Hyperbolic and Rotation mode:
```
v = myCordicRotate2(theta, u ,niters)
```

### Vectoring mode:
u    : input complex vector  
n    : # of iteration  

1. Circular mode: real(v) = magnitude of u; imag(v) = total rotation angles
```
v = myCordicVector0(u ,niters)
```

2. Linear mode: v = imag(u) + real(u)*theta
```
v = myCordicVector1(u ,niters)
```

3. Hyperbolic and Rotation mode: 
```
v = myCordicVector2(u ,niters)
```