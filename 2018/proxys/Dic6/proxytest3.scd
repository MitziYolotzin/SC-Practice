s.boot;
s.scope;

p=ProxySpace.push(s)
p.makeTempoClock(1)

~out={ Limiter.ar (~mix.ar) };
~out.play;
~mix= ~scar + ~tok + ~tam;
~mix= ~tok + ~tam;
~mix.fadeTime=3;
~tempo={3};

~scar={LFSaw.ar(300*Array.geom(15,0.1,1.16).mirror ,0,0.5) ! 2};
~scar={LFSaw.ar(~tempo.kr*300*Array.geom(15,0.1,1.16).mirror ,0,0.5) ! 2};

~tam={Impulse.ar(1) * 5 ! 2};

~tok= {SinOsc.ar(Rand(800, 300)*[1,1.1], 0, 0.1) ! 2};
