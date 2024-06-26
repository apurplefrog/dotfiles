{...}: {
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        #offset-x = 7;
        margin-top = 10;
        margin-left = 7;
        width = 1900;
        height = 32;
        modules-left = [
          "hyprland/workspaces"
        ];
        modules-right = [
          "network"
          "memory"
          "clock"
          "battery"
          "pulseaudio"
        ];  
      };
    };
    style = ''
* {
  border-radius: 10pt;
  min-height: 0;
  font-family: CaskaydiaCove Nerd Font;
  font-size: 13px;
}

window#waybar {
  border-width: 1pt;
  border-style: solid;
  border-color: #cba6f7;
  background-color: #1e1e2e;
  transition-property: background-color;
  transition-duration: 0.0s;
}

#workspaces {
  margin-left: 6pt
}

#workspaces button {
  all: initial;
  /* Remove GTK theme values (waybar #1351) */
  min-width: 0;
  /* Fix weird spacing in materia (waybar #450) */
  box-shadow: inset 0 -3px transparent;
  /* Use box-shadow instead of border so the text isn't offset */
  padding: 6px 18px;
  margin: 6px 3px;
  border-radius: 4px;
  background-color: #11111b;
  color: #cdd6f4;
}

#workspaces button.active {
  background-color: #11111b;
  border-bottom: 2pt solid #cba6f7;
}

#workspaces button:hover {
  box-shadow: inherit;
  text-shadow: inherit;
  color: #1e1e2e;
  background-color: #cdd6f4;
}

#workspaces button.urgent {
  background-color: #f38ba8;
}

#memory,
#battery,
#pulseaudio,
#network,
#clock {
  border-radius: 4px;
  margin: 6px 3px;
  padding: 6px 12px;
  background-color: #1e1e2e;
  color: #181825;
}

#memory {
  background-color: #fab387;
}

#battery {
  background-color: #f38ba8;
}

@keyframes blink {
  to {
    background-color: #f38ba8;
    color: #181825;
  }
}

#battery.warning,
#battery.critical,
#battery.urgent {
  background-color: #ff0048;
  color: #181825;
  animation-name: blink;
  animation-duration: 0.5s;
  animation-timing-function: linear;
  animation-iteration-count: infinite;
  animation-direction: alternate;
}

#battery.charging {
  background-color: #a6e3a1;
}

#backlight {
  background-color: #fab387;
}

#pulseaudio {
  background-color: #f9e2af;
  margin-right: 6pt;
}

#network {
  background-color: #94e2d5;
  padding-right: 17px;
}

#clock {
  font-family: CaskaydiaCove Nerd Font;
  background-color: #cba6f7;
}'';
  };
}
