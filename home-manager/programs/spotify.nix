{ config, pkgs, lib, spicetify-nix, ... }:
let
spicePkgs = spicetify-nix.packages.${pkgs.system}.default;
in
{
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "spotify"
  ];

  imports = [ spicetify-nix.homeManagerModule ];

  programs.spicetify ={
    enable = true;

    colorScheme = "custom";
    customColorScheme = with config.lib.stylix.colors; {
      text = "${base05}";
      subtext = "${base05}";
      main = "${base00}";
      main-elevated = "${base02}"; 
      highlight = "${base02}"; 
      highlight-elevated = "${base03}"; 
      sidebar = "${base01}";
      player = "${base01}";
      card = "${base02}";
      shadow = "${base01}";
      selected-row = "${base06}"; 
      button = "${base0D}";
      button-active = "${base06}"; 
      button-disabled = "${base04}"; 
      tab-active = "${base02}"; 
      notification = "${base02}";
      notification-error = "${base08}";
      equalizer = "${base01}";
      misc = "${base03}";
    };

    enabledExtensions = with spicePkgs.extensions; [
      fullAppDisplay
      keyboardShortcut
      loopyLoop
      popupLyrics
      shuffle
      lastfm
    ];
  };
}
