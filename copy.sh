cd /vendor/cerbero/recipes

 cp -r /usr/src/faac-aarch64-linux-1.30-so/faac.recipe .

 cp -r /usr/src/faac-aarch64-linux-1.30-so/gst-plugins-bad-1.0.recipe .

 cd /vendor/cerbero/build/dist/android_arm64

  cp -r /usr/src/faac-aarch64-linux-1.30-so/* .


  cd /vendor/cerbero && ./cerbero-uninstalled -c config/cross-android-arm64.cbc bootstrap

  ./cerbero-uninstalled -c config/cross-android-arm64.cbc package gstreamer-1.0



  docker system prune
  rm -rf /tmp/*