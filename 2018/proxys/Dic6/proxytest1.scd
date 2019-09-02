s.boot;
s.scope;

p=ProxySpace.push(s)
p.quant=4;

~quad.play;
~quad.fadeTime=3;
~quad={ LFPulse.ar(LFPulse.kr(3, 0.5, 0.3, 1500, 50), 0.5, 0.1 ) / 2   ! 2 };
~wnois.play;
~wnois={WhiteNoise.ar / 4 ! 2};
~wnois.fadeTime=3;

/*
~out = { Limiter.ar( ~mix.ar ) };
~out.play;
//~mix.play;
~mix = ~quad;
~mix = ~wnois;
~mix = ~quad * ~wnois;
*/

~quad.clear(2)
~wnois.clear(2)
