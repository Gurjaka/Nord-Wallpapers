
---

<div align="center">

<img alt="Nix-Snowflake" src="./nord.svg" width="180px"/>

# <samp>Nord Wallpapers</samp>

![GitHub Repo stars](https://img.shields.io/github/stars/Gurjaka/Nord-Wallpapers?style=for-the-badge&labelColor=2e3440&color=5e81ac) ![GitHub last commit](https://img.shields.io/github/last-commit/Gurjaka/Nord-Wallpapers?style=for-the-badge&labelColor=2e3440&color=5e81ac) ![GitHub repo size](https://img.shields.io/github/repo-size/Gurjaka/Nord-Wallpapers?style=for-the-badge&labelColor=2e3440&color=5e81ac)

### A serene collection of wallpapers inspired by the stunning Nord color palette, crafted to elevate your desktop experience with a minimalist and visually harmonious aesthetic. 🎨🌌

</div>

## Why You'll Love It ✨

- **Stunning Quality**: High-resolution wallpapers, designed to look crisp on any screen. 📸
- **Nord Aesthetic**: A clean and minimalist vibe, perfectly matching the iconic Nord color palette. 🌈
- **Universal Compatibility**: Works beautifully with a variety of desktop environments. 🖥️
- **Effortless Setup**: Easily integrates into your configuration with minimal effort. ⚙️

## Installation 🛠️

Bringing Nord Wallpapers to your setup is quick and easy. Follow these simple steps:

1. **Clone the repository**:
```bash
git clone https://github.com/Gurjaka/Nord-Wallpapers.git
```

### OR

2. **Use [nix flakes](https://wiki.nixos.org/wiki/Flakes)**:

2.1 Add the following to your `flake.nix` file:
   
```nix
inputs = {
  nord-wallpapers.url = "github:Gurjaka/Nord-Wallpapers";
  ...
}
```

2.2 Then, symlink the wallpapers to your preferred directory using Home Manager:

```nix
{
  inputs, 
  pkgs, 
  ...
}: {
  home.file = {
    "path/to/dir" = {
      source = inputs.wallpapers.packages."${pkgs.system}".default;
      recursive = true;
    };
  };
}
```

Now, navigate to the wallpapers folder and choose the one that fits your mood! 📂

## Setting It Up 🔧

These wallpapers can seamlessly fit into any desktop environment. Just navigate to your downloaded wallpapers and select your favorite.

For Linux users with `feh`, set your wallpaper with:

```bash
feh --bg-scale /path/to/wallpaper.jpg
```

## Contribution 🤝

Got an idea or a wallpaper to share? Fork this repository, add your contributions, and open a pull request. I'll be happy to review it! 💻

## License 📜

This project is licensed under the [MIT License](LICENSE). 🖤

---
