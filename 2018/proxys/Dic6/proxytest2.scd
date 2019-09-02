s.boot;
s.scope;

p=ProxySpace.push(s);
p.quant=4;

TempoClock.default.tempo=166/120;
p.makeTempoClock(166/120);

~out = { Limiter.ar( ~mix.ar ) };
~out.play;
~mix = ~pul + ~sin + ~pul2 ;
~mix =  ~sin;
~mix.fadeTime=2;
~mix.fadeTime=0;

~pul={Pulse.ar(400, 0.5, Array.rand2(5, 30), 0.2 ).tanh /8 ! 2};
~pul2={Pulse.ar(400*Array.rand2(5, 30), 0.2, 0.2 ).tanh /8 ! 2};

~sin={SinOsc.ar(300*Array.rand(4, 0.2, 4) ).tanh/3 ! 2};

~mix.clear(2)

//~sin2={SinOsc.ar(3000*exprand(300,1600) ).tanh ! 2};
