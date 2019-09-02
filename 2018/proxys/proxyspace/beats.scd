s.boot;
s.scope;


p=ProxySpace.push(s);

~beat.quant=4;
~beat.play;
~beat={0};

(
~beat={
	Decay2.ar(Impulse.ar(1,LFPulse.kr(1/8,0,1/2,1/2,0)))
	*
	BPF.ar(WhiteNoise.ar,[1000,3000,5000],0.1)
	/2
	! 2
};
)


~beat2.quant=4;
~beat2.play;
~beat2={0};

(
~beat2={
	Pulse.ar( LFPulse.kr(1/4,0,3/4,3,1),0.5 ) /4
};
)


~beat3.quant=4;
~beat3.play;
~beat3={0};

(

~tiempos = { 1*[2,3,4] };

~tiempos = { 1/[2,3,4] };

~beat3={
	Decay2.ar(Impulse.ar( ~tiempos.kr ))
	*
	BPF.ar(WhiteNoise.ar,[400,1600,8000],0.1)

	! 2
};
)


// variar la fase:


~beat4.quant=4;
~beat4={0};
(

~fases={1/[2,3,4]};
~fases={[0,1/2,7/8]};

~beat4={
	Mix.new(
		Decay2.ar(
			Impulse.ar(1/4,~fases.kr)
			,1,3
		)
		*
		BPF.ar(WhiteNoise.ar,[300,3000,15000],0.1)
	)
	! 2
};
)
///////
~down.fadeTime=3;
~down={|amp=1| (RLPF.ar(WhiteNoise.ar,[60,63,80],0.01)*3.3).tanh*amp!2 /2 }
~down={|amp=1| (RLPF.ar(WhiteNoise.ar,[90,65,180],0.01)*3.3).tanh*amp!2 }
~down.play;
~down={0};
~mix= ~down;
~mix={0};
///////
~mix = ~sin;
~sin.play;
~sin={0};
~sin={SinOsc.ar(([36, 32, 30].midicps)*Array.rand(4, 0.2, 4) ,0,1).tanh/12 ! 2};
~sin={SinOsc.ar(38.midicps*Array.rand(4, 0.2, 4) ,0,1).tanh/12 ! 2};
~sin={SinOsc.ar(40.midicps*Array.rand(4, 0.2, 4) ,0,1).tanh/12 ! 2};
~sin={SinOsc.ar(42.midicps*Array.rand(4, 0.2, 4) ,0,1).tanh/12 ! 2};
~sin={SinOsc.ar(44.midicps*Array.rand(4, 0.2, 4) ,0,1).tanh/12 ! 2};
~sin={SinOsc.ar(46.midicps*Array.rand(4, 0.2, 4) ,0,1).tanh/12 ! 2};
//tone2
