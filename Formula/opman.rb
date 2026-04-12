class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.46"
  url "https://github.com/adityaU/opman/releases/download/v0.7.46/opman-aarch64-apple-darwin.tar.gz"
  sha256 "4761fa2a566ef715366db206e931b3229e84d406821582b1ec2fd8a57cc3c849"
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
