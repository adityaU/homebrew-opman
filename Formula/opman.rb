class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.1.6"
  url "https://github.com/adityaU/opman/releases/download/v0.1.6/opencode-manager-aarch64-apple-darwin.tar.gz"
  sha256 "6ba6fc2c287d8a030a6f9dd93181714c2d34fca2ab18f9cc8be75acb1b12944c"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "opencode-manager" => "opman"
  end

  test do
    system "#{bin}/opman", "--version"
  end
end
