require 'formula'

class IndiAagcloudwatcher < Formula
  homepage 'http://www.indilib.org'
  url 'http://svn.code.sf.net/p/indi/code/trunk/3rdparty/indi-aagcloudwatcher', :using => :svn, :revision => '1456'
  head 'http://svn.code.sf.net/p/indi/code/trunk/3rdparty/indi-aagcloudwatcher', :using => :svn
  version "0.9.7.1456"

  depends_on 'cmake' => :build
  depends_on 'polakovic/astronomy/libindi'

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end