class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.1.5"
  url "https://github.com/adityaU/opman/releases/download/v0.1.5/opencode-manager-aarch64-apple-darwin.tar.gz"
  sha256 "bc61126e0f48b83d6c0cd2eae89015403b321f597816ac65a1087e52e4ca3869"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "opencode-manager" => "opman"
  end

  test do
    system "#{bin}/opman", "--version"
  end
end
