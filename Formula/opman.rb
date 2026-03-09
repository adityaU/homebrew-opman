class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.5.8"
  url "https://github.com/adityaU/opman/releases/download/v0.5.8/opman-aarch64-apple-darwin.tar.gz"
  sha256 "2080b30cccc735883b6ded778525526305c389c6bdb9a4250ae541d9de5c4056"
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
