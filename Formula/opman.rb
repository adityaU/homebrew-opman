class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.6.5"
  url "https://github.com/adityaU/opman/releases/download/v0.6.5/opman-aarch64-apple-darwin.tar.gz"
  sha256 "94d872434d23d1b9dbb71d285170e9f0ee77674a80c57c6b358e908094404b2d"
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
