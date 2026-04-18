class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.9.0"
  url "https://github.com/adityaU/opman/releases/download/v0.9.0/opman-aarch64-apple-darwin.tar.gz"
  sha256 "e4f708a15a9fbabc41e4f2a753303fe4740d9099cf654c91ba661ccc85ac438e"
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
