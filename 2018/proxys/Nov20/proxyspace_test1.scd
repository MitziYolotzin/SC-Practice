s.boot

s.scope


p=ProxySpace.push(s);


~algo.play;
~algo={ RLPF.ar(WhiteNoise.ar,433,0.01) };
~algo={ Saw.ar(433) };
~algo.fadeTime=5;


a=NodeProxy.new;
a.play;
a.source={ RLPF.ar(WhiteNoise.ar,433,0.01) };
a.source={ Saw.ar(433) };
a.source={ 0 };

a.fadeTime=3;


/* Ndef(\ruido, { RLPF.ar(WhiteNoise.ar,433,0.01) });
Ndef(\ruido).play
Ndef(\ruido).stop
