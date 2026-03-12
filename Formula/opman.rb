class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.6.7"
  url "https://github.com/adityaU/opman/releases/download/v0.6.7/opman-aarch64-apple-darwin.tar.gz"
  sha256 "e6a2308bbafc0fd943ff2b4d59335b86e5e7f8441c21d087b164169d3bcebf68"
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
