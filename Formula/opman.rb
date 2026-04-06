class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.33"
  url "https://github.com/adityaU/opman/releases/download/v0.7.33/opman-aarch64-apple-darwin.tar.gz"
  sha256 "b6852c8776db65507068fff4d4b1ebb967980968bb27b7d109b72fe73adcae37"
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
