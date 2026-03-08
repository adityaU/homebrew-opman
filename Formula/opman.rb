class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.5.5"
  url "https://github.com/adityaU/opman/releases/download/v0.5.5/opman-aarch64-apple-darwin.tar.gz"
  sha256 "562aeab333d297564fcf47da13722c96f0ecd0deb0b9dfc9561b6c34bd0dab7e"
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
