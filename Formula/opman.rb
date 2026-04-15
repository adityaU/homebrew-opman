class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.8.5"
  url "https://github.com/adityaU/opman/releases/download/v0.8.5/opman-aarch64-apple-darwin.tar.gz"
  sha256 "c078bd7b42b4c947866af94d15744bc1d4fb3ec1e47a844ebd0e059b3586c6d6"
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
