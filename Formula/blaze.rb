class Blaze < Formula
  desc "Salesforce AI DevOps Agent CLI"
  homepage "https://github.com/igness-ai/blaze-cli"
  version "0.3.2"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    url "https://github.com/igness-ai/blaze-cli/releases/download/v0.3.2/blaze-v0.3.2-aarch64-apple-darwin.tar.gz"
    sha256 "e041346256444fab4618548ff48b09f3dcde8806c4983054b76ed1c901153230"
  end

  def install
    bin.install "blaze"
  end

  test do
    system "#{bin}/blaze", "--version"
  end
end
