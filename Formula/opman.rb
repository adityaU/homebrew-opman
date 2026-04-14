class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "1.8.1"
  url "https://github.com/adityaU/opman/releases/download/v1.8.1/opman-aarch64-apple-darwin.tar.gz"
  sha256 "8b95d9fce316e9694d4745f1b63a97faef52a976d3ea6de16ff38f6b454dfbec"
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
