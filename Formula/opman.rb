class Opman < Formula
  desc "Terminal multiplexer wrapper for the opencode CLI -- multi-project management"
  homepage "https://github.com/adityaU/opman"
  version "0.3.0"
  url "https://github.com/adityaU/opman/releases/download/v0.3.0/opman-aarch64-apple-darwin.tar.gz"
  sha256 "dfbaf7a00fa5378f420c8b10bb38fddd35eb375c07f697a24a38826188f989b0"
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
