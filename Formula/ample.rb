class Ample < Formula
  desc "Measures regenerable files on your Mac. Read-only"
  homepage "https://amplecapacity.com"
  url "https://amplecapacity.com/downloads/ample/ample-0.1.0-macos.tar.gz"
  version "0.1.0"
  sha256 "2f9177c9be2bc991677e9f58298b65454d316c1f543184d6725cc4761accfa76"

  depends_on :macos

  def install
    bin.install "bin/ample"
    (share/"ample").install Dir["share/ample/*"]
  end

  test do
    assert_match "AmpleCapacity", shell_output("#{bin}/ample --help")
  end
end
