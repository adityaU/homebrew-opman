class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.37"
  url "https://github.com/adityaU/opman/releases/download/v0.7.37/opman-aarch64-apple-darwin.tar.gz"
  sha256 "c6fb2e3b2c86da818e4e5e4dc9bfc1970c52d4fdcd4d5668c0eb1c9b7c10b706"
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
