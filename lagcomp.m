kv=1/ess
d=conv([1 0 ],[2 1])
g=tf(n,d)
s=tf([1 0],1)
sys=s*g
sys=minreal(sys)
k=dcgain(kv/sys)
N=[K]
D=d
G=tf(N,D)
rpm=40
s=5
figure(1)
bode(N,D)
rpm=40
s=5
figure(1)
bode(N,D)
margin(N,D)
[mag,phase,w]=bode(N,D)
[gm,pm,wcg,wcp]=margin(mag,phase,w)
pm
ph=-180+rpm+s
w=100
for(i=0:0.1:w)
    [mag,phase]=bode(N,D,i)
    if phase<=ph
        freq=i
        m=mag
        break
    end
end
t=10/freq
m1=20*log(m)
m2=m1/20
b1=10^m2
nc=[t1]
dc=[(b1*t) 1]
[n0, d0]=series(N,D,nc,dc)
figure(2)
bode(n0,d0)
margin(n0,d0)
figure(3)
subplot(2,1,1)
step (no,do)
[n1,d1]=cloop(n0,d0,-1)
subplot(2,1,2)
step(n1,d1)
