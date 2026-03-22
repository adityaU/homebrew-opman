class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.11"
  url "https://github.com/adityaU/opman/releases/download/v0.7.11/opman-aarch64-apple-darwin.tar.gz"
  sha256 "d213f977738afc8850db1560701726e1d64a5c598af9bc1969ae68bd7cfcbcbd"
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
