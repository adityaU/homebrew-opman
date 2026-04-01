class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.26"
  url "https://github.com/adityaU/opman/releases/download/v0.7.26/opman-aarch64-apple-darwin.tar.gz"
  sha256 "29a6f50875abf70fe042e960b06fc925ca241fdd309a9cd1c0849832742d8a7a"
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
