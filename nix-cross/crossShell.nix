with import <nixpkgs> {
  crossSystem = {
    config = "aarch64-linux";
  };
};

mkShell {
  buildInputs = [ libunwind ]; # your dependencies here
}

#export PKG_CONFIG_PATH=/libfaac-android/jni/include:$PKG_CONFIG_PATH