class Blaze < Formula
  desc "Salesforce AI DevOps Agent CLI"
  homepage "https://github.com/igness-ai/blaze-cli"
  version "0.9.0"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    url "https://github.com/igness-ai/blaze-cli/releases/download/v0.9.0/blaze-v0.9.0-aarch64-apple-darwin.tar.gz"
    sha256 "316c50ea25eebbcbc5b37bcefeac54bafd40bdaade967d46f506f5ea6d63667b"
  end

  def install
    bin.install "blaze"
  end

  test do
    system "#{bin}/blaze", "--version"
  end
end
