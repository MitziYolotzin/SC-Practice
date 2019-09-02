s.boot;
s.scope:

p=ProxySpace.push(s)
p.makeTempoClock(1)

~out= {Limiter.ar (~mix.ar)};
~mix= ~rinw;
~out.play;

~rinw={Ringz.ar(WhiteNoise.ar(0.1)*~linekr.kr,0.5,0.01)  ! 2};

~linekr={Line.kr(-0.5,0.5,10)*rrand(50,100)};

~out.clear(3);
