class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.6.4"
  url "https://github.com/adityaU/opman/releases/download/v0.6.4/opman-aarch64-apple-darwin.tar.gz"
  sha256 "4da5a43814b1f99dfdc78a535afd5b3fed64b7cd90df1c4ec9968e6fb251c8ad"
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
