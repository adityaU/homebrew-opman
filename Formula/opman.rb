class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.22"
  url "https://github.com/adityaU/opman/releases/download/v0.7.22/opman-aarch64-apple-darwin.tar.gz"
  sha256 "555305920b70df186089c0c8951f0a1a6eefd04432c382d38d66bee85110a6f1"
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
