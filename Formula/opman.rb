class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.6.2"
  url "https://github.com/adityaU/opman/releases/download/v0.6.2/opman-aarch64-apple-darwin.tar.gz"
  sha256 "1b2b86d13678ee35938b487f19c1418adda72e347c78f2d0e7524ea3c1a73f50"
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
