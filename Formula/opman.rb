class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.5.0"
  url "https://github.com/adityaU/opman/releases/download/v0.5.0/opman-aarch64-apple-darwin.tar.gz"
  sha256 "f87a6b7f94324a299ea2050556f84714030ec7a86af67f1f09ad922e8be446c7"
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
