class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.13"
  url "https://github.com/adityaU/opman/releases/download/v0.7.13/opman-aarch64-apple-darwin.tar.gz"
  sha256 "25ca3b63a4a4a3802ef2913cb166e0686c026345c17f7177678329ce1192da8b"
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
