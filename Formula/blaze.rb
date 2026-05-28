class Blaze < Formula
  desc "Salesforce AI DevOps Agent CLI"
  homepage "https://github.com/igness-ai/blaze-cli"
  version "0.5.0"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    url "https://github.com/igness-ai/blaze-cli/releases/download/v0.5.0/blaze-v0.5.0-aarch64-apple-darwin.tar.gz"
    sha256 "dd4c11cb20aa03ce4a9a8c2c62e260711ead4359ca6baee79bacf43c82836706"
  end

  def install
    bin.install "blaze"
  end

  test do
    system "#{bin}/blaze", "--version"
  end
end
