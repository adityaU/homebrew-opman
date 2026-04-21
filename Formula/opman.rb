class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.9.7"
  url "https://github.com/adityaU/opman/releases/download/v0.9.7/opman-aarch64-apple-darwin.tar.gz"
  sha256 "b07e672ff3f3ddd45c7189d006a334afcc97e353b7d014d85bd27349cbe74bab"
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
