class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.41"
  url "https://github.com/adityaU/opman/releases/download/v0.7.41/opman-aarch64-apple-darwin.tar.gz"
  sha256 "79cfc3e23dbfe4bc64fa13289b987fb12c3f57d570157b977c123a660c8ee523"
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
