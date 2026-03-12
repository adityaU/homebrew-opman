class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.6.8"
  url "https://github.com/adityaU/opman/releases/download/v0.6.8/opman-aarch64-apple-darwin.tar.gz"
  sha256 "c16f7ebbe72b90107cd42327ea65cf4cc1fe8fd841df28bcfb2560456420014d"
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
