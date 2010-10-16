require 'formula'

class C10t <Formula
  head 'http://github.com/udoprog/c10t.git'
  homepage 'http://github.com/udoprog/c10t'

  depends_on 'cmake'
  depends_on 'boost'

  def install
    # system "./configure", "--disable-debug", "--disable-dependency-tracking",
    #                       "--prefix=#{prefix}"
    system "cmake . #{std_cmake_parameters}"
    system "make"
    bin.install 'c10t'
  end
end
