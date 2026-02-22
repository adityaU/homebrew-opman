class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.1.2"
  url "https://github.com/adityaU/opman/releases/download/v0.1.2/opencode-manager-aarch64-apple-darwin.tar.gz"
  sha256 "c762ec85d1afd579f0ac8e8b766ab10e8e5d468c59c14607a18ee3fd1808ca2e"
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
