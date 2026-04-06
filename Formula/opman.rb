class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.35"
  url "https://github.com/adityaU/opman/releases/download/v0.7.35/opman-aarch64-apple-darwin.tar.gz"
  sha256 "b9a0972e7c601ad55f5b4c04e5ec785fbcb7ec2140ef31c53599cb2baf87e421"
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
