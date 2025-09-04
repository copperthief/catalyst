{

  description = "opengl dev shell";

  inputs = { nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable"; };

  outputs = { self, nixpkgs }:
    let pkgs = nixpkgs.legacyPackages.x86_64-linux.pkgs;
    in {
      devShells.x86_64-linux.default = pkgs.mkShell rec {
        name = "opengl dev";
        buildInputs = with pkgs; [ 
          clang

          xorg.libX11
          xorg.libXrandr
          xorg.libXinerama
          xorg.libXcursor
          xorg.libXi

          glew
          glfw

          glm

          libxkbcommon
          wayland

          shaderc # includes glslc command to compile shaders

        ];

        nativeBuildInputs = with pkgs; [
          cmake
        ];

        LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath buildInputs;
      };
    };
}
