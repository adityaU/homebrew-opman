class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.8.1"
  url "https://github.com/adityaU/opman/releases/download/v0.8.1/opman-aarch64-apple-darwin.tar.gz"
  sha256 "a248c5ecda5379c9bf3933aa569c5e2bc1225d0e03818586670a581f3aa2d908"
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
