class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.1.1"
  url "https://github.com/adityaU/opman/releases/download/v0.1.1/opencode-manager-aarch64-apple-darwin.tar.gz"
  sha256 "5bd1d859176dd34dce1f02a04f70179202634178ee6e93cff9467c802c942cb2"
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
