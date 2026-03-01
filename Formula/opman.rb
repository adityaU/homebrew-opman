class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.3.9"
  url "https://github.com/adityaU/opman/releases/download/v0.3.9/opman-aarch64-apple-darwin.tar.gz"
  sha256 "124068c7b65a5f8213fa4b024c3af79e9cf108e6a39e6b7fd5abc096590bd7c4"
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
