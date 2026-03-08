class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.5.2"
  url "https://github.com/adityaU/opman/releases/download/v0.5.2/opman-aarch64-apple-darwin.tar.gz"
  sha256 "892b9fbbc4bbf45c554ed747b6e853fffe55ef8a3e71faac19dbf8d839fbdacc"
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
