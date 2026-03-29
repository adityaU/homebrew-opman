class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.23"
  url "https://github.com/adityaU/opman/releases/download/v0.7.23/opman-aarch64-apple-darwin.tar.gz"
  sha256 "4cbe4a0b17c0ac9218fe8187d769c07609fbd6546f7fd76b5ab141e60a832150"
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
