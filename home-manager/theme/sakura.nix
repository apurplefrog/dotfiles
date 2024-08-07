{pkgs, ...}: {
  gtk = {
    enable = true;
    iconTheme = {
      package = pkgs.papirus-icon-theme;
      name = "Papirus-Dark";
    };
  };

  stylix = let
    font= {
      name = "0xProto";
      package = pkgs.nerdfonts.override {fonts = ["0xProto"];};
    };
  in {
    polarity = "light";
    enable = true;
    image = ./background-images/pedro-sanz-fd4KegLUgOA-unsplash.jpg;
    fonts = {
      serif = font;
      sansSerif = font;
      emoji = font;
    };

    cursor.size = 24;

    base16Scheme = {
      base00 = "feedf3";
      base01 = "f8e2e7";
      base02 = "e0ccd1";
      base03 = "755f64";
      base04 = "665055";
      base05 = "564448";
      base06 = "42383a";
      base07 = "33292b";
      base08 = "df2d52";
      base09 = "f6661e";
      base0A = "c29461";
      base0B = "2e916d";
      base0C = "1d8991";
      base0D = "006e93";
      base0E = "5e2180";
      base0F = "ba0d35";
    };
  };
}
