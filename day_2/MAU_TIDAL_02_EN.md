# DAY2｜Installation and Tutorial

## What's "installation party"?
TidalCycles is a bit difficult to install. You may find it challenging because it is not just a matter of downloading and running the installer. (Although it has the advantage that you will be able to understand how the software works because of its structure...) In the live coding workshop, we have a chat while eating juice or snacks during the installation to help those who feel confused about the installation or are not very familiar with computers.

***

### How does TidalCycles work?
[Figure](https://github.com/conychang/mau-tidal-workshop/blob/main/day_1/tidal_system_picture.png)

***

### Let's install it slowly.

0. **[Only for Mac users]** Installation of Xcode Command Line Tools
https://docs.google.com/document/d/1MxpUh1fgzPSUEtk-jQ6UUoqb_52ygsyV8Xuo7xHMi8w/edit?usp=sharing

***

1. Install the text editor "Atom".
https://atom.io/<br>

  If the above URL does not connect, download from the following.
  - **[Mac]** https://github.com/atom/atom/releases/download/v1.61.0-beta0/atom-mac.zip
  - **[Windows]** https://github.com/atom/atom/releases/download/v1.61.0-beta0/atom-windows.zip



2. Install the plugin for TidalCycles in Atom.
    1. "Preferences" on the menu bar → "Install".
    2. "The "Install Packages" page will appear. Type "TidalCycles" in the search field to find it. Press the "Install" button.
    - You can also go to https://atom.io/packages/tidalcycles and click on the "Install" button on this page, which will take you to Atom.


3. Install TidalCycles. Refer to the "Automatic installation" section of the official documentation. If you are an advanced user, you may want to check the "Manual installation" section.

***

**[Mac]** https://tidalcycles.org/docs/getting-started/macos_install

1. Open the "Terminal" App.

2. Copy and paste the following script and press `enter`.
```
curl https://raw.githubusercontent.com/tidalcycles/tidal-bootstrap/master/tidal-bootstrap.command -sSf | sh
```
3. It will probably ask for your password. As you type, characters won't be echoed to the screen. A lot of confusing info will scroll past. Just let it run until the end. Tidal should thereafter be installed on your computer.

***

**[Windows]** https://tidalcycles.org/docs/getting-started/windows_install

1. **Windows 10** - Hold down the windows key and press 'x', then choose Windows PowerShell (admin) in the menu that pops up.
  **Windows 7** - Click the start button, type `powershell`, then click with the right mouse button and choose Run as Administrator.

2. Copy and paste the following script and press `enter`.
  ```
  Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
  ```
3. Copy and paste the following script and press `enter`.
  ```
  choco install tidalcycles
  ```

- The following software is installed by Automatic installation.
    - SuperCollider (and SuperDirt)
    - Haskell Language (Ghcup)
    - The Tidal Pattern engine (Tidal Cycles itself)

***

4. Audacity https://www.audacityteam.org/<br>
    You may want to have it for making your own samples. If you are a regular DAW user, you can use what you are used to.

***

### Troubleshooting

If you are using Windows and are getting an Atom error when trying to start TidalCycles, try the following instruction.

1. Launch "PowerShell".

  **Windows 10** - Press `x` while holding down the windows key and select "Windows PowerShell" from the menu that pops up.

  **Windows 7** - Click the start button, type/search for `powershell` and select it. 2.

2. Type `rm .atom` and press Enter to run it. If you get a message that all files under .atom will be deleted, press Enter again.

3. Reinstall Atom. https://github.com/atom/atom/releases/download/v1.60.0/atom-windows.zip

4. Reinstall the plugin for TidalCycles on Atom.
    1. "Preferences" on the menu bar → "Install".
    2. "The "Install Packages" page will appear. Type "TidalCycles" in the search field to find it. Press the "Install" button.
    - You can also go to https://atom.io/packages/tidalcycles and click on the "Install" button on this page, which will take you to Atom.


***

### How to start up

1. Start the SuperCollider app, type `SuperDirt.start;` and run it with `command + enter` or `ctrl + enter`. When the message `SuperDirt: listening to Tidal on port 57120` appears in the Post Window in the lower right corner, it's good status!

2. Open the text editor Atom, open a new document with `command + N` or `ctrl + N`, and save it anywhere you like with `command + S` or `ctrl + S` with any name you like. But when you name the file, make sure the extension is `tidal`, like `name as you like.tidal`.

3. Select "Packages" → "Boot TidalCycles" from the menu bar. A window will appear in the editor with the message `Listening for external controls on 127.0.0.1:6010
t> Connected to SuperDirt.
When you see `. Let's play some patterns!

***

### Recap

Download [day2.tidal](https://drive.google.com/file/d/1DSJBLXqyh2KY3R7PP4gmY0NcYWr9aq30/view?usp=sharing) and play some patterns.
You can also see really good tutorials videos here: https://tidalcycles.org/docs/patternlib/tutorials/course1.

***

### Build your own sample pack

1. Select `Open user support directory` from the SuperCollider app menu `File`.

2. The Finder on a Mac or Explorer on Windows will automatically open and browse to the contents of the directory "SuperCollider".

3. `downloaded-quarks`→`Dirt-Samples` is your sample pack you can use in TidalCycles.

4. Create a new folder here, name it anything you like, and put the samples you want to use in it.

5. After adding the sample, start SuperDirt again, recompile it by selecting the SuperCollider app menu `Language` -> `Recompile Class Library`, then type `SuperDirt.start;` and press ` command + enter` or `ctrl + enter` to run it.

6. Play your own newly added samples on Tidal!

***

### Cutting out samples in Audacity

If you prefer to use the DAW you're used to, that's fine!

1. Launch the Audacity application and drag and drop your favorite file. Or select your favorite file from `File` -> `Import` -> `Audio`. You can use the Space key to play/stop.

2. "Selection Tool (button on the illustration of the text entry cursor)" is selected, click on the waveform to make that area the center point for zooming in/out or the cut-out point. Right-click on the point you want to clip and select `Split Clip` to split the file around that point. You can also drag over the waveform to fade in or out the selected area. Try utilizing the menu bar `Effect` -> `Fading` -> `Fade In` or `Fade Out`.

3. Once you have cut to the size you want to export, click on the tabbed area above the waveform (the cursor will become a palm symbol when hovering over it) to select it.

4. Select `File` -> `Export` -> `Export Selected Audio` from the menu bar to export the selected range.
