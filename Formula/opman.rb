class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.24"
  url "https://github.com/adityaU/opman/releases/download/v0.7.24/opman-aarch64-apple-darwin.tar.gz"
  sha256 "b91a97c406235b8a929432f380d2950fd0c7000861962009aeeca76e11517986"
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
