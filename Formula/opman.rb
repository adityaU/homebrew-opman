class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.6.15"
  url "https://github.com/adityaU/opman/releases/download/v0.6.15/opman-aarch64-apple-darwin.tar.gz"
  sha256 "cccbc824a277e0372c149082e96055343e1bcd140379b5dd501e3d86e60fa599"
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
