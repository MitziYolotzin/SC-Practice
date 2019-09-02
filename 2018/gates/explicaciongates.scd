

(
SynthDef(\lfp_1, {

	arg
	out=0,
	freq=50,
	gate=1;

  var sig, env;

	sig = LFPar.ar(freq*3,20,0.8) * SinOsc.ar(freq);

	env = EnvGen.kr(Env.adsr(0.05, 0.1, 2, 2),gate,doneAction:2);

	Out.ar(out, (Pan2.ar(sig * env) / 2));

}).add;
)
a=Synth(\lfp_1);
a.free;

(
SynthDef(\lfp_1_sinGate, {

	arg
	out=0,
	freq=50;

  var sig, env;

	sig = LFPar.ar(freq*3,20,0.8) * SinOsc.ar(freq);

	env = EnvGen.kr(Env.perc(0.05,4),doneAction:2);

	Out.ar(out, (Pan2.ar(sig * env) / 2));

}).add;

)

b = Synth(\lfp_1);
b.free;

(

Tdef(\lfp_1, {

	inf.do {

		10.do{|index|

			// envs sin gate se liberan solos
			y=Synth(\lfp_1_sinGate, [\freq, 90*(index+1)]);

			1.wait;



			// si usas envs con gate, debes hacer release
			if( z.isKindOf(Synth) ) {
				z.release;
			};

			z=Synth(\lfp_1, [\freq, 120*(index+1)]);

			1.wait;


		};

	}

});

Tdef(\lfp_1).play;

)

Tdef(\lfp_1).stop
