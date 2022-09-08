{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/a585b1c70900a1ecf0a782eb0f6f09d405e5e6e3.tar.gz") {} }:
(pkgs.buildFHSUserEnv {
  name = "pipzone";
  targetPkgs = pkgs: (with pkgs; [
    python39
    python39Packages.pip
    python39Packages.virtualenv
    jupyter
    # Dependencies for mutwo.music (somehow doesn't work yet)
    mbrola
    arcan.espeak 
    espeak-classic
    # for nbconvert with markdown
    pandoc
  ]);
  runScript = "bash";
}).env
