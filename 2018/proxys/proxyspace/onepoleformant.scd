Formant
Stepper
Splay
DynKlank
Crackle

{ Crackle.ar(1.95, 0.5) }.play;

// modulate chaos parameter
{ Crackle.ar(Line.kr(1.0, 2.0, 3), 0.5, 0.5) }.play;

// modulate fundamental frequency, formant freq stays constant
{ Formant.ar(XLine.kr(400,1000, 8), 2000, 800, 0.125) }.play

// modulate formant frequency, fundamental freq stays constant
{ Formant.ar(200, XLine.kr(400, 4000, 8), 200, 0.125) }.play

// modulate width frequency, other freqs stay constant
{ Formant.ar(400, 2000, XLine.kr(800, 8000, 8), 0.125) }.play

{ OnePole.ar(WhiteNoise.ar(0.5), 0.95) }.play

{ OnePole.ar(WhiteNoise.ar(0.5), -0.95) }.play

{ OnePole.ar(WhiteNoise.ar(0.5), Line.kr(-0.99, 0.99, 10)) }.play

{ OneZero.ar(WhiteNoise.ar(0.5), 0.5) }.play

{ OneZero.ar(WhiteNoise.ar(0.5), -0.5) }.play
{WhiteNoise.ar(0.5)}.play;
{ OneZero.ar(WhiteNoise.ar(0.5), Line.kr(-0.5, 0.5, 10)) }.play
////

{ LFSaw.ar(40,0,1) * Decay2.kr(Dust2.kr(1/3,1,0)) ! 2 }.play;


{ SinOsc.ar(440,0.5,1,0.1) * LFGauss.ar(0.1, 0.12) ! 2 }.play;


{ SinOsc.ar(LFNoise0.kr(2,600, 900)) * Decay2.kr(Impulse.kr(1)+Dust.kr(2)) ! 2 }.play;


{ SinOsc.ar(SinOsc.ar( MouseButton.kr(60,1000,0.2),0).linlin(-1,1,100,600)) ! 2 }.play
