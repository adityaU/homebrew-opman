class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.3.4"
  url "https://github.com/adityaU/opman/releases/download/v0.3.4/opman-aarch64-apple-darwin.tar.gz"
  sha256 "87ac0ee1eaee4448d319ebad5a1b5c09a9e8e503e2ad3e004774c08dce4838b2"
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
