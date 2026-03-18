class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.8"
  url "https://github.com/adityaU/opman/releases/download/v0.7.8/opman-aarch64-apple-darwin.tar.gz"
  sha256 "a645c15c88706b0013b8bc6f1991dab1b86406e0ec50317e4170f03118e562c1"
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
