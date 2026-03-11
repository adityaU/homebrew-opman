class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.6.2"
  url "https://github.com/adityaU/opman/releases/download/v0.6.2/opman-aarch64-apple-darwin.tar.gz"
  sha256 "088e3a10f6abb1df300a0070fe6b7994cec8ce03f7a6b7946cd19c8a3126dbaa"
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
