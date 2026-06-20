class Blaze < Formula
  desc "Salesforce AI DevOps Agent CLI"
  homepage "https://github.com/igness-ai/blaze-cli"
  version "0.8.0"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    url "https://github.com/igness-ai/blaze-cli/releases/download/v0.8.0/blaze-v0.8.0-aarch64-apple-darwin.tar.gz"
    sha256 "7c00a53f710b88edae5d90a0b03ade1a09d3b13a4e45bd931e4ac3a11ee8c64d"
  end

  def install
    bin.install "blaze"
  end

  test do
    system "#{bin}/blaze", "--version"
  end
end
