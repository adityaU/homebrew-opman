class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.38"
  url "https://github.com/adityaU/opman/releases/download/v0.7.38/opman-aarch64-apple-darwin.tar.gz"
  sha256 "64a8708b0098f89e40eabab2ba625218a3b0968a32f2f51c2643420ef60a1f7d"
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
