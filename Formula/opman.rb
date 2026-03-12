class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.6.6"
  url "https://github.com/adityaU/opman/releases/download/v0.6.6/opman-aarch64-apple-darwin.tar.gz"
  sha256 "eaf8e200ba46cf95481d78ce36472dd6dbf9b4059427ec9ff4dbdc5a7e435b1d"
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
