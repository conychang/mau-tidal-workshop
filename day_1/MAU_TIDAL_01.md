# DAY1｜イントロダクション

メディアテクノロジー実習でTidalCycles（ないしSuperCollider）のワークショップを担当する岡千穂です。<br>私は普段、即興的なオペレーションを含むコンピューターミュージック、または予め書かれたスコアのある実験的な音楽に親しんでいます。
- [EEMT Yasunao Tone - Clapping Piece (1963) Clapping piece
](https://www.youtube.com/watch?v=E_vTRE9N1Xs)
- [Instruction](https://drive.google.com/file/d/1xPiOaN7etlZH8bn6S1LUISLm4vTGM8DE/view?usp=sharing) *制限付きなので岡しかみれません。

練習や演奏でふと気になったこと、アイディアを、音楽の演奏とは言いづらい形で見せることもあります。例えばカーソルと自動化プログラム、ジェンガ、自転車とサインウェーブを使うイヴェント。

- [Nothtoやkndによる"公園コンサート"とは!?](https://togetter.com/li/184897) <br>2022年5月の公園コンサート(カトーマサカーとのコラボレーション)に[出ました](https://twitter.com/chihooka/status/1521855623008202753?s=20&t=KgyMGKaN5K4oewKIIR6mRQ)。自転車に乗りながらサインウェーブを演奏しました。公園の端は20Hz、もう片方の端では20000Hzのスイープです。20-20000Hzというのは、人間の可聴域です。<br>
- Playing Beuys’s Records - Concert https://vimeo.com/650992697
- [[No Bounds x Hope Works] Alpaca Session 1.1 - Chiho Oka](https://www.youtube.com/watch?v=4DTn2km1378)

[好きなBPMは160](https://soundcloud.com/crackmagazine/unfold-dj-fulltono-at-the-white-hotel-manchester)。好きな合成方式はフリケンシー・モジュレーション(FM)。
マテリアルショップ「カタルシスの岸辺」に参加中。[死蔵データグランプリ](https://katakishi.com/sdg/)、よろしくお願いします！

宍倉志信作品（パチスロ）の音担当中です！ -> https://pond.parco.jp/

たまに手伝っている北千住のBUoYが騒音苦情と闘っていて、これを受けて[すごい小さい音企画](https://buoy.or.jp/program/silent-music-party-1/)も行っています。
- https://note.com/buoy_tokyo/n/nc663f8c506dd
> 元々BUoYを利用いただく方々には事前に音量規制のルールや、建物前でのたむろや喫煙のご遠慮をお願いしていましたが、最近は特に音に関する問題が起こったため、音量には一層注意を払っています。音量を規制することは、場合によっては表現そのものへの規制に繋がる可能性もあり、以前よりも「音が大きい」ことについてスペースとして慎重に向き合っています。
>
> そこで今回、私たちは音量規制を一種の美的ルールと捉えることにし、今回の企画の開催へと繋げました。
> 単純に言えば「小さい音や弱い音を活かす企画を行う」ということになりますが、実際はこのことよりももっと複雑かもしれません。
> 普段からは小さすぎる、「不適切な音量」の聴取環境に立たされたとき、私たちは音をどのように出したり、聞いたりするようになるのでしょうか？
> 狭い音量レンジの中でものびのびと、多様な音楽のあり方を探ることができるはず…それが、「ダイナミクスレンジせまめ」派です！
- 参考: http://igallery.sakura.ne.jp/post5.html

以上のような作品制作や活動を、音を中心に身に着けてきた知識や技術を扱いながら、行っています。

大学の学部生のとき、[ライブコーディングで音とコンピュータのことをすごく勉強しながら旅などをし、Algoraveというパーティーを観察していたことから、](https://docs.google.com/document/d/1NHtM2UoC4gtNNszc5TizxmPcT3mXieXSpMOp_l0oECo/edit?usp=sharing)単に音、音響合成ソフトウェアに関する技術を学ぶだけではなく、または音楽を作曲したり演奏するということだけでなく、音楽を構成する音というメディア、それを生成するシステム、または、そういったシステムを鑑賞者はどう享受するのか、音楽を取り巻く文化圏について、深く考える第一歩になったと思っています。<br>今回は、この頃に参加したシェフィールドでのワークショップなどを思い出しながら、授業を構成していきたいと思います。

***

## Algoraveとは？
- https://algorave.com/about/
- https://github.com/Algorave/guidelines

> Algoraveは「条件式の繰り返しを絶え間なく送り出していくことで全面的ないしは全般的に特徴付けられた音」によって作られる。昨今では、エレクトロニック・ミュージックの殆どがソフトウェアを使って作られるが、ソフトウェアのアルゴリズムを作る人と音楽を作る人との間には人為的な障壁が存在する。アルゴリズムによる音楽やヴィジュアルを作るために設計されたIXI Lang、puredata、Max/MSP、SuperCollider、Extempore、Fluxus、TidalCycles、Gibber、Sonic Pi、FoxDotそしてCyrilといったシステムを使うことにより、その障壁は崩され、ミュージシャンは自分たちの音楽をアルゴリズムとして作曲し、そのまま生演奏することができる。このことには良い面と悪い面があるが、異なったアプローチは興味深い状況へと導いてくれる。
>
>これは何も新しい考え方ではない。しかしAlgoraveは音楽を作り、音楽で踊る人間に焦点を合わせている。Algoraveのミュージシャンたちは自らのソフトウェアがクリエイティヴであるように装ったりせず、自分たちの作る音楽に対する責任を引き受け、持っている手段は何でも使って、音楽を形作る。より重要なのは、ミュージシャンがしていることにではなく音楽に、そしてそれに合わせて踊る人に焦点を合わせることだ。Algoraveは過去のレイヴとは異質なもの、奇妙な、アルゴリズムによって処理された未来的なリズムとビートを受け入れ、取り入れる。ミュージシャンがこのことに意味をもたらし、本当にクリエイティヴなことを行なって素晴らしいパーティーにできるかどうかは、ダンスフロアにいる人たちの助けによるところが大きい。

***

## TidalCyclesを使った演奏など
### Yaxu (Alex McLean)
Alex McLean (Yaxu) live on DOMMUNE tokyo, 14 Nov 2018
https://www.youtube.com/watch?v=dIpzU71LAQQ
### Kindohm
Meme Booth https://conditionalrecs.bandcamp.com/album/meme-booth
YouTube https://www.youtube.com/watch?v=SZwhETSFiDw
### moxus
  https://www.youtube.com/watch?v=UDQtb6lyucY
### Beatrice Dillon
Workaround https://beatricedillon.bandcamp.com/album/workaround

### コラボレーションについて
#### [Troop](https://github.com/Qirky/Troop)を使ったセッション

Heavy Lifting x Graham Dunning - Live coding jam
https://www.youtube.com/watch?v=ca3J1cztnrc

#### [Estuary](https://estuary.mcmaster.ca/)を使ったセッション  
SuperContinent performance at NIME 2021
https://www.youtube.com/watch?v=7S0hFRui9GA

#### 演奏者同士の交流
Tidal Club Longest Night Marathon 2021: 21-23 December
https://night.tidalcycles.org/<br>
YouTubeのアーカイブ https://youtube.com/playlist?list=PLMBIpibV-wQIrjhBgxrwXTnoFpw-PWzNp

## TidalCyclesじゃないですが…
### Renick Bell
https://empty-lake.u-i-q.org/<br>
ライブセットの録音 https://renickbell.bandcamp.com/album/nucenosis-set-200425
### Rian Treanor
https://riantreanor.bandcamp.com/album/file-under-uk-metaplasm
### Mark Fell
https://www.youtube.com/watch?v=esBfmVQWlhI<br>
Mark Fell - Multistability  (full album) Raster-Noton https://www.youtube.com/watch?v=PHIGHpWKcw0

> Mark Fellは、DAWによるタイムラインベースの作曲は"Ordinary-Linear Time-Consciousness"に、Max/MSPによる視覚的なプログラミング環境は"Pattern-Cyclical Time-Consciousness"に近いと述べている
>
> [参考] https://note.com/n_peeq_t/n/n27a24987d4e6

### Warp Recordsから…
Autechre https://www.youtube.com/watch?v=BJ8XrQuYl6E

***

## 試しに触れてみよう
### Estuary: https://estuary.mcmaster.ca/<br>
ウェブ上にあるコラボレーションのためのプラットフォームですが、TidalCyclesのサブセット（簡単バージョン）MiniTidalがインストール不要で使えるので、簡単なチュートリアルに便利。

1. "SOLO MODE" を選択
2. どの枠でもよいので、どこか選んで、その枠のプルダウンメニューから"MiniTidal"を選択
3. 試しに、枠に`sound "bd"`と書き込みます。
4. "▶"ボタンを押下。音が鳴ります。
5. 音を止めたいときは、枠の中をすべて消してから"▶"を押すか、`-- sound "bd"`といったように、コードの手前に`-- `と書き込みます。この記号が文頭にある行は、Tidal上で、コードではなくコメントとして認識されるようになります。

***

### 基本の基本
    sound "bd"
Tidalでは、n秒あたりのサイクル cps(cycle per second) で時間を表現します。そのサイクルが何度も何度も繰り返される…というのが基本的な考え方です。試しに書き込んだ`sound "bd"`とは、つまり、1秒あたりのサイクルで"bd"というサンプルが1度発音される、ということが繰り返される、という意味。

    s "bd"
と省略することもできます。

では、以下はどのような条件を示すと思いますか？予想できたら、コードを書き換えて実行し、確かめてみましょう。

    s "bd bd"

    s "bd*2"

"bd"というサンプル以外は何があるでしょうか？参照できるのはここです: https://github.com/tidalcycles/Dirt-Samples<br>
各フォルダの中にいくつかサンプルが入っていて、それらを鳴らすことができます。Tidalではサンプルの入っているフォルダ名を参照します。気になるフォルダ名を見つけたら、コードを書き換えて実行してみましょう。また、以下はどのような音が鳴るか、確かめてみましょう。

    s "808"

    s "808:0"

    s "808" #n 0

    s "808:1"


もちろん異なるサンプルを混在させることもできます。

    s "808 bd cp"

    s "808*2 bd*3 cp*4"

    s "808:1*2 bd*3 cp:1*4"

パターンのステップを増やすと、全てを押し込めるように早く再生されるということに注意しましょう。どんなに多くのパターンを詰め込んだとしても、一つのサイクル内に収まるように再生されます。[*](https://github.com/tksupercollider/Meetup_SuperCollider_Studies/blob/master/TidalCycles-Guide-Japanese-Translation/Tidal-the-guide.md)<br>

以上のように`sound`は、サンプルを様々なパターンで鳴らす関数です。これと別の関数とを、`$`記号を使って組み合わせていきます。

    s "bd*6"

    fast 6 $ s "bd*6"

    slow 6 $ s "bd*6"

    jux (fast 6) $ s "bd*6"

    every 4 (fast 6) $ s "bd*6"

    palindrome $ s "arpy:0 arpy:1 arpy:2 arpy:3"

    stack [s "bd*4", s "arpy*3", s "hh*5"]

`#`を使うと、オーディオエフェクトを接続することができます。

    stack [s "bd*4", s "arpy*3", s "hh*5"] #note "1 3 5"

    stack [s "bd*4", s "arpy*3", s "hh*5"] #n (irand 8)

    stack [s "bd*4", s "arpy*3", s "hh*5"] #speed "1 3 5"

    s "cp*2" #end 0.2

他にも様々なノーテーションが用意されています。

    stack [s "bd*4", s "arpy*3", s "hh*5"] #note "[0, 4, 7]"

    s "arpy*3?"

    s "~ cp"

    s "~ [~ cp]"

ページ右上の"?"ボタンを押すと、他にも色々サンプルが出てきます。いろんな関数やエフェクターを覚えてみましょう。また、TidalCyclesのリファレンスページをチェックすると、細やかな紹介が見られます。http://tidalcycles.org/docs/reference/cycles ※MiniTidalにないものもあるので、少し注意。

***

## Mexicode
TidalCyclesがインストールされたパソコン1台を数人で交代交代にコーディングしながら演奏するスタイルをワークショップでよくやっていました。メキシコ流らしいので「Mexicode」と言うらしいです。

### 注意点: TidalcyclesとMiniTidalで違うこと
パターンを記述する前に、d1からd16までのどの"コネクション"であるかを文頭に書きます。

    d1 $ s "bd"

基本的にレイヤー1からレイヤー9までが用意されている、みたいなイメージだとわかりやすいかもしれません。また、

    p "myptn" $ s "bd"

というように、名前をつけたパターンがたくさん作れる、というイメージでもOKです。<br>
今回のMexicodeに使うTidal用のエディタでのコードの実行は、`command + enter`でできるようにしています。<br>

また、例えば`d1`で鳴っている音を消したいときは

    d1 silence

`d1` だけを鳴らしたいときは

    solo d1

と、文頭に`solo`を書き加えてから実行。ソロ状態を外すのは

    unsolo d1

としてから実行すればOK。すべての音を消したいときは

    hush

です！
