class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.9"
  url "https://github.com/adityaU/opman/releases/download/v0.7.9/opman-aarch64-apple-darwin.tar.gz"
  sha256 "b7fa8d0427a399498fcc0f4f7c206c1d9a3d35d7c3785dad573795f075bbed0d"
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
