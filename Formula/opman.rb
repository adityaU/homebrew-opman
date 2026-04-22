class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.9.8"
  url "https://github.com/adityaU/opman/releases/download/v0.9.8/opman-aarch64-apple-darwin.tar.gz"
  sha256 "269fe0ca2b9ab006b756d4ff24ab80da59b20b320f55e66f8b9001d3aa3e7364"
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
