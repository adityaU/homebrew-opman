class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.10"
  url "https://github.com/adityaU/opman/releases/download/v0.7.10/opman-aarch64-apple-darwin.tar.gz"
  sha256 "fd0c6b994ef0151b798f067b73daad3750819a819f587143f5854df117d1beae"
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
