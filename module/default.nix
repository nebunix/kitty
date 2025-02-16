{ systemInformation, ... }:
{
  home-manager.users."${systemInformation.userName}" =
    { ... }:
    {
      programs.kitty = {
        enable = true;

        settings = {
          tab_bar_style = "powerline";
          tab_powerline_style = "round";
          window_padding_width = 4;
        };

        keybindings = {
          "ctrl+shift+minus" = "change_font_size all +2.0";
          "ctrl+minus" = "change_font_size all -2.0";
          "ctrl+0" = "change_font_size all 0";
        };
      };
    };
}
