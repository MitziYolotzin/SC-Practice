p=ProxySpace.push(s)
p.quant=4;

~nze.play;
~nze={ LFPulse.ar(LFPulse.kr(3, 0.5, 0.3, 1500, 50), 0.5, 0.1 ) * WhiteNoise.ar / 2   ! 2 };

~nze={ LFPulse.ar(LFPulse.kr(3, 0.5, 0.3, 1500, 50), 0.5, 0.1 ) / 2   ! 2 };

~nze.clear(4)
