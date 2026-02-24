class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.3.3"
  url "https://github.com/adityaU/opman/releases/download/v0.3.3/opman-aarch64-apple-darwin.tar.gz"
  sha256 "d1a77e68f2f5ecfd88b938ead886f85229e059a8ceb5bee7611f163964026405"
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
