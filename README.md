# HelloYeew's MacBook Setup

All my IDE and customization on my MacBook are all here.

## Program List

- [Übersicht](/Übersicht%20Widgets) : This program is stay at my bottom of a screen. My own configuration is [here](/Übersicht%20Widgets). You can download this program [from this link](https://tracesof.net/uebersicht/) and copy this folder to program's Widgets folder. My configuration are like this.

![Übersicht Display](readme-images/ubersicht.png)

- [Yabai](/yabai) : This is a tilling window management program. You can install it [from this repo](https://github.com/koekeishiya/yabai) and put my configuration in ```$HOME/.config/yabai/yabairc```. I custom its setting for best compatibility with my Übersicht setting. A showcase of this confuration is [a picture above](readme-images/ubersicht.png).

## IDE List

- [Visual Studio Code](/VSCode) : 

  - ```settings.json``` : You can run ```sudo $HOME/Library/ApplicationSupport/Code/User/settings.json``` to open this file from your terminal.
  - ```extensions.txt``` : Use this command in terminal ```cat extensions.txt | xargs -n 1 code --install-extension``` to install all of my extension to your Visual Code.

- [JetBrains IDE](/jetbrains) :
  
  - [PyCharm Professional](jetbrains/pycharm_settings.zip) : You can import this file by [this method](readme-images/pycharm-import-setting.png). And if you want to import your PyCharm setting as a file you can use [this method](https://www.jetbrains.com/help/pycharm/sharing-your-ide-settings.html#import-export-settings). My PyCharm setting is like in picture below. Ps. This function is only support in professional version. Community version is not support.

  ![PyCharm](readme-images/pycharm.png)
