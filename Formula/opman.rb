class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.14"
  url "https://github.com/adityaU/opman/releases/download/v0.7.14/opman-aarch64-apple-darwin.tar.gz"
  sha256 "835d4bfbd5315985aa273e9dba70679debdae4f0bc39cc051307bd5d75c64d91"
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
