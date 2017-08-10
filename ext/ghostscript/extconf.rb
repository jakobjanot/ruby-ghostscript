require 'mkmf'

find_executable('make')

root = File.expand_path('../../..', __FILE__)

# Create a dummy extension file. Without this RubyGems would abort the
# installation process. On Linux this would result in the file "wat.so"
# being created in the current working directory.
#
# Normally the generated Makefile would take care of this but since we
# don't generate one we'll have to do this manually.
#
File.touch(File.join(File.dirname(__FILE__), "ghostscript.#{RbConfig::CONFIG['DLEXT']}"))

Dir.chdir(File.join(root, 'vendor/ghostscript-9.21')) do
  system "./configure --prefix=#{root} --disable-cups --disable-gtk --with-drivers=FILES"
  system "make && make install && make clean"
end

# This is normally set by calling create_makefile() but we don't need that
# method since we'll provide a dummy Makefile. Without setting this value
# RubyGems will abort the installation.
$makefile_created = true
