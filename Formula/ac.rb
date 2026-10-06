class Ac < Formula
  desc "Measures regenerable files on your Mac. Read-only"
  homepage "https://amplecapacity.com"
  url "https://amplecapacity.com/downloads/ac/ac-0.1.0-macos.tar.gz"
  version "0.1.0"
  sha256 "ef20bbf664c24372d81c99ee83f07b35731f02250e30232db19cd60561d2dfa8"

  depends_on :macos

  def install
    bin.install "bin/ac"
    (share/"ac").install Dir["share/ac/*"]
  end

  test do
    assert_match "AmpleCapacity", shell_output("#{bin}/ac --help")
  end
end
