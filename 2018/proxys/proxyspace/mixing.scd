

~mix.play;


~mix= ~beat + ~beat2 + ~beat3 + ~beat4;

~mix= ~beat + ~beat2;
~mix= ~beat2 + ~beat3;
~mix= ~beat4 + ~beat3;
~mix= ~beat + ~beat3;
~mix= ~beat + ~beat4;
~mix= ~beat2;

// tambien se puede mixear
// con control

~mix = {
	~beat.ar * 1
	+
	~beat2.ar * 1/8
	+
	~beat3.ar * 0.25
	+
	~beat4.ar * 1
};

~mix.fadeTime=16;


~mix.fadeTime=4;

~mix = {
	~beat.ar * 1
	+
	~beat2.ar * 0
	+
	~beat3.ar * 1
	+
	~beat4.ar * 1
};



// Se pueden procesar
~mix = {
	(CombC.ar(~beat.ar,4,1/3,2) * 10).tanh/4
	+
	FreeVerb.ar(~beat2.ar,1/2,2/3,1/2) * 0.25
	+
	(~beat3.ar*SinOsc.ar(Array.fill(9,{10000.rand})))!2 / 8
	+
	RLPF.ar(
		(
			~beat4.ar
			* 10
		).tanh,

		SinOsc.kr(3,0,500,600),
		0.1
	)/4
};
