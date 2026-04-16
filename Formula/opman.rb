class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.8.7"
  url "https://github.com/adityaU/opman/releases/download/v0.8.7/opman-aarch64-apple-darwin.tar.gz"
  sha256 "f604c06939059220c8573011bfb9f2c1c0f190c2131a573aca795791f22067cf"
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
