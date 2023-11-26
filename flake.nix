{
  description = "Tommys minimal Nixos configuration flake.";
  inputs.nixpkgs.url = github:NixOS/nixpkgs/nixpkgs-unstable;
#  inputs.hyprland.url = "github:hyprwm/Hyprland";

  outputs = {nixpkgs, ...} @ inputs: {
    nixosConfigurations.T14 = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      system = "x86_64-linux";
      modules = [
        (import ./configuration.nix)
      ];
    };
  };
}
