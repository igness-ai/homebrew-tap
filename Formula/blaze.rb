class Blaze < Formula
  desc "Salesforce AI DevOps Agent CLI"
  homepage "https://github.com/igness-ai/blaze-cli"
  version "0.6.0"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    url "https://github.com/igness-ai/blaze-cli/releases/download/v0.6.0/blaze-v0.6.0-aarch64-apple-darwin.tar.gz"
    sha256 "70482be9107ce241aa66fcbc4f506b7d7d450b067772ab140f90ab2dbd58d0f4"
  end

  def install
    bin.install "blaze"
  end

  test do
    system "#{bin}/blaze", "--version"
  end
end
