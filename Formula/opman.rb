class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.8.8"
  url "https://github.com/adityaU/opman/releases/download/v0.8.8/opman-aarch64-apple-darwin.tar.gz"
  sha256 "a53278ecf759509811cb7254e52565ecdd3ef8099d7fb693dd64a7b70a820d6f"
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
