class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.6.13"
  url "https://github.com/adityaU/opman/releases/download/v0.6.13/opman-aarch64-apple-darwin.tar.gz"
  sha256 "dd8195c70357afc8c510f38833702448c8c1b05b402c6aabcacd4bf6289b6530"
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
