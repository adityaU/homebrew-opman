class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.7"
  url "https://github.com/adityaU/opman/releases/download/v0.7.7/opman-aarch64-apple-darwin.tar.gz"
  sha256 "316791925453deddd122a1f662633fd3e8643827cc884c94d051de5f5b12dc7f"
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
