class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.12"
  url "https://github.com/adityaU/opman/releases/download/v0.7.12/opman-aarch64-apple-darwin.tar.gz"
  sha256 "b5609be3a575f3c19411f2d03757e82c62961b076c88d712944c16e2accc5c71"
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
