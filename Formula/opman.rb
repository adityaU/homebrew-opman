class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.28"
  url "https://github.com/adityaU/opman/releases/download/v0.7.28/opman-aarch64-apple-darwin.tar.gz"
  sha256 "c9f865e071526cba3b5643b02034a3b979ad1ebbc6096f318e6be9b2c1435576"
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
