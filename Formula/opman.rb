class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.3.10"
  url "https://github.com/adityaU/opman/releases/download/v0.3.10/opman-aarch64-apple-darwin.tar.gz"
  sha256 "18c642ff79d46d2329074c2a00dc8028d4d4eb3601a51fa69b5a4c6fe6704420"
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
