class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.6.10"
  url "https://github.com/adityaU/opman/releases/download/v0.6.10/opman-aarch64-apple-darwin.tar.gz"
  sha256 "cc72f98e6357ba2b2add051e6bc6b8303df6c1b13c14e97ded16796824b0692d"
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
