class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.9.6"
  url "https://github.com/adityaU/opman/releases/download/v0.9.6/opman-aarch64-apple-darwin.tar.gz"
  sha256 "619ebc7a02b643cf1406da23d64d4e0079c5db38ff9c57b2f90a90856d0873b8"
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
