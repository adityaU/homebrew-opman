class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.3.1"
  url "https://github.com/adityaU/opman/releases/download/v0.3.1/opman-aarch64-apple-darwin.tar.gz"
  sha256 "39efa26063e2a4cf9be4547e3d2821303f0445efb2a3a0e9b9f4cf80f8b49b24"
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
