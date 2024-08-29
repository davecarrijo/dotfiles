# My NvChad configuration
![Alt Text](https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExZG1uajZqb21rMTV5dXUyaTB1d3ZuN2hzNjE1MTE5ZTZodTN3eTY3ZSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/JNFMqgqtcrwwk27Z3f/source.gif)


## Prerequisite

Yields:
- Neovim 0.9.5ˆ.
- Nerd Font as your terminal font.
- Make sure the nerd font you set doesn't end with Mono to prevent small icons.
  - Example : JetbrainsMono Nerd Font and not JetbrainsMono Nerd Font Mono
- Ripgrep is required for grep searching with Telescope (OPTIONAL).
- GCC, Windows users must have mingw installed and set on path.
- Make, Windows users must have GnuWin32 installed and set on path.
- Delete old neovim folders (check commands below)
- Win32yank, for clipboard
- git
- Codeium for code completion -- optional
- sed, for replacing

___
## Installation

### Do a backup first
````bash
mv ./.config/nvim ./.config/.nvim.bak
````

### Linux & Mac

```bash
git clone https://github.com/davecarrijo/my-NvChad ~/.config/nvim && nvim
```
#### backup & download
```bash
mv ./.config/nvim ./.config/.nvim.bak && git clone https://github.com/davecarrijo/my-NvChad ~/.config/nvim && nvim
```

### Windows
##### CMD
```cmd
git clone https://github.com/davecarrijo/my-NvChad %USERPROFILE%\AppData\Local\nvim && nvim
```
##### Powershell
```powershell
git clone https://github.com/davecarrijo/my-NvChad $ENV:USERPROFILE\AppData\Local\nvim && nvim
```
____
## Uninstallation

###### Linux / Macos (unix)
```shell
rm -rf ~/.config/nvim && rm -rf ~/.local/share/nvim
```
###### Windows CMD
```cmd
rd -r ~\AppData\Local\nvim && rd -r ~\AppData\Local\nvim-data
```
###### Window PowerShell
```powershell
rm -Force ~\AppData\Local\nvim && rm -Force ~\AppData\Local\nvim-data
```
cya matte

## Plugins
I will update this later