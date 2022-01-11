with import <nixpkgs> {};
stdenv.mkDerivation  {
  name = "CV-env";

    buildInputs = with pkgs; [
      ruby.devEnv
      bundler
      nodejs
    ];
    shellHook = "
    bundle config set --local path vendor/cache;
    bundle install
    ";
}
