kd=0.3425
kp=0.262
  n=5
  d1=conv([1 0],[1 0.5])
  d=conv(d1,[1 1])
  g=tf(n,d)
  gc=tf([kd kp],1)
  g0=series(g,gc)
  figure(1)
  bode(g0)
  margin(g0)
  figure(2)
  step(g0)
  g1-feedback(g0,-1))
  figure(3)
  step(G1)
