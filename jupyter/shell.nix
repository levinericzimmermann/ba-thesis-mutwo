{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/a585b1c70900a1ecf0a782eb0f6f09d405e5e6e3.tar.gz") {} }:
(pkgs.buildFHSUserEnv {
  name = "pipzone";
  targetPkgs = pkgs: (with pkgs; [
    python39
    python39Packages.pip
    python39Packages.virtualenv
    jupyter
  ]);
  runScript = "bash";
}).env
