class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.6.1"
  url "https://github.com/adityaU/opman/releases/download/v0.6.1/opman-aarch64-apple-darwin.tar.gz"
  sha256 "96823aea39d748bd1b13b50b6929f3879672e2e6db8411a4dfbcf49eb242868d"
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
