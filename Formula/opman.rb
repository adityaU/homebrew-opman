class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.36"
  url "https://github.com/adityaU/opman/releases/download/v0.7.36/opman-aarch64-apple-darwin.tar.gz"
  sha256 "31e49df232aed76fe74ef3a860ff0a05c33eb33d385261bf4376e1be203529bf"
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
