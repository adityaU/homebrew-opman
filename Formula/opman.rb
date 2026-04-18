class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.9.1"
  url "https://github.com/adityaU/opman/releases/download/v0.9.1/opman-aarch64-apple-darwin.tar.gz"
  sha256 "2beb133f5abec3121d5954ef5b70c660780884c3428c9e9186f004b4ce124c6c"
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
