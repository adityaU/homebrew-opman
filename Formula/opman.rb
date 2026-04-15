class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.8.3"
  url "https://github.com/adityaU/opman/releases/download/v0.8.3/opman-aarch64-apple-darwin.tar.gz"
  sha256 "a2d9e81492e57c9c2f259d17816e716e7e9101cb85de4ad796ced96d1f13174e"
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
