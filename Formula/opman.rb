class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.6.0"
  url "https://github.com/adityaU/opman/releases/download/v0.6.0/opman-aarch64-apple-darwin.tar.gz"
  sha256 "8b85c17c3e2f8f84dcd4f4821a784cf76cc34ec26a3e82bbf975712b51924c77"
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
