
let
  pkgs = import <nixpkgs> { overlays = [ (self: super: {
    jdk = super.adoptopenjdk-bin;
  }) ]; };
in
with pkgs;
mkShell {
  buildInputs = [ clojure gnumake nodejs ];
}
