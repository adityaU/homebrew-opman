class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.2.0"
  url "https://github.com/adityaU/opman/releases/download/v0.2.0/opman-aarch64-apple-darwin.tar.gz"
  sha256 "ac407faffa4a9586ed0c678c0894546a164536668059e741618a35eea40ea70b"
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
