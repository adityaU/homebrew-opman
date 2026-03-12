class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.6.12"
  url "https://github.com/adityaU/opman/releases/download/v0.6.12/opman-aarch64-apple-darwin.tar.gz"
  sha256 "b70cf6e21a52ed308d123f0f3bcc003511750a3bb4beded9393d52f6d891c953"
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
