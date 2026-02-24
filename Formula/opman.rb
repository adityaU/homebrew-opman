class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.2.0"
  url "https://github.com/adityaU/opman/releases/download/v0.2.0/opman-aarch64-apple-darwin.tar.gz"
  sha256 "261c3b9a0cb52c6945978e4b92c02cc86a6fd9023cc61c7133ad6d3b06a85bae"
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
