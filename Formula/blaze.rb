class Blaze < Formula
  desc "Salesforce AI DevOps Agent CLI"
  homepage "https://github.com/igness-ai/blaze-cli"
  version "0.10.0"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    url "https://github.com/igness-ai/blaze-cli/releases/download/v0.10.0/blaze-v0.10.0-aarch64-apple-darwin.tar.gz"
    sha256 "9896512df961aa78a00dedcd7ac386c6534716ce9ad9aba7f99910f7d77b0d4b"
  end

  def install
    bin.install "blaze"
  end

  test do
    system "#{bin}/blaze", "--version"
  end
end
