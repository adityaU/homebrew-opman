class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.6.9"
  url "https://github.com/adityaU/opman/releases/download/v0.6.9/opman-aarch64-apple-darwin.tar.gz"
  sha256 "f63c0c56fb94b24a8b567c8b6475da7b3b51a32f5fc71a3d682008b42186e6c3"
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
