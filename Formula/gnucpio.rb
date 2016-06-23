class Gnucpio < Formula
  desc "A GNU archiving program"
  homepage "https://www.gnu.org/software/cpio/"
  url "http://ftpmirror.gnu.org/cpio/cpio-2.12.tar.bz2"
  mirror "https://ftp.gnu.org/gnu/cpio/cpio-2.12.tar.bz2"
  sha256 "70998c5816ace8407c8b101c9ba1ffd3ebbecba1f5031046893307580ec1296e"

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "make", "check"
  end
end

