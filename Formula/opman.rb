class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.3.8"
  url "https://github.com/adityaU/opman/releases/download/v0.3.8/opman-aarch64-apple-darwin.tar.gz"
  sha256 "365cbdfd1bf8d434a61ce0e165809b3268a90feb75696e9b880d91ad7d8a23a8"
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
