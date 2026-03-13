class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.6.14"
  url "https://github.com/adityaU/opman/releases/download/v0.6.14/opman-aarch64-apple-darwin.tar.gz"
  sha256 "a3fd99b611603bfc1b5ae2d98e7111e937cccb169e9c0418500fd284668fdc41"
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
