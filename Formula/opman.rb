class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.3.7"
  url "https://github.com/adityaU/opman/releases/download/v0.3.7/opman-aarch64-apple-darwin.tar.gz"
  sha256 "b6257c3b8c9f1938e65305ff25eae6a8a8bc4fa30bc9c4e79d55f25fbd133a38"
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
