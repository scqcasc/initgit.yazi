# initgit.yazi
Plugin for [Yazi](https://github.com/sxyazi/yazi) to initialize git repos.
## Dependencies
Git must be installed.

## Installation

### Using `ya pkg`
```
Not implimented yet
```

### Manual
**Linux/macOS**
```
git clone https://github.com/scqcasc/initgit.yazi ~/.config/yazi/plugins/lazygit.yazi
```
**Windows**
```
git clone https://github.com/scqcasc/initgit.yazi %AppData%\yazi\config\plugins\lazygit.yazi
```
## Configuration
add this to your **keymap.toml** file
```toml
[[mgr.prepend_keymap]]
on   = [ "g", "I" ]
run  = "plugin initgit"
desc = "run initgit"
```
you can customize the keybinding however you like. Please refer to the [keymap.toml](https://yazi-rs.github.io/docs/configuration/keymap) documentation
