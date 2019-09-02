s.boot
s.scope


p=ProxySpace.push(s);


~out.play;

~out = { Limiter.ar( ~mix.ar ) };


~mix = ~ruido

~ruido = { WhiteNoise.ar/4 };


~ringz = { Ringz.ar(Impulse.ar(1),300) };

// mixer "simple"
~mix = ~ruido + ~ringz
~mix = ~ringz
~mix = ~ruido


// mixer con control de amplitud
~mix = {
	(~ruido.ar * MouseX.kr)
	+
	(~ringz.ar * MouseY.kr)
};

