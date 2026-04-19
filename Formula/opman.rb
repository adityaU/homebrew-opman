class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.9.4"
  url "https://github.com/adityaU/opman/releases/download/v0.9.4/opman-aarch64-apple-darwin.tar.gz"
  sha256 "ae02181e2f247ad48e9512b0dfe83442414be7384631d360fba0cef3b733d3fd"
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
