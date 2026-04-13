class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.8.0"
  url "https://github.com/adityaU/opman/releases/download/v0.8.0/opman-aarch64-apple-darwin.tar.gz"
  sha256 "9f6829e1a45f56ddcc9a154ab73604a39dd945e92ec63d738790eb3e415b3ba6"
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
