class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.9.10"
  url "https://github.com/adityaU/opman/releases/download/v0.9.10/opman-aarch64-apple-darwin.tar.gz"
  sha256 "0f978542840f8670e396ecd5b6644f0b87da881e5317355fc23247f2940caf06"
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
