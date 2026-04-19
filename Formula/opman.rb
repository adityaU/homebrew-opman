class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.9.3"
  url "https://github.com/adityaU/opman/releases/download/v0.9.3/opman-aarch64-apple-darwin.tar.gz"
  sha256 "ed3a53c434e46895faf9310b25f29105c914dd626239a937f219f2ef05cb73bf"
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
