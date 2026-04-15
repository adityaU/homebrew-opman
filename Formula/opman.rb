class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.8.6"
  url "https://github.com/adityaU/opman/releases/download/v0.8.6/opman-aarch64-apple-darwin.tar.gz"
  sha256 "60532491954f0035724bfc8a65a29c74687f3ecb6cdae6853d308b4567b05964"
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
