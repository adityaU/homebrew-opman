class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.9.9"
  url "https://github.com/adityaU/opman/releases/download/v0.9.9/opman-aarch64-apple-darwin.tar.gz"
  sha256 "716a89a973a8efa1a08df05c2cab1b6c087212859fd6e7cf3bd74ebb81e58fd2"
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
