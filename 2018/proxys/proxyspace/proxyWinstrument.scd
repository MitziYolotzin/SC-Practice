p=ProxySpace.push(s);
p.quant=4;

t=TempoClock.default;
p.makeTempoClock(t);

// ~mix.play;

~mix = ~sonido;



~sonido[0] = { arg speed=1; Pulse.ar( ~tempo.kr * speed ) };

~sonido[1] = \filter -> {
	arg in, wet=0.5,room=0.5,damp=0.5;
	FreeVerb.ar(in,wet,room,damp)
};

~sonido[2] = \filter -> {
	arg in, freq=440, rq=1;
	(Resonz.ar(in,freq,rq)*5).tanh
};



~mix.quant=1;
~mix.play;

i = INSTRUMENT();

i[\sonido] = Proxy( ~sonido );
i[\sonido].seq(\speed,0,"1   4  8");
i[\sonido].seq(\speed,1,"1 2 0.5");

i[\sonido].seq(\wet,0,"0.5   0 1 ", [\speed,1/4]);
i[\sonido].seq(\room,0,"0.5   0 1 ", [\speed,1/2]);
i[\sonido].seq(\damp,0,"0.5   0  1  ", [\speed,1]);

i[\sonido].seq(\freq,0,"100   400 1000 ", [\speed,1/2]);
i[\sonido].seq(\rq,0,"1   0.5 0.1 ", [\speed,2]);




i[\kick] = SynthPlayer( \kick , \kickGabber );
i[\kick].seq(\trigger,0,"1");
// i[\kick].rm(\trigger,0);
i[\kick].speed=2;



i[\hh] = SynthPlayer( \hh , \hh2 );

i[\hh].seq(
	\trigger,0,
	"1 0.8",
	[\speed,4]
);
