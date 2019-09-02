s.boot;
s.scope;


p=ProxySpace.push(s);
p.quant=4


~muchosProxies.play;
~muchosProxies={
	Ringz.ar(Impulse.ar(1),100)
}


// es lo mismo que:
~muchosProxies[0]={
	Ringz.ar(Impulse.ar(1),100)
};


~muchosProxies[1]={
	Ringz.ar(Impulse.ar(2),200)
};

~muchosProxies[2]={
	Ringz.ar(Impulse.ar(4),800)/8
};


// apagar todos
~muchosProxies.stop;
~muchosProxies.play;


// apagar solo uno (el segundo)
~muchosProxies[1]={ 0 };

// reasignar el segundo:
~muchosProxies[1]={
	Ringz.ar(Impulse.ar(8),200)/8
};



// resetear el proxy,
// sin usar indice
// se pierden los proxeis con indices mayores a 0
~muchosProxies={
	Ringz.ar(Impulse.ar(1),100)
}
