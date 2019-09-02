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
	BPF.ar(WhiteNoise.ar,[100,2000,3000],0.1)
	/2
	! 2
};
)







~beat2.quant=4;
~beat2.play;
~beat2={0};

(
~beat2={
	Pulse.ar( LFPulse.kr(1/8,0,3/4,3,1),0.5 ) /4

};
)




~beat3.quant=4;
~beat3.play;
~beat3={0};

(

~tiempos = { 1*[2,3,4,5,7] };

~tiempos = { 1/[2,3,4,5,7] };

~beat3={
	Decay2.ar(Impulse.ar( ~tiempos.kr ))
	*
	BPF.ar(WhiteNoise.ar,[200,1000,8000],0.1)

	! 2
};
)


//


~beat4.quant=4;
~beat4.play;
~beat4={0};

(

~fases={1/[2,3,4,5,7]};
~fases={[0,1/2,3/4,7/8]};

~beat4={
	Mix.new(
		Decay2.ar(
			Impulse.ar(1/2,~fases.kr)
			,1,3
		)
		*
		BPF.ar(WhiteNoise.ar,[2000,13000,20000],0.1)
	)
	! 2
};
)
