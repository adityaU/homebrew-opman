class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.8.4"
  url "https://github.com/adityaU/opman/releases/download/v0.8.4/opman-aarch64-apple-darwin.tar.gz"
  sha256 "c88e078b52bdad59794b5fb58d4340f1068dd24e052afbc55a344a2c4addfcd1"
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
