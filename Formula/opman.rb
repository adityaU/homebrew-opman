class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.3.2"
  url "https://github.com/adityaU/opman/releases/download/v0.3.2/opman-aarch64-apple-darwin.tar.gz"
  sha256 "afacba1d22afbbd2cf379a7a33c215ae0efcdf5610c4ddd96f46ebf3da4536c4"
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
