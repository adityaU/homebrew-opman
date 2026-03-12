class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.6.7"
  url "https://github.com/adityaU/opman/releases/download/v0.6.7/opman-aarch64-apple-darwin.tar.gz"
  sha256 "36708268c2e906d39f3b36dcbe1860b6ab007ddbce3234bfd0ab35e95738d6fc"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "opman"
  end

  test do
    system "#{bin}/opman", "--version"
  end
end
