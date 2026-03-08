class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.5.3"
  url "https://github.com/adityaU/opman/releases/download/v0.5.3/opman-aarch64-apple-darwin.tar.gz"
  sha256 "179be527fc6f41aeb95f321ec2c998fb431894b5d7beaee0bdcb2ef7fab3f97c"
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
