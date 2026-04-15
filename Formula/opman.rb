class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.8.2"
  url "https://github.com/adityaU/opman/releases/download/v0.8.2/opman-aarch64-apple-darwin.tar.gz"
  sha256 "4a517e1be25cea43d10af48403f48c59cedb0c6c00f1d05521647bc19fa59855"
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
