class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.21"
  url "https://github.com/adityaU/opman/releases/download/v0.7.21/opman-aarch64-apple-darwin.tar.gz"
  sha256 "a2d3dbc84872a8f0bb2686c50c1ce85c2674e1c98ae3b2e5b85fc8188196c54f"
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
