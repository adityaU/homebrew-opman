class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.5.6"
  url "https://github.com/adityaU/opman/releases/download/v0.5.6/opman-aarch64-apple-darwin.tar.gz"
  sha256 "018663c7e69218381f7ed67ca9260a4486032876bd15995a11b58e938c54e321"
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
