class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.3.9"
  url "https://github.com/adityaU/opman/releases/download/v0.3.9/opman-aarch64-apple-darwin.tar.gz"
  sha256 "407f34f33b3849062b78006951b768d93c9d68a418615ef705f292f709f73d4a"
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
