require 'formula'

class Libindi < Formula
  homepage 'http://www.indilib.org'
  head 'https://github.com/indilib/indi.git', :using => :git
  url 'https://github.com/indilib/indi/archive/master.zip'

  version "1.4.1-dev"

  depends_on 'cmake' => :build
  depends_on 'libnova'
  depends_on 'libcfitsio'
  depends_on 'libusb'
  depends_on 'gsl'

  def install
    system "cmake", "libindi", *std_cmake_args
    system "make", "install"
  end

end
