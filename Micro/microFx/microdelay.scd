Server.killAll;
s.boot;
s.scope;
s.meter;

(
SynthDef(\mic, {
	arg in=0, out=0, mix=0.5, decay=0.2, amp=1;
	var sig, rmod, dist, delay, xf;
	sig = SoundIn.ar(0);
	delay = CombL.ar(sig,0.5, decay);
	rmod = sig * SinOsc.ar(500) ;
	//delay = CombL.ar(sig, 0.5, SinOsc.kr([0,32,0,3]),exprange(0,1,0,4), decay);
	//xf = XFade2.ar (sig, LFTri.kr(0.1));
	Out.ar(out, Pan2.ar(sig) );
	//(sig + rmod) * 0.5;
}).add;
)
m=Synth(\mic);
x.free;
