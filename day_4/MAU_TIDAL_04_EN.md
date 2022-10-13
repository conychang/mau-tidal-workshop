# DAY4｜Working with synthesizers

### Let's try to play around with the synthesizer that is included by default in SuperDirt.

I've collected executable code: [download here](https://drive.google.com/file/d/1bBsIE8AF7fvwQfcCSRWLB-v5wCl0vm4A/view?usp=sharing)

Parameters common to all default synths: `sustain`, `freq`, `pan`, `octave`, `gain`


***

### Supersquare

Unique parameters: `voice`, `decay`, `accelerate`, `semitone`, `resonance`, `lfo`, `rate`, `pitch1`

```
d1 $ n 1
  # s "supersquare"
  # voice 0
  # decay 0
  # accelerate 0
  # semitone 12
  # resonance 0.2
  # lfo 1
  # rate 1
  # pitch1 1
```

#### What do the various parameters here mean?

Learn how synthesizers work: https://learningsynths.ableton.com/

### What is subtractive synthesis?

[Subtractive synthesis](https://en.wikipedia.org/wiki/Subtractive_synthesis)
is a method of sound synthesis in which partials of an audio signal (often one rich in harmonics) are attenuated by a filter to alter the timbre of the sound. While subtractive synthesis can be applied to any source audio signal, the sound most commonly associated with the technique is that of analog synthesizers of the 1960s and 1970s, in which the harmonics of simple waveforms such as sawtooth, pulse or square waves are attenuated with a voltage-controlled resonant low-pass filter. (wikipedia)

This is a major synthesizer synthesis method.

- [korg funk 5](https://www.youtube.com/watch?v=hUT01p-C2xo) by Aphex Twin
  - [monologue](https://www.korg.com/jp/products/synthesizers/monologue/) (KORG)
  - [Sushi Song](https://open.spotify.com/track/2hN7qjquxMcmS80rQ5PY1E?si=e379952db67446c2)


- TB-303 (Roland) - Bass synth
- TR-808 (Roland) - Drum machine
  - [LIVE AT TAICO, JAPAN](https://soundcloud.com/bibio/live-at-taico-japan-2017-entire-set?si=1d733cbbe505402eb10be56f218ec49a&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing#t=41%3A52) 40:00 by bibio
  - [Acperience 7](https://www.youtube.com/watch?v=tynRgjl5uwg) by Hardfloor
  - [808 Cowbells Playlist](https://open.spotify.com/playlist/5bPZzW92RiGsIbrLSOIXZv?si=2f672306081d4079)

### There is also drum synths

### soskick

```
p "kick"
  $ n 1
  # s "soskick"
  # midinote 0
  # pitch1 0
  # voice 1
  # pitch2 0
  # speed 0.3
  # freq 65
```

### superhat

```
p "hat"
  $ n 1
  # s "soskick"
  # decay 1
  # accelerate 0
```
***

### Supergong

Unique parameters: `voice`, `decay`, `accelerate`

```
d1 $ n 1
  # s "supergong"
  # decay 1
  # voice 0
  # accelerate 0
```

### What is additive synthesis?

[Additive synthesis](https://en.wikipedia.org/wiki/Additive_synthesis) is a sound synthesis technique that creates timbre by adding sine waves together.(wikipedia)

- [Hammond Organ](https://www.youtube.com/watch?v=T_SXbrkwWEc)
  - [Leslie Speaker](https://www.youtube.com/watch?v=-47tt-BTqJY)


-  [Unauthorized Mayor of B Flat](https://no-schools.bandcamp.com/track/unauthorized-mayor-of-b-flat) by Active Recovering Music (Okura Masahiko)

I mean... you could say the pipe organ is an additive synthesizer too!
- [Pipe Inversions (for Kirnberger III)](https://kalimalone.bandcamp.com/track/pipe-inversions-for-kirnberger-iii) by Kali Malone

***

### Superpiano

Unique parameters: `velocity`, `detune`

```
d1
  $ n 1
  # s "superpiano"
  # velocity 1
  # detune 0.1
```

### Physical modeling synthesis

[Physical modeling synthesis](https://en.wikipedia.org/wiki/Physical_modelling_synthesis) refers to sound synthesis methods in which the waveform of the sound to be generated is computed using a mathematical model, a set of equations and algorithms to simulate a physical source of sound, usually a musical instrument.

- [Akihiro Kubota (Algorave Tokyo) - Algosix Live Stream Performance - March 17, 2018 08:00 UTC](https://www.youtube.com/watch?v=dxqYA_JbvG8)

- [Brass Cultures](https://tommudd.bandcamp.com/album/brass-cultures) by Tom Mudd

- [Good Vibrations badly arranged for solo guitar simulation](https://superpang.bandcamp.com/track/good-vibrations-badly-arranged-for-solo-guitar-simulation) by Tom Mudd


***

### Superfm

FM synthesizer with 6 operators.

Basic parameters: `voice`, `lfofreq`, `lfodepth`

```
do
  let
    lfofreq = pF "lfofreq"
    lfodepth = pF "lfodepth"
  d1
    $ n 1
    # s "superfm"
    # voice 0
    # lfofreq 1
    # lfodepth 1
    # amp 0.5
```

### Frequency modulation synthesis

[FM synthesis](https://ja.wikipedia.org/wiki/FM%E9%9F%B3%E6%BA%90) is a sound generating method that uses a tone synthesis method that applies Frequency Modulation.

(~)

The tone is synthesized by combining multiple synthesizers (called operators) that oscillate and modulate the basic waveform. Mathematically, since the oscillation mechanism is based on nonlinear operations like a double pendulum, it is possible to drastically change the timbre by changing the parameters of waveform generation in accordance with the performance, resulting in a large change in the overtone component. However, because the behavior is chaotic, it is difficult to predict overtone changes due to parameter changes.

The FM sound source is characterized by its ability to reproduce tones with complex overtone components, especially electric piano, brass, and bell-like metallic tones with non-integer harmonics, which had not been possible with analog synthesizers using the subtractive method up to that time. It has been described as a symbolic sound of the 80's era.

The parameters required to define an FM tone are only a few dozen bytes at most, and the computing resources required, especially memory usage, are relatively small, so FM sound generators were widely used in personal computers, home game consoles, and cell phones. (wikipedia, translated)

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Phase-modulation.gif/500px-Phase-modulation.gif" width=100%><br>

- [Multistability](https://www.youtube.com/watch?v=PHIGHpWKcw0) by Mark Fell

- [ATAXIA](https://riantreanor.bandcamp.com/album/ataxia) by Rian Treanor

- [Budding Flowers](https://yebisu303.bandcamp.com/track/budding-flowers) by Yebisu303

***

#### By the way

There are many other synthesis methods.

- Granular synthesis
  - [Aokigahara](https://open.spotify.com/track/6TIsjyOWRgvO3hLjABBwKr?si=a2941b22244b42a7) by Sigha


- Pulsar synthesis
  - [⑥](https://dingndents.bandcamp.com/album/--3) by Ryu Hankil
  - [Pulsar.scramble](https://pwgen20.bandcamp.com/album/pulsar-scramble) Compilation Album


***


### SuperDirt also has other default synths

Try playing various synths!

See also: https://tidalcycles.org/docs/patternlib/tutorials/synthesizers


***

### Extra (Musically Thinking): Scales, Chords and Arpeggios

You can also play using [scales, chords and arpeggios](http://tidalcycles.org/docs/reference/harmony_melody/). Piano or guitar players may find it easy to get used to it. Btw, I once saw a person in Sheffield who was singing and playing along on a computer.

#### Scale

```
d1
  $ n (scale "majPent" "0 .. 7")
  # s "superpiano" #sustain 0.95
```

List of scales

```
minPent majPent ritusen egyptian kumai hirajoshi iwato chinese indian pelog
prometheus scriabin gong shang jiao zhi yu whole augmented augmented2 hexMajor7
hexDorian hexPhrygian hexSus hexMajor6 hexAeolian major ionian dorian phrygian
lydian mixolydian aeolian minor locrian harmonicMinor harmonicMajor melodicMinor
melodicMinorDesc melodicMajor bartok hindu todi purvi marva bhairav ahirbhairav
superLocrian romanianMinor hungarianMinor neapolitanMinor enigmatic spanish
leadingWhole lydianMinor neapolitanMajor locrianMajor diminished diminished2
chromatic
```

#### How to write names of musical notes



```
c d e f g a b
```

Add `s` for sharp and `f` for flat.

```
cs -- c sharp
cb -- c flat
```

#### Chords

```
d1 $ n "c'maj"
  # s "supermandolin"
  # legato 2
```

List of chords

```
major maj aug plus sharp5 six 6 sixNine six9 sixby9 6by9 major7 maj7 major9 maj9 add9 major11 maj11 add11 major13 maj13
add13 dom7 dom9 dom11 dom13 sevenFlat5 7f5 sevenSharp5 7s5 sevenFlat9 7f9 nine eleven 11 thirteen 13 minor min diminish
ed dim minorSharp5 msharp5 mS5 minor6 min6 m6 minorSixNine minor69 min69 minSixNine m69 mSixNine m6by9 minor7flat5
min7flat5 m7flat5 m7f5 minor7 min7 m7 minor7sharp5 min7sharp5 m7sharp5 m7s5 minor7flat9 min7flat9 m7flat9 m7f9 minor7sharp9
min7sharp9 m7sharp9 m7s9 diminished7 dim7 minor9 min9 m9 minor11 min11 m11 minor13 min13 m13 one 1 five 5 sus2 sus4 seven
Sus2 7sus2 sevenSus4 7sus4 nineSus4 ninesus4 9sus4 sevenFlat10 7f10 nineSharp5 9s5 m9sharp5 m9s5 sevenSharp5flat9 7s5f9
m7sharp5flat9 elevenSharp 11s m11sharp m11s
```


#### Arpeggios

```
d1 $ arp "thumbup" $ n "c'maj"
  # sound "supermandolin"
  # legato 2
```

List of arpeggio patterns

```
up down updown downup up&down down&up converge
diverge disconverge pinkyup pinkyupdown
thumbup thumbupdown
```
