s.boot;
s.scope;


p=ProxySpace.push(s);

~senal.play;
~senal = { Impulse.ar(1) }

// es lo mismo que:
~senal[0] = { Impulse.ar(1) }

// añadir un filtro (un reverb)
~senal[1] = \filter -> {|in| FreeVerb.ar(in,2/3,2/3,2/3) };


// añadir otro filtro (un RLPF)
~senal[2] = \filter -> {|in| RLPF.ar(in,300,0.01) };


//reescribir
~senal = { Impulse.ar(1) }

~senal.clear(2)
