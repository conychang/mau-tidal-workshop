# DAY4｜シンセサイザーを扱う

### SuperDirtにデフォルトで入っているシンセサイザーをいじってみましょう。

実行できるコードを集めました: [ここからダウンロード](https://drive.google.com/file/d/1bBsIE8AF7fvwQfcCSRWLB-v5wCl0vm4A/view?usp=sharing)

デフォルトのシンセに共通のパラメーター

`sustain`: サステイン, `freq`: 周波数, `pan`: パン, `octave`: オクターブ, `gain`: 音量


***

### Supersquare

独自パラメータ: `voice`, `decay`, `accelerate`, `semitone`, `resonance`, `lfo`, `rate`, `pitch1`

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

#### ここで出てくるいろいろなパラメータはどういう意味を持つのか

シンセサイザーの仕組みを学ぶ: https://learningsynths.ableton.com/ja

### 減算合成とは？

[減算合成（げんざんごうせい、英: subtractive synthesis）](https://ja.wikipedia.org/wiki/%E6%B8%9B%E7%AE%97%E6%96%B9%E5%BC%8F)は原音にあたる単一の複合音から特定成分をフィルタリングする（減算する）ことで音響信号を合成する手法。(wikipedia)

シンセサイザーのメジャーな合成方式です。

- [korg funk 5](https://www.youtube.com/watch?v=hUT01p-C2xo) by Aphex Twin
  - [monologue](https://www.korg.com/jp/products/synthesizers/monologue/) (KORG)
  - [寿司ソング](https://open.spotify.com/track/2hN7qjquxMcmS80rQ5PY1E?si=e379952db67446c2)


- TB-303 (Roland) - ベースシンセ
- TR-808 (Roland) - ドラムマシン
  - [LIVE AT TAICO, JAPAN](https://soundcloud.com/bibio/live-at-taico-japan-2017-entire-set?si=1d733cbbe505402eb10be56f218ec49a&utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing#t=41%3A52) 40:00 by bibio
  - [Acperience 7](https://www.youtube.com/watch?v=tynRgjl5uwg) by Hardfloor
  - [808 Cowbells Playlist](https://open.spotify.com/playlist/5bPZzW92RiGsIbrLSOIXZv?si=2f672306081d4079)

### ドラムシンセもあります

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

独自パラメータ: `voice`, `decay`, `accelerate`

```
d1 $ n 1
  # s "supergong"
  # decay 1
  # voice 0
  # accelerate 0
```

### 加算合成とは？

[アディティブ・シンセシス](https://ja.wikipedia.org/wiki/%E3%82%A2%E3%83%87%E3%82%A3%E3%83%86%E3%82%A3%E3%83%96%E3%83%BB%E3%82%B7%E3%83%B3%E3%82%BB%E3%82%B7%E3%82%B9)とは、原音にあたる複数種の純音を重ね合わせる（加算する）ことで音響信号を合成する手法。(wikipedia)

- [ハモンドオルガン](https://www.youtube.com/watch?v=T_SXbrkwWEc)
  - ハモンドオルガンの[レスリースピーカー](https://www.youtube.com/watch?v=-47tt-BTqJY)


-  [Unauthorized Mayor of B Flat](https://no-schools.bandcamp.com/track/unauthorized-mayor-of-b-flat) by Active Recovering Music (Okura Masahiko)

つまり…パイプオルガンも加算合成シンセサイザーと言える！
- [Pipe Inversions (for Kirnberger III)](https://kalimalone.bandcamp.com/track/pipe-inversions-for-kirnberger-iii) by Kali Malone

***

### Superpiano

独自パラメータ: `velocity`, `detune`

```
d1
  $ n 1
  # s "superpiano"
  # velocity 1
  # detune 0.1
```

### 物理モデリング

[物理モデル音源（ぶつりモデルおんげん）](https://ja.wikipedia.org/wiki/%E7%89%A9%E7%90%86%E3%83%A2%E3%83%87%E3%83%AB%E9%9F%B3%E6%BA%90)は、デジタル信号処理(DSP)を利用して、生楽器の発音構造や共鳴構造をコンピュータ上でいかに振動・共振するかをリアルタイムに演算し、音色を仮想的に合成（シミュレート）して音を出す方式。生楽器だけでなく、実在しない楽器も作成することも可能である。

- [Akihiro Kubota (Algorave Tokyo) - Algosix Live Stream Performance - March 17, 2018 08:00 UTC](https://www.youtube.com/watch?v=dxqYA_JbvG8)

- [Brass Cultures](https://tommudd.bandcamp.com/album/brass-cultures) by Tom Mudd

- [Good Vibrations badly arranged for solo guitar simulation](https://superpang.bandcamp.com/track/good-vibrations-badly-arranged-for-solo-guitar-simulation) by Tom Mudd


***

### Superfm

6オペレータのFMシンセサイザー。

基本的なパラメータ: `voice`, `lfofreq`, `lfodepth`

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

### フリクエンシーモジュレーション

[FM音源（エフエムおんげん）](https://ja.wikipedia.org/wiki/FM%E9%9F%B3%E6%BA%90)は、Frequency Modulation（周波数変調）を応用する音色合成方式を用いた音源。

（中略）

基本波形の発振・変調をおこなう合成器（オペレータと呼ばれる）を複数組み合わせて音色を合成する。数学的には発振機構が二重振り子のような非線形演算に基づいているため、演奏に合わせて波形生成のパラメーターを変化させることにより倍音成分が大きく変化し、音色を劇的に変化させることが可能である。しかし、その挙動はカオスであるため、パラメータの変動による倍音変化は予測し難い。

それまでの減算方式のアナログシンセサイザーにはなかった複雑な倍音成分を持つ音色、特にエレクトリックピアノやブラスのほか、非整数次倍音を含むベル系の金属的な音色の再現が特長とされる。FM音源が奏でるきらびやかで金属的な響きは1980年代のポピュラー音楽に多く取り入れられ、当時を象徴するサウンドとも評されている。

FM音源の音色の定義に要するパラメーターはせいぜい数十バイト程度であり、メモリーの使用量を筆頭として要求される計算資源が比較的少なく、パーソナルコンピュータ、家庭用ゲーム機、携帯電話などに広く利用されていた。（wikipedia）

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Phase-modulation.gif/500px-Phase-modulation.gif" width=100%><br>

- [Multistability](https://www.youtube.com/watch?v=PHIGHpWKcw0) by Mark Fell

- [ATAXIA](https://riantreanor.bandcamp.com/album/ataxia) by Rian Treanor

- [Budding Flowers](https://yebisu303.bandcamp.com/track/budding-flowers) by Yebisu303

***

#### ちなみに…

他にもたくさんの合成方式があります。

- グラニュラーシンセシス
  - [Aokigahara](https://open.spotify.com/track/6TIsjyOWRgvO3hLjABBwKr?si=a2941b22244b42a7) by Sigha


- パルサーシンセシス
  - [⑥](https://dingndents.bandcamp.com/album/--3) by Ryu Hankil
  - [Pulsar.scramble](https://pwgen20.bandcamp.com/album/pulsar-scramble) コンピレーション


***


### SuperDirtにはその他にももとから入っているシンセがあります

いろいろなシンセを鳴らしてみてください
参照: https://tidalcycles.org/docs/patternlib/tutorials/synthesizers


***

### おまけ（音楽的に考える）: スケール、コードとアルペジオ

[スケールやコードとアルペジオ](http://tidalcycles.org/docs/reference/harmony_melody/)をつかって演奏することもできます。ピアノやギターを弾く人はとっつきやすいかもしれません。ちなみに岡はシェフィールドで、パソコンで弾き語りをしていた人を見たことがあります。

#### スケール

```
d1
  $ n (scale "majPent" "0 .. 7")
  # s "superpiano" #sustain 0.95
```

用意されているリスト

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

#### 音名の書き方



```
c d e f g a b -- ドレミファソラシ
```

シャープがつくときは`s`、フラットがつくときは`f`を付加します。

```
cs -- ドのシャープ
cb -- ドのフラット
```

#### コード

```
d1 $ n "c'maj"
  # s "supermandolin"
  # legato 2
```

用意されているリスト

```
major maj aug plus sharp5 six 6 sixNine six9 sixby9 6by9 major7 maj7 major9 maj9 add9 major11 maj11 add11 major13 maj13
add13 dom7 dom9 dom11 dom13 sevenFlat5 7f5 sevenSharp5 7s5 sevenFlat9 7f9 nine eleven 11 thirteen 13 minor min diminish
ed dim minorSharp5 msharp5 mS5 minor6 min6 m6 minorSixNine minor69 min69 minSixNine m69 mSixNine m6by9 minor7flat5
min7flat5 m7flat5 m7f5 minor7 min7 m7 minor7sharp5 min7sharp5 m7sharp5 m7s5 minor7flat9 min7flat9 m7flat9 m7f9 minor7sharp9
min7sharp9 m7sharp9 m7s9 diminished7 dim7 minor9 min9 m9 minor11 min11 m11 minor13 min13 m13 one 1 five 5 sus2 sus4 seven
Sus2 7sus2 sevenSus4 7sus4 nineSus4 ninesus4 9sus4 sevenFlat10 7f10 nineSharp5 9s5 m9sharp5 m9s5 sevenSharp5flat9 7s5f9
m7sharp5flat9 elevenSharp 11s m11sharp m11s
```


#### アルペジオ

```
d1 $ arp "thumbup" $ n "c'maj"
  # sound "supermandolin"
  # legato 2
```

用意されている動きリスト

```
up down updown downup up&down down&up converge
diverge disconverge pinkyup pinkyupdown
thumbup thumbupdown
```
