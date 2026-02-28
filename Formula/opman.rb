class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.3.6"
  url "https://github.com/adityaU/opman/releases/download/v0.3.6/opman-aarch64-apple-darwin.tar.gz"
  sha256 "cd8e80b4a819920fb8b6ca95cfb7bd0eb85d7dc2331773ed8ca658c9ce7794f8"
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
