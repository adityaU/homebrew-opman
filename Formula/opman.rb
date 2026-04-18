class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.8.9"
  url "https://github.com/adityaU/opman/releases/download/v0.8.9/opman-aarch64-apple-darwin.tar.gz"
  sha256 "f31db616ae02d1b746a90f3df6079c5f1f43d3819412b22428d7b70cc7bb0092"
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
