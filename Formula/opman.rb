class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.7.27"
  url "https://github.com/adityaU/opman/releases/download/v0.7.27/opman-aarch64-apple-darwin.tar.gz"
  sha256 "19ba663c43bebe0fd6afcf2fbe12b474bd40e8842153d944de87d1ce22aa219e"
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
