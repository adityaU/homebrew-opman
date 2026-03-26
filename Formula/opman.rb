class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.20"
  url "https://github.com/adityaU/opman/releases/download/v0.7.20/opman-aarch64-apple-darwin.tar.gz"
  sha256 "af67b98f46b70aa479d70f6c2ba619c48431a7bfd4208ecf1f485221682e9fca"
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
