(
	SynthDef(\test,{
		var sig = EnvGen.kr(Env.perc,1) * SinOsc.ar;
		Out.ar(0,sig!2)
	}).store;

	s.boot;
	s.scope;
)

(
ProxySpace.clearAll;
p = ProxySpace.push(s);
p.quant=4;

TempoClock.default.tempo=166/120;
p.makeTempoClock(166/120);

~beat.play;
~beat = {
	WhiteNoise.ar * Decay2.kr( Impulse.kr( ~tempo.kr, 0.5 )/8 ! 2 )
}



Tdef(\playtest,{
	inf.do {
		Synth(\test);
		1.wait;
	}
}).play

)

// // quitar ~tempo.kr para ver cómo se desfasa
// ~beat = {
// 	WhiteNoise.ar * Decay2.kr( Impulse.kr( 1)/8 ! 2 )
// }
