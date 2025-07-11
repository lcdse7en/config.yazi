# Yazi

## Install yazi packages

```shell
ya pack -i

ya pkg list
ya pkg upgrade
ya pkg install

# add package in package.toml and download package to plugins `main.`
ya pkg add yazi-rs/flavors:catppuccin-macchiato
ya pkg add yazi-rs/plugins:smart-enter
ya pkg add yazi-rs/plugins:mount
ya pkg add GianniBYoung/rsync
ya pkg add yazi-rs/plugins:full-border
ya pkg add imsi32/yatline
ya pkg add imsi32/yatline-githead
ya pkg add yazi-rs/plugins:git
ya pkg add kalidyasin/yazi-flavors:tokyonight-night
ya pkg add KKV9/compress
ya pkg add DreamMaoMao/searchjump
ya pkg add DreamMaoMao/easyjump
ya pkg add KKV9/compress
ya pkg add KKV9/command
ya pkg add Sonico98/exifaudio
ya pkg add kirasok/torrent-preview
ya pkg add yazi-rs/plugins:hide-preview
# cargo intall skim
# sudo pacman -S fd bat
ya pkg add cap153/skim
ya pkg add cap153/skim-rg
```

## yazi theme

- ayu-dark

```bash
ya pkg add kmlupreti/ayu-dark
```

```toml
[flavor]
dark = "ayu-dark"
```

- flexoki

```bash
ya pkg add gosxrgxx/flexoki-dark
ya pkg add gosxrgxx/flexoki-light
```
