
### Fix




in /cerbero/recipes/gst-plugins-rs.recipe

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

### Error

```
0:25:39.541291 [(75/77 @ 98%) POST_INSTALL: gst-plugins-rs]
Recipe 'gst-plugins-rs' failed at the build step 'post_install'
Traceback (most recent call last):
File "/cerbero/cerbero/build/oven.py", line 485, in _cook_recipe_step
ret = stepfunc()
File "/cerbero/cerbero/build/recipe.py", line 94, in wrapped
stepfunc()
File "/cerbero/recipes/gst-plugins-rs.recipe", line 139, in post_install
os.copy(src, dst)
AttributeError: module 'os' has no attribute 'copy'
```


in /cerbero/recipes/gst-plugins-rs.recipe

all strings with os.copy change to shutil.copy in file linux cmd


```
sed -i 's/os\.copy/shutil.copy/g' /cerbero/recipes/gst-plugins-rs.recipe
```