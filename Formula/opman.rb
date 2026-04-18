class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.9.2"
  url "https://github.com/adityaU/opman/releases/download/v0.9.2/opman-aarch64-apple-darwin.tar.gz"
  sha256 "84a2eedf3c364159997129386c8e1afa26da137c9598b113277c1df919ce760a"
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
