{
  description = "A collection of wallpapers inspired by the Nord color palette";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = {
    self,
    nixpkgs,
  }: let
    supportedSystems = ["x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin"];

    forAllSystems = function:
      nixpkgs.lib.genAttrs supportedSystems (
        system: function (import nixpkgs {inherit system;})
      );
  in {
    formatter = forAllSystems (pkgs: pkgs.alejandra);

    packages = forAllSystems (pkgs: {
      default = self.packages.${pkgs.system}.wallpapers;

      wallpapers = pkgs.stdenv.mkDerivation {
        pname = "nord-wallpapers";
        version = self.shortRev or "dev";
        src = ./.;
        installPhase = ''
          cp -r $src/wallpapers $out
        '';
      };
    });
  };
}
