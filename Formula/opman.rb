class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.9.11"
  url "https://github.com/adityaU/opman/releases/download/v0.9.11/opman-aarch64-apple-darwin.tar.gz"
  sha256 "c82d40de98e55ecdabbb8b707be3ef52ca7551549db2ab3db830146a7e46e035"
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
