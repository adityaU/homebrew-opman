class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.43"
  url "https://github.com/adityaU/opman/releases/download/v0.7.43/opman-aarch64-apple-darwin.tar.gz"
  sha256 "85d8470cfa5285ca1c1a80cff7a4c81a6415224a2cedb76218839e8a657fe893"
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
