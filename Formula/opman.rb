class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.42"
  url "https://github.com/adityaU/opman/releases/download/v0.7.42/opman-aarch64-apple-darwin.tar.gz"
  sha256 "96eb3f467abce5cc239b5c726b1b4b705b04c243a84ddf7ace15579ceac0c074"
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
