class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.5.2"
  url "https://github.com/adityaU/opman/releases/download/v0.5.2/opman-aarch64-apple-darwin.tar.gz"
  sha256 "40925999b9c850d886a94dd55748448ccdbfa289737122846b1179eb6e1cb4bd"
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
