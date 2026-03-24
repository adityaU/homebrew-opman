class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.15"
  url "https://github.com/adityaU/opman/releases/download/v0.7.15/opman-aarch64-apple-darwin.tar.gz"
  sha256 "920cc9057e9a4028904e78d261b90bfde0ddc7a56a62ed6bb0cba9f9c7bf49c1"
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
