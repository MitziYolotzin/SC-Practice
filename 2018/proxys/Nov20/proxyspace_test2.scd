s.boot
s.scope

p=ProxySpace.push(s);
p.quant=4;

~test.play;
~test={SinOsc.ar(440)};
~test={WhiteNoise.ar(0.5)};
~test.fadeTime=5;

~tempo={2};

~ritmo.play;
~ritmo={Decay2.kr(Impulse.kr(~tempo.kr)) * ~test.ar};

~test2={WhiteNoise.ar(0.5)};

~ritmo2.play;
~ritmo2={Decay2.kr(Impulse.kr(1/~tempo.kr)) * ~test2.ar};

~test.clear(4)

/*
~tempo.quant=4
~ritmo.quant=4;
~ritmo2.quant=4;
