# Define the installation directory for the shared object
# Replace `<architecture>` with the actual target architecture directory name
#install_dir_lib = join_paths(meson.current_build_dir(), 'path', 'to', 'android', 'project', 'libs', '<architecture>')

plugins_install_dir = join_paths(get_option('prefix'), get_option('libdir'), 'gstreamer-1.0')

faac_dep = cc.find_library('faac', required : get_option('faac'))
have_faac_h = cc.has_header_symbol('faac.h', 'faacEncOpen')
if not have_faac_h and get_option('faac').enabled()
  error('faac plugin enabled: found libfaac, but not faac.h')
endif

if faac_dep.found() and have_faac_h
  gstfaac = library('gstfaac',
    'gstfaac.c',
    c_args : gst_plugins_bad_args,
    include_directories : [configinc],
    dependencies : [gstaudio_dep, gstpbutils_dep, gsttag_dep, faac_dep],
    install : true,
    install_dir : plugins_install_dir,
  )
  plugins += [gstfaac]
endif
