# DAY2｜インストールとチュートリアル

## インストールパーティー
TidalCyclesはインストールが少し大変。インストーラーをダウンロードして実行するだけでないので、難しいと感じるかもしれません。（どういう構造であるからソフトウェアが動くのかということがきちんとわかるようになるというメリットもあるのですが…）ライブコーディングのワークショップでは、インストールに戸惑いを覚える人や、あまりコンピュータの扱いに慣れていない人の支援をするために、インストールしながらジュースとかお菓子を食べつつおしゃべりなどをしており、これを「インストールパーティー」と呼んでいたのを覚えています。

***

### TidalCyclesの仕組み
[適度な図](https://github.com/conychang/mau-tidal-workshop/blob/main/day_1/tidal_system_picture.png)

***

### ゆっくりインストールしてみましょう

0. **[Macの人だけ]** Xcode Command Line Toolsのインストール方法
https://docs.google.com/document/d/1MxpUh1fgzPSUEtk-jQ6UUoqb_52ygsyV8Xuo7xHMi8w/edit?usp=sharing

***

1. テキストエディタ"Atom"をインストールします。
https://atom.io/<br>

  上記URLがつながらないときは以下
  - **[Mac]** https://github.com/atom/atom/releases/download/v1.60.0/atom-mac.zip
  - **[Windows]** https://github.com/atom/atom/releases/download/v1.60.0/atom-windows.zip

***

2. Atomの中のTidalCycles用プラグインをインストールします。
  1. "Atom"メニュー → "Preferences" → "Install" へと進みます。

  2. "Install Packages"ページが表示されます。検索欄に「TidalCycles」と打ち込んで、検索。"Install"ボタンを押したら、完了です。

  - https://atom.io/packages/tidalcycles このページの"Install"ボタンをクリックし、Atomに飛ぶという方法でも可能です。

***

3. TidalCyclesをインストールします。公式ドキュメントの"Automatic installation"を参考に進めてもよいです。もし中級者以上の人がいれば、"Manual installation"の項目を確認してみてもいいかもしれません。

***

- **[Mac]** https://tidalcycles.org/docs/getting-started/macos_install

1. "Terminal"アプリを起動します。

2. 以下のスクリプトをコピー＆ペーストして、`enter`を押します。

  ```
  curl https://raw.githubusercontent.com/tidalcycles/tidal-bootstrap/master/tidal-bootstrap.command -sSf | sh
  ```
3. パスワードを要求されます。入力した文字は画面に反映されませんが、最後までパスワードを入力して、`enter`を押します。たくさん情報がスクロールで流れてきます。最後まで実行させてください。

***

  - **[Windows]** https://tidalcycles.org/docs/getting-started/windows_install

1. **Windows 10** - windowsキーを押しながら`x`を押して、ポップアップしたメニューから「Windows PowerShell（管理者）」を選択します。

  **Windows 7** - スタートボタンをクリックし、`powershell`と入力し、マウスの右ボタンでクリックし、[管理者として実行]を選択します。

2. 以下のスクリプトをコピー＆ペーストして、`enter`を押します。
```
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```
3. 以下のスクリプトをコピー＆ペーストして、`enter`を押します。
```
choco install tidalcycles
```

***

- ちなみに、Automatic installationでインストールされるものは以下です。
    - SuperCollider (と SuperDirt)
    - Haskell(TidalCyclesはHaskellという言語で書かれています。)

    - Tidal Pattern engine (TidalCyclesそのもの)

***

4. Audacity https://www.audacityteam.org/<br>
    自分のサンプル作りのためにあるといいかも。普段からDAWなどを使っている人は、なれているものを使ってOK。

***

### 起動の方法

1. SuperColliderアプリを起動して、`SuperDirt.start;`と入力し、`command + enter`または`ctrl + enter`で実行します。右下のPost Windowに`SuperDirt: listening to Tidal on port 57120`とメッセージが出たらOK。

2. テキストエディタAtomを開いて、`command + N`または`ctrl + N`で新しいドキュメントを開き、`command + S`または`ctrl + S`で好きなところに好きな名前で保存してください。しかしファイルに名前をつけるときは、`好きな名前.tidal`のように、拡張子を`tidal`にしましょう。

3. メニューバーの"Packages" → "Boot TidalCycles"を選択。エディタ内に立ち上がったウィンドウに`Listening for external controls on 127.0.0.1:6010
t> Connected to SuperDirt.
`と表示されたら準備OKです。何かパターンを鳴らしてみましょう！

***

### トラブルシューティング

Windowsを使っている人で、TidalCyclesを起動しようとするとAtomでエラーが出る人は、以下を行ってみてください。

1. "PowerShell"を起動する

  **Windows 10** - windowsキーを押しながら`x`を押して、ポップアップしたメニューから「Windows PowerShell」を選択します。

  **Windows 7** - スタートボタンをクリックし、`powershell`と入力・検索し、選択します。

2. `rm .atom`と入力しEnterで実行します。.atom以下のすべてのファイルが削除されるメッセージが出た場合は、Enterボタンをもう一度押下してください。

3. Atomを再度インストールしてください。https://github.com/atom/atom/releases/download/v1.60.0/atom-windows.zip

4. 再度TidalCycles用のプラグインをインストールしてください。

      1. "Atom"メニュー → "Preferences" → "Install" へと進みます。

      2. "Install Packages"ページが表示されます。検索欄に「TidalCycles」と打ち込んで、検索。"Install"ボタンを押したら、完了です。

      - https://atom.io/packages/tidalcycles このページの"Install"ボタンをクリックし、Atomに飛ぶという方法でも可能です。

***

### おさらい

[day2.tidal](https://drive.google.com/file/d/1DSJBLXqyh2KY3R7PP4gmY0NcYWr9aq30/view?usp=sharing)をダウンロードして実行してみましょう。

***

### 自分だけのサンプルパックを作る

1. SuperColliderアプリのメニュー`File`から`Open user support directory`を選択します。

2. MacではFinder、Windowsではエクスプローラーが自動的に開き、"SuperCollider"というディレクトリの中身が参照されます。

3. `downloaded-quarks`→`Dirt-Samples`が、TidalCyclesで使えるサンプル集です。

4. ここに新しくフォルダを作成し、好きな名前をつけて、その中に自分の使いたいサンプルを入れます。

5. サンプルを追加したら、SuperDirtを再度スタートします。SuperColliderアプリのメニュー`Language`→`Recompile Class Library`を選択してリコンパイルを行ったあとに、`SuperDirt.start;`と入力し、`command + enter`または`ctrl + enter`で実行します。

6. Tidalで新しく追加した自分のサンプルを使ってみましょう！

***

### Audacityでサンプルを切り出す

自分の慣れているDAWを使いたい人はそれでいいです！

1. Audacityアプリを起動して、好きなファイルをドラッグ＆ドロップします。または`File`→`Import`→`Audio`から好きなファイルを選択。Spaceキーで再生・ストップができます。

2. "Selection Tool（文字入力カーソルのイラストのボタン）"が選択された状態で、波形上をクリックすると、その部分をズームイン・ズームアウトの中心点にしたり、切り出しポイントにしたりできます。切りたいポイントで右クリック→`Split Clip`を選択すれば、そこを中心にファイルが分かれます。波形上をドラッグして選択した範囲にフェードイン・アウトの処理をすることもできます。メニューバーの`Effect`→`Fading`→`Fade In`または`Fade Out`を活用してみてください。

3. 書き出したいサイズまで切れたら、波形の上のタブになっている部分（ホバーするとカーソルが手のひらマークになります）をクリックして選択します。

4. メニューバーの`File`→`Export`→`Export Selected Audio`を選択すると、選択した範囲が書き出しできます。
