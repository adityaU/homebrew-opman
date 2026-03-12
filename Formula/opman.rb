class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.6.11"
  url "https://github.com/adityaU/opman/releases/download/v0.6.11/opman-aarch64-apple-darwin.tar.gz"
  sha256 "3dbff6dead1ca4e7464f49ff20156e5b5eed54b83041ca629956881f7bf95d29"
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
