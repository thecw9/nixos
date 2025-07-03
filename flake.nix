{
  description = "My NixOS configuration";

  nixConfig = {
    # override the default substituters
    substituters = [
      # cache mirror located in China
      "https://mirror.sjtu.edu.cn/nix-channels/store"
      # "https://mirrors.ustc.edu.cn/nix-channels/store"
      "https://cache.nixos.org"
      "https://nix-community.cachix.org"
    ];
    trusted-public-keys = [
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    ];
  };

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-25.05";
    # nur
    nur = {
      url = "github:nix-community/nur";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      # url = "github:nix-community/home-manager/release-25.05";
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      # if using a stable channel you can use `url = "github:nix-community/nixvim/nixos-<version>"`
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-stable,
      home-manager,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages."x86_64-linux";
    in
    {
      devShells.x86_64-linux.default = pkgs.mkShell {
        packages = [
          pkgs.uv
          (pkgs.python3.withPackages (
            pypkgs: with pypkgs; [
              numpy
              pandas
            ]
          ))
        ];

        # env.LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
        #   pkgs.stdenv.cc.cc.lib
        #   pkgs.libz
        # ];
      };
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        # 核心参数是这个，将非默认的 nixpkgs 数据源传到其他 modules 中
        specialArgs = {
          pkgs-stable = import nixpkgs-stable {
            inherit system;
            config.allowUnfree = true;
          };
        };
        modules = [
          ./system
          (import ./overlays)
          inputs.nur.modules.nixos.default
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.backupFileExtension = "backup";
            home-manager.sharedModules = [
              inputs.nixvim.homeModules.nixvim
              # inputs.stylix.homeModules.stylix
            ];
            home-manager.users.thecw = import ./home;
          }
        ];
      };
    };
}
