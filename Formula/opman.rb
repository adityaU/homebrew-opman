class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.3.5"
  url "https://github.com/adityaU/opman/releases/download/v0.3.5/opman-aarch64-apple-darwin.tar.gz"
  sha256 "98e5c767d21e444b1e3611b486c94cf6159ecca0fb23797a0bf9a3f4f5b321fb"
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
