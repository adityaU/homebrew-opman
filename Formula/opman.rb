class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.6.3"
  url "https://github.com/adityaU/opman/releases/download/v0.6.3/opman-aarch64-apple-darwin.tar.gz"
  sha256 "a432a06375d47a9397a4391d0ef395918dcce5f3d6bf09c7873ee439a3bc558b"
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
