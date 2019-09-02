s.boot;
s.scope;


p=ProxySpace.push(s);

~out.play;

// limitador para no saturar

~out = { Limiter.ar( ~mix.ar ) };

~mix = ~miSonido + ~otroSonido;

~miSonido = { WhiteNoise.ar };
~otroSonido = { SinOsc.ar };

~mix.clear(4)
