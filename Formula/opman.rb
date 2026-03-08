class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.5.7"
  url "https://github.com/adityaU/opman/releases/download/v0.5.7/opman-aarch64-apple-darwin.tar.gz"
  sha256 "b79e750d3bc976afaf072b8cd6a1cbd862c3b1051909a86604872cf05085a388"
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
