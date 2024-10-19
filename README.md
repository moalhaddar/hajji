# 👴 Hajji
![Hajji Demo](./images/demo.gif)

Hajji is a shell script that allows you to search emojies and copy them to your clipboard with an interface that you are used to (your terminal). You can then paste the selected emoji anywhere you want.

# Installation
- `git clone https://github.com/moalhaddar/hajji`


# How to run
## 1. Manually
You can execute the script `./open-window.sh` in this repo to show the emojies.

## 2. Create a keyboard shortcut (GNOME)
Alterantively, you can set a shortcut in `gnome-control-center`.

1. Open gnome settings and navigate to keyboard or run `gnome-control-center keyboard` to go there the CLI. [(Screenshot)](./images/image.png)
2. Click on `View and customize shortcuts`.
3. Scroll down to find `Custom Shortcuts` [(Screenshot)](./images/image-1.png)
4. Click on the plus icon 
    - Give the shortcut a name [(Screenshot)](./images/image-3.png)
    - For the command give it the absoloute path to the [open-window.sh](./open-window.sh) script from this repository. 
    - Pick any shortcut you want.

# Dependencies
Since this is a shell script, it depends on multiple binaries:
- [fzf](https://github.com/junegunn/fzf)
- xclip
- GNOME Desktop environment.


# FAQ
### Where is the data from?
The data is extracted from [unicode.org emoji list v16](https://unicode.org/emoji/charts/emoji-list.html). This is the only data set that not only came with descriptions but also keywords that helps with fuzzy searching. A copy from that page is stored at this repo in [./data](./data) folder.

### Why is my Hajji window maximzed?
This is because `open-window.sh` script containing `--maximize` option. You can remove it if you want.

# Author
Mohammed Alhaddar

# License
MIT License