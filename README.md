# HelloYeew's MacBook Setup

All my IDE and customization on my MacBook are all here.

## Program List

- [Übersicht](/Übersicht%20Widgets) : This program is stay at my bottom of a screen. My own configuration is [here](/Übersicht%20Widgets). You can download this program [from this link](https://tracesof.net/uebersicht/) and copy this folder to program's Widgets folder. My configuration are like this.

  **Desktop Screen :**

  ![Übersicht Desktop](readme-images/ubersicht-desktop2.png)

  **With Windows opened and manage windows size by Yabai :**

  ![Übersicht Windows](readme-images/ubersicht-windows2.png)

- [Yabai](/yabai) : This is a tilling window management program. You can install it [from this repo](https://github.com/koekeishiya/yabai) and put my configuration in ```$HOME/.config/yabai/yabairc```. I custom its setting for best compatibility with my Übersicht setting. A showcase of this confuration is [a picture above](readme-images/ubersicht.png).

- RunCat : RunCat is a cat that run on my menu bar. A cat will run depend on how much you use memory or CPU. You can download it from App Store by [this link](https://apps.apple.com/th/app/runcat/id1429033973?mt=12).

- Hidden Bar : I use this app because I have many icon on menu bar and I want my manu bar to be more 'clean'. You can download this app from [App Store](https://apps.apple.com/app/hidden-bar/id1452453066) or [GitHub Repositories](https://github.com/dwarvesf/hidden)

- iStat Menus : This app can tell about stats on your menu bar. You can change a custmization a lot. You can download it [here](https://apps.apple.com/th/app/istat-menus/id1319778037?mt=12). I don't have a configuration file (because it doesn't have) but you can see my configuration and customize it from a picture below. Ps. This app is not free. It's cost about 10 dollar but you can get a 14 days trail from [here](https://bjango.com/mac/istatmenus/).

  ![iStat Menus configuration](readme-images/istat.png)

- [CleanShot X](https://cleanshot.com/) : This program make screen capture and screen record easier.

- [Google Chrome and Microsoft Edge](/chrome%20theme) : I use a theme that I make it myself.

  [New theme](/chrome%20theme/Evening%20Lonely%20Girl.crx) : Evening lonely girl (Idea from [ReI beatmap in osu!](https://osu.ppy.sh/beatmapsets/785858#osu/1657611))

  *Update Soon*

  [Old Theme](/chrome%20theme/[Sakura%20Memories]%20Kasumi%20Toyama.crx) : [Sakura Memories] Kasumi Toyama

  **New Tab Page:**

  ![Kasumi Theme New Tab](readme-images/chrome-kasumi-newtab.png)

  **During Normal Using:**

  ![Kasumi Theme GitHub](readme-images/chrome-kasumi-github.png)
- Google Chrome Starter Page : I use [Custom New Tab URL Extension](https://chrome.google.com/webstore/detail/custom-new-tab-url/mmjbdbjnoablegbkcklggeknkfcjkjia) and put [mamizu](https://github.com/HelloYeew/mamizu) link that I self-hosted to it.

## IDE List

- [Visual Studio Code](/VSCode) : 

  - ```settings.json``` : You can run ```sudo $HOME/Library/ApplicationSupport/Code/User/settings.json``` to open and edit this file from your terminal.
  - ```extensions.txt``` : Use this command in terminal ```cat extensions.txt | xargs -n 1 code --install-extension``` to install all of my extension to your Visual Code.

- [JetBrains IDE](/jetbrains) :
  
  - [PyCharm Professional](jetbrains/pycharm_settings.zip) : You can import this config file by [this method](readme-images/pycharm-import-setting.png). And if you want to export your PyCharm setting as a file you can use [this method](https://www.jetbrains.com/help/pycharm/sharing-your-ide-settings.html#import-export-settings). My PyCharm setting is like in picture below. Ps. This import and export setting function is only support in professional version. Community version is not support.

    ![PyCharm](readme-images/pycharm.png)
  
  - [WebStorm](jetbrains/webstorm_settings.zip) : You can import this config file by [the same method as PyCharm](readme-images/pycharm-import-setting.png). And if you want to export your WebStorm setting as a file you can use [this method](https://www.jetbrains.com/help/webstorm/sharing-your-ide-settings.html#import-export-settings). (In IDE it already have plugin call *IDE Setting Sync* to always backup your setting to JetBrains account so use this export setting as file option if you want to share setting with your friend) My WebStorm setting is like in picture below. Ps. If an import button not appear you can read the full instruction [here](https://www.jetbrains.com/help/webstorm/sharing-your-ide-settings.html#import-export-settings)

    ![WebStorms](readme-images/webstorm.png)

  - Rider : My customization is inspired by [peppy](https://github.com/peppy)'s Rider (Entirely I think LOL). You can import this config file by [the same method as PyCharm](readme-images/pycharm-import-setting.png). And if you want to export your Rider setting as a file you can use [this method](https://www.jetbrains.com/help/rider/Sharing_Your_IDE_Settings.html#import-export-settings). (In IDE it already have plugin call *IDE Setting Sync* to always backup your setting to JetBrains account so use this export setting as file option if you want to share setting with your friend) You can download [peppy's custom colour theme here](https://puu.sh/HdOkV/6f164fe614.jar).
  - CLion : *Update Soon*

## Game Setting

I put in this repositories because when I move MacBook or forget I can get my game setting from this repo (You can copy it if you want, this is my recommend setting)

- [osu!](osu)
