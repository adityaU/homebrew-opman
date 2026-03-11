class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.6.1"
  url "https://github.com/adityaU/opman/releases/download/v0.6.1/opman-aarch64-apple-darwin.tar.gz"
  sha256 "da421f5a5184cdf074e86fe86036213aae101f494748df4684e92c17bfb0051d"
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
