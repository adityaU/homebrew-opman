class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.29"
  url "https://github.com/adityaU/opman/releases/download/v0.7.29/opman-aarch64-apple-darwin.tar.gz"
  sha256 "65ccaed9334c6d261271de6597d36367d3d73c424cb5d9cbbb44b4c421d96eeb"
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
