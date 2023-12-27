# Change working directory to $HOME
cd "$HOME"

# Clone the cerbero repository and configure it
git clone -b "${DEFAULT_BRANCH}" https://github.com/drunkody/cerbero.git
mkdir .cerbero
echo "allow_parallel_build=True" > .cerbero/cerbero.cbc
echo "use_ccache=True" >> .cerbero/cerbero.cbc

# Create local configuration for cerbero
echo "local_sources=\"$HOME/cerbero/cerbero-sources\"" >> $HOME/cerbero/localconf.cbc
echo "home_dir=\"$HOME/cerbero/cerbero-build\"" >> $HOME/cerbero/localconf.cbc
echo "# Set custom remote and branch for all gstreamer recipes" >> $HOME/cerbero/localconf.cbc
echo "recipes_remotes = {'gstreamer-1.0': {'custom-remote': 'https://github.com/drunkody/gstreamer.git'}}" >> $HOME/cerbero/localconf.cbc
echo "recipes_commits = {'gstreamer-1.0': 'custom-remote/main'}" >> $HOME/cerbero/localconf.cbc

# Bootstrap cerbero with the local configuration
cd cerbero
./cerbero-uninstalled -v rust -t -c $HOME/cerbero/localconf.cbc bootstrap -y --build-tools=no --toolchains=no

# Second bootstrap command for Android ARM64
./cerbero-uninstalled -v rust -t -c $HOME/cerbero/localconf.cbc -c config/cross-android-arm64.cbc bootstrap

# TODO: The following lines are comments indicating further actions to take. They are not executable as-is.
# TODO nix-cross/howbuild.md && cp -r gcfhvdbcwp4s70wqgs4fdfb744lgl43i-libunwind-1.6.2/* $HOME/cerbero/cerbero-build/dist/android_arm64
# && cp gstreamer-1.0-android-arm64-1.22.7.tar.xz /usr/src

# The following lines are commented out as they are Docker build steps that do not have a direct shell script equivalent.
# RUN cd cerbero && ./cerbero-uninstalled -v rust -t -c $HOME/cerbero/localconf.cbc -c config/cross-android-arm64.cbc package gstreamer-1.0 && \
#       cd .. && \
#     rm -rf $HOME/cerbero/cerbero-build/{dist,logs,sources} && \
#     rm -f $HOME/cerbero/cerbero-build/{linux,windows,android}*.cache && \
#     dnf clean all