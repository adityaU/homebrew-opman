class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.5.4"
  url "https://github.com/adityaU/opman/releases/download/v0.5.4/opman-aarch64-apple-darwin.tar.gz"
  sha256 "f1da49d49602dec1b2f5eb0f2ac06a60042476a84188a65e77818b3e9b06f812"
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
