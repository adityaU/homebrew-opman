class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.4.0"
  url "https://github.com/adityaU/opman/releases/download/v0.4.0/opman-aarch64-apple-darwin.tar.gz"
  sha256 "9368cdff94ecc42676c4d9f01470331c3c924b175e12c3d3b95d4b3bf4903dde"
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
