class Colm < Formula
  desc "A programming language designed for the analysis and transformation of computer languages"
  homepage "https://www.colm.net/open-source/colm/"
  url "https://www.colm.net/files/colm/colm-0.14.6.tar.gz"
  sha256 "96ace603ab4d1d8dec6e794148d3566babd7f3b16dee5221774e92ba447f7e78"
  license ""

  depends_on "asciidoc" => :build
  depends_on "autoconf" => :build
  depends_on "gcc" => :build
  depends_on "libtool" => :build

  def install
    system "autoconf"
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "all"
    system "make", "install"
  end

  test do
    system "#{bin}/colm", "--version"
  end
end
