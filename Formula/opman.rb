class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.25"
  url "https://github.com/adityaU/opman/releases/download/v0.7.25/opman-aarch64-apple-darwin.tar.gz"
  sha256 "d9946af68c325812e997eb6b63810c0039c69eff62876363d53c93ea18e846d3"
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
