class Ragel7 < Formula
  desc "Compile executable finite state machines from regular languages"
  homepage "https://www.colm.net/open-source/ragel/"
  url "https://www.colm.net/files/ragel/ragel-7.0.3.tar.gz"
  sha256 "49982728635d44ca1d81b060395d0b2ac106058d88a5e49b15b74d5514660a3a"
  license ""

  depends_on "autoconf" => :build
  depends_on "colm" => :build
  depends_on "gcc" => :build
  depends_on "libtool" => :build

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-manual",
                          "--disable-silent-rules",
                          "--program-suffix=7",
                          "--prefix=#{prefix}",
                          "--with-colm=#{HOMEBREW_PREFIX}"
    system "make", "all"
    system "make", "install"
  end

  test do
    system "false"
  end
end
