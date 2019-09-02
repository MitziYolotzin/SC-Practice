
~trigger.quant=4;
~trigger={ Impulse.kr(1) };

~mix.play;
~mix=~new;

~decay={Decay2.kr(~trigger.kr)};

~new={WhiteNoise.ar*~decay.kr};
