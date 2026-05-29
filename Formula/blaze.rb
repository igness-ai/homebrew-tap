class Blaze < Formula
  desc "Salesforce AI DevOps Agent CLI"
  homepage "https://github.com/igness-ai/blaze-cli"
  version "0.5.1"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    url "https://github.com/igness-ai/blaze-cli/releases/download/v0.5.1/blaze-v0.5.1-aarch64-apple-darwin.tar.gz"
    sha256 "471d32dd4227c04dedf974218b63682ceb8a622868acbd85d4eed82ba4a1e0f6"
  end

  def install
    bin.install "blaze"
  end

  test do
    system "#{bin}/blaze", "--version"
  end
end
