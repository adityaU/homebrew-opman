class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.6.2"
  url "https://github.com/adityaU/opman/releases/download/v0.6.2/opman-aarch64-apple-darwin.tar.gz"
  sha256 "93fc467f438b42c51a80897988aff8ab15369870944d8ba0288899df54a2488b"
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
