## Links:

https://github.com/GStreamer/cerbero/blob/main/README.md
https://thiblahute.github.io/GStreamer-doc/installing/building-from-source-using-cerbero.html?gi-language=c

Recipe:
https://thiblahute.github.io/GStreamer-doc/deploying/multiplatform-using-cerbero.html?gi-language=c#page-description
https://gstreamer.freedesktop.org/documentation/deploying/multiplatform-using-cerbero.html?gi-language=javascript

Notes:
https://developer.ridgerun.com/wiki/index.php/Android_GStreamer_audio_video_playback_optimization
https://marc.info/?l=gstreamer-devel&m=142160736409686&w=2

Example recipe:
https://github.com/fluendo/cerbero/blob/master/recipes/faac.recipe
https://github.com/ylatuya/cerbero-extras/blob/102ce1a26d65741c55d1b3775021f269a6ed48e6/recipes/faac.recipe
https://gist.github.com/SergioRAgostinho/b73b899d2b32d7928a45

https://github.com/haikuports/haikuports/blob/319fce1e4fb58ba775ba11216d4198ec8118b5bb/media-libs/faac/faac-1.30.recipe#L28


If you encounter build issues, you can clean the recipe and try to rebuild it:
./cerbero-uninstalled clean gstreamer-1.0
./cerbero-uninstalled build gstreamer-1.0



Here's an example of what the gst-plugins-bad-1.0.recipe might look like with the FAAC dependency added:

'
from cerbero.enums import License, SourceType, BuildType
import custom

class Recipe(custom.GStreamer):
    name = 'gst-plugins-bad-1.0'
    # ... other configurations ...

    # Add 'faac' to the list of dependencies
    deps = [
        'gstreamer-1.0', 'gst-plugins-base-1.0', 'bzip2', 'libass',
        'libkate', 'zlib', 'openh264', 'opus', 'librtmp', 'libxml2',
        'libsrtp', 'libdca', 'libdvdnav', 'libnice',
        # ... other dependencies ...
        'faac'  # Add this line to include 'faac' as a dependency
    ]

    # ... other configurations ...

    # Ensure the meson_options enable the FAAC plugin
    meson_options = {
        # ... existing options ...
        'faac': 'enabled',  # This line should already be set to 'enabled'
        # ... other options ...
    }

    # ... rest of the recipe ...
    '