cd /vendor/cerbero/recipes
 cp -r /usr/src/faac-aarch64-linux-1.30-so/lib/faac/* /vendor/cerbero/build/sources/android_arm64/faac-1.30
 cp -r /usr/src/faac-aarch64-linux-1.30-so/faac.recipe /vendor/cerbero/recipes

 cp -r /usr/src/faac-aarch64-linux-1.30-so/gst-plugins-bad-1.0.recipe /vendor/cerbero/recipes

 cp -r /usr/src/faac-aarch64-linux-1.30-so/lib/faac/meson.build /vendor/cerbero/build/sources/android_arm64/gstreamer-1.0/subprojects/gst-plugins-bad/ext/faac

cat /cerbero/cerbero-build/sources/android_arm64/gstreamer-1.0/subprojects/gst-plugins-bad/ext/faac/meson.build

  cp -r /usr/src/faac-aarch64-linux-1.30-so/* /vendor/cerbero/build/dist/android_arm64


  cd /vendor/cerbero && ./cerbero-uninstalled -c config/cross-android-arm64.cbc bootstrap

  ./cerbero-uninstalled -c config/cross-android-arm64.cbc package gstreamer-1.0


 ./cerbero-uninstalled -c config/cross-android-arm64.cbc buildone gst-plugins-bad-1.0

  sudo systemctl start docker
  docker system prune
  rm -rf /tmp/*

  Check disk usage:
    df -h - Show disk usage in human readable format for all mounted filesystems.

    Check free space on a specific disk partition:
    df -h /path/to/partition

    Find which folders are taking up space:
    du -sh /* - Summarize disk usage for folders from root.
    du -hc $HOME - Show usage for folders in home directory.


sudo find / -name *fallbackswitch* 

sudo systemctl start docker

cp -r gcfhvdbcwp4s70wqgs4fdfb744lgl43i-libunwind-1.6.2/* /cerbero/cerbero-build/dist/android_arm64

cat cerbero/recipes/libunwind.recipe

cd cerbero && ./cerbero-uninstalled -v rust,unwind  -t -c /usr/src/localconf.cbc -c config/cross-android-arm64.cbc build libunwind

/cerbero/recipes/gst-plugins-rs.recipe

        'fallbackswitch',
        'togglerecord',
        'tracers',
        'webrtc',
        'rav1e',
        'threadshare',
        'fmp4',
          'ndi',
        'webrtchttp',  

cargoc_packages = [
        'fallbackswitch',
        'togglerecord',
        'tracers',
        'webrtc',
        'rav1e',
        'threadshare',
          'fmp4',
        #  'gif',
        #  'hlssink3',
        # 'hsv',
        #  'json',
        #  'lewton',
        #  'mp4',
          'ndi',
        # 'onvif',
        # 'rav1e',
        # 'regex',
        # 'reqwest',
        # 'raptorq',
        # 'png',
        # 'rtp',
        # 'textahead',
        # 'textwrap',
        # 'threadshare',
        # 'togglerecord',
        # 'tracers',
        # 'uriplaylistbin',
        # 'videofx',
        # 'webrtc',
        'webrtchttp',    
    ]
    
         plugin_files = {
            'core': ['fallbackswitch']
        }         